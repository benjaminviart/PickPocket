from pymoo.model.problem import Problem
from Bio.PDB import *
import warnings
import numpy as np
from Bio import BiopythonWarning
from Bio.PDB.PDBExceptions import PDBConstructionException
import subprocess
import os
import logging
from sklearn.model_selection import ParameterGrid
import tempfile
import shutil
from multiprocessing.pool import ThreadPool

warnings.simplefilter('ignore', BiopythonWarning)

from pickpocket.utils import *

class FpocketOptimizer(Problem):
    '''
    Optimization of the main parameters in fpocket
    Functions: 
     f1= maximize the number of atoms in a single pocket part of the atoms 
         surrounding the ligand.
     f2= minimize the number of total atoms in the pocket
    
    ## fpocket arguments to optimize:
    #    -m (float)  : Minimum radius of an alpha-sphere.      (3.0)
    #    -M (float)  : Maximum radius of an alpha-sphere.      (6.0)
    #    -A (int)    : Minimum number of apolar neighbor for        
    #                  an a-sphere to be considered as apolar.   (3)
    #    -i (int)    : Minimum number of a-sphere per pocket.   (30)
    #    -D (float)  : Maximum distance for first clustering        
    #                  algorithm.                             (1.73)
    #    -s (float)  : Maximum distance for single linkage          
    #                  clustering                              (2.5)
    #    -n (integer): Minimum number of neighbor close from        
    #                  each other (not merged otherwise).        (3)
    #    -r (float)  : Maximum distance between two pockets         
    #                  barycenter (merged otherwise).          (4.5)
    ##
    '''
  
    def __init__(self, pockets, files, params=None, distance=5, max_none=0, max_tests=None, max_timeout=0, timeout=10, threads= 1, **kwargs):
        if len(files) != len(pockets):
            raise NameError("Error! ligands and files have to be of the same length")
        if params == None:
            params={}
        if timeout != None:
            self._timeout = min(timeout, 60 * 30)
        else:
            self._timeout = 60 * 30
        if max_tests == None:
            self._max_tests = len(files)
        else:
            self._max_tests=max_tests
        if max_timeout > 0 and max_timeout < 1:
            self._max_timeout = int(len(files)*max_timeout)
        else:
            self._max_timeout=max_timeout
        if max_none > 0 and max_none < 1:
            self._max_none = int(len(files)*max_none)
        else:
            self._max_none = int(max_none)
        if threads == None:
            self.threads =1
        else:
            self.threads = threads
        logging.info("Initialization FpocketOptimizer with parameters: ")
        logging.info(" {:10}:{:>10} ".format("known par", len(params.keys()) ))
        logging.info(" {:10}:{:>10} ".format("distance", distance))
        logging.info(" {:10}:{:>10} ".format("max none", self._max_none))
        logging.info(" {:10}:{:>10} ".format("max tests", self._max_tests))
        logging.info(" {:10}:{:>10} ".format("timeout", self._timeout))
        logging.info(" {:10}:{:>10} ".format("structures", len(files)))
        xl, xu = self._init_params(params)
        super().__init__(n_var=len(xl),
                         n_obj=2,
                         n_constr=1,
                         xl=xl,
                         xu=xu,
                         elementwise_evaluation=True, **kwargs)
        
        self._files = files
        self._pockets = pockets
        self._distance = float(distance)
        self._pdbp = PDBParser()
        self._arg_formatter = fpocket_arg_formatter
        self._default_par = fpocket_default_param
    
    def _init_params(self, params):
        full_arg_list = ["m", "M", "A", "i", "D", "s", "n", "r" ]
        if not set(params.keys()).issubset(set(full_arg_list)):
            raise ValueError("Given initial parameters are not correct!")
        self._inital_parameters = params
        xl = []
        xu = []
        full_xl = [0.5 , 3 , 1 , 10 , 0.5 , 1 , 1 , 1 ]
        full_xu = [6, 15 , 5 , 100 , 3 , 5 , 6 , 8 ]
        self._arg_list = []
        for n, p in enumerate(full_arg_list):
            if not p in params:
                self._arg_list.append(p)
                xl.append(full_xl[n])
                xu.append(full_xu[n])
        self._xl=xl
        self._xu=xu
        return (np.array(xl), np.array(xu))
    
    def _get_parameters(self, x):
        param = {}
        for idx, p in enumerate(self._arg_list):
            if "d" in self._arg_formatter[p]:
                param[p] = self._arg_formatter[p].format(int(x[idx]))
            else:
                param[p] = self._arg_formatter[p].format(x[idx])
        for p, v in self._inital_parameters:
            if v == "default":
                v=self._default_par[p]
            if "d" in self._arg_formatter[p]:
                param[p] = self._arg_formatter[p].format(int(v))
            else:
                param[p] = self._arg_formatter[p].format(v)
        return param
    
    def _evaluate(self, x, out, *args, **kwargs):
        parameters = self._get_parameters(x)
        g1 = float(parameters["m"]) - float(parameters["M"])
        if g1 < 0:
            out["G"] = [0]
        else:
            out["G"] = [g1]
            out["F"] = [1, 1 ]
            return out
        f1 , f2  = self._evaluate_parameters(parameters)
        out["F"] = [f1,f2]
        
        return out
    
    
    def _evaluate_parameters(self, par):
        random_indexes = np.random.permutation(np.arange(len(self._files)))
        percentage_residues = []
        percentage_ligand_atm = []
        none_results = 0
        running=True
        current_idx=0
        step = max(self.threads, 10)
        curr_timeout=0
        while running:
            args= []
            end_idx=min(current_idx+step, len(random_indexes))
            if len(random_indexes)-end_idx < step:
                end_idx=len(random_indexes)
            for idx in range(current_idx, end_idx):
                fname = self._files[random_indexes[idx]]
                out_dir = tempfile.mkdtemp(dir="./")
                args.append(("query", fname, out_dir, par.copy(), self._timeout))
            pool = ThreadPool(processes=self.threads)
            fpocket_results = pool.starmap(fpocket, args)
            pool.close()
            for i in range(len(fpocket_results)):
                shutil.rmtree(args[i][2])
            for i, result in enumerate(fpocket_results):
                idx=random_indexes[i+current_idx]
                if result == -1:
                    logging.debug("Timeout {} {} ".format(par, self._files[idx]))
                    curr_timeout+=1
                    if curr_timeout >= self._max_timeout:
                        logging.debug("Rejected {} for max_timeout {} ".format(par,curr_timeout))
                        return (1, 1)
                elif result != None:
                    best_pocket=[0,0]
                    for pocket in result.pockets:
                        perc_res, perc_lig = get_best_pocket_coverage(pocket.get_residues_ids(), self._pockets[idx])
                        if best_pocket[0] < perc_res:
                            best_pocket[0]= perc_res
                        if best_pocket[1]< perc_lig:
                            best_pocket[1]= perc_lig
                    percentage_residues.append(best_pocket[0])
                    percentage_ligand_atm.append(best_pocket[1])
                    logging.debug("Found {} for {} ".format(best_pocket, self._files[idx]))
                else:
                    percentage_residues.append(0)
                    percentage_ligand_atm.append(0)
                    none_results+=1
                    if none_results >= self._max_none:
                        logging.debug("Rejected {} for max_none {} ".format(par,none_results))
                        return (1, 1)
            #if len(percentage_residues) >= 10 and self.fast :
            #    if np.std(percentage_residues) > 0.5 or np.std(percentage_ligand_atm) > 0.5:
            #        logging.debug("Rejected {} for std {} {}".format(par,np.std(percentage_residues), np.std(percentage_ligand_atm) ))
            #        return (1,1)
            #    elif np.std(percentage_residues) < 0.1 and np.std(percentage_ligand_atm) < 0.1:
            #        running=False
            current_idx+=step
            if current_idx >= len(random_indexes):
                running=False
        
        if len(percentage_residues) < min(3, len(self._files)):
            logging.debug("Refused {} for insufficient data ".format(par))
            return (1,1)
        logging.debug("Accepted {} with {} and {} ".format(par, np.mean(percentage_residues),np.mean(percentage_ligand_atm) ))
        return (1 - np.mean(percentage_residues), 1 - np.mean(percentage_ligand_atm) )  
            
    
    
    

from pymoo.model.sampling import Sampling

class FpocketOptimizerSampling(Sampling):
    def _do(self, problem, n_samples, **kwargs):
        X = np.full((n_samples, problem.n_var), 0, dtype=float)
        for i in range(n_samples-1):
            for j in range(problem.n_var):
                if "d" in problem._arg_formatter[problem._arg_list[j]]:
                    X[i, j] = np.random.randint(low=problem._xl[j], high=problem._xu[j])
                else:
                    X[i, j] = round( problem._xl[j] + (np.random.rand() * (problem._xu[j]-problem._xl[j])) , 1 )
        i=n_samples-1
        for j in range(problem.n_var):
            X[i,j]=float(problem._default_par[problem._arg_list[j]])
        return X


from pymoo.model.mutation import Mutation

class FpocketOptimizerMutation(Mutation):
    def __init__(self):
        super().__init__()

    def _do(self, problem, X, **kwargs):
        # for each individual
        for i in range(len(X)):
            ## select a random argument to mutate
            j = np.random.randint(low=0, high=len(X[i]))
            if "d" in problem._arg_formatter[problem._arg_list[j]]:
                X[i, j] = np.random.randint(low=problem._xl[j], high=problem._xu[j])
            else:
                X[i, j] = round( problem._xl[j] + (np.random.rand() * (problem._xu[j]-problem._xl[j])) , 1 )
        return X
    
from pymoo.model.duplicate import ElementwiseDuplicateElimination

class FpocketOptimizerDuplicateElimination(ElementwiseDuplicateElimination):

    def is_equal(self, a, b):
        for i in range(len(a.X)):
            if abs(a.X[i] - b.X[i]) > 0.2:
                return False 
        return True

from pymoo.model.crossover import Crossover

class FpocketOptimizerCrossover(Crossover):
    def __init__(self):
        # define the crossover: number of parents and number of offsprings
        super().__init__(2, 2)

    def _do(self, problem, X, **kwargs):
        # The input of has the following shape (n_parents, n_matings, n_var)
        _, n_matings, n_var = X.shape
        # The output owith the shape (n_offsprings, n_matings, n_var)
        # Because there the number of parents and offsprings are equal it keeps the shape of X
        Y = np.full_like(X, None, dtype=np.object)
        # for each mating provided
        for k in range(n_matings):
            for i in range(n_var):
                if np.random.random() < 0.5:
                    Y[0, k, i] = X[0, k, i]
                    Y[1, k, i] = X[1, k, i]
                else:
                    Y[0, k, i] = X[1, k, i]
                    Y[1, k, i] = X[0, k, i]
        return Y   
    
from pymoo.model.callback import Callback


class FpocketCallback(Callback):

    def __init__(self, out_dir) -> None:
        super().__init__()
        self.out_dir=out_dir
        if not os.path.exists(out_dir):
            os.makedirs(self.out_dir, exist_ok=True)
        

    def notify(self, algorithm):
        res=algorithm.result()
        odir="{}/gen_{}/".format(self.out_dir, algorithm.n_gen)
        os.makedirs(odir, exist_ok=True)
        ofs=open("{}/info.txt".format(odir), "w")
        if type(res.opt) is not type(None) and len(res.opt) > 0 :
            ofs.write("Found {} non dominant solution:\n".format(len(res.opt)))
            n=1
            ofs.write("# \ttrue_pocket_residues_fraction\tligand_atom_fraction\t{}\n".format("\t".join(algorithm.problem._arg_list)))
            for sol in res.opt:
                F = sol.get("F")
                X= algorithm.problem._get_parameters(sol.get("X"))
                X_vals = []
                for k in algorithm.problem._arg_list:
                    X_vals.append(X[k])
                ofs.write("{}\t{:.3f}\t{:.3f}\t{}\n".format(n, 1-F[0], 1-F[1], "\t".join(X_vals)))
                out={"true_pocket_residues_fraction" : round(1-float(F[0]),3) , "ligand_atom_fraction" : round(1-float(F[1]),3), "parameters" : X}
                jsfs=open("{}/result_{}.json".format(odir, n), "w")
                json.dump(out, jsfs, indent=2)
                jsfs.close()
                n+=1
        else:
            ofs.write("No optimal parameters found.\n")
        ofs.close()
    