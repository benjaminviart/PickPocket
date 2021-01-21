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
  
    def __init__(self, pockets, files, params=None, distance=5, max_none=1, max_tests=None , timeout=10, **kwargs):
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
            
        if max_none > 0 and max_none < 1:
            self._max_none = int(len(files)*max_none)
        else:
            self._max_none = int(max_none)
            
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
        full_xl = [1, 4 , 1 , 20 , 1 , 2 , 1 , 3.5 ]
        full_xu = [6, 10 , 4 , 100 , 2 , 3 , 3 , 5.5 ]
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
        
        for i in range(min(len(random_indexes), self._max_tests)):
            perc_res , perc_lig = self._runFpocket(par, random_indexes[i])
            if perc_res == None: ## Timeout, skip the structure
                continue
            percentage_residues.append(perc_res)
            percentage_ligand_atm.append(perc_lig)
            if perc_res == 0:
                none_results+1
                if none_results >= self._max_none:
                    logging.debug("Rejected {} for max_none ".format(par,none_results))
                    return (1, 1)
            if i > 10 :
                if np.std(percentage_residues) > 0.5 or np.std(percentage_ligand_atm) > 0.5:
                    logging.debug("Rejected {} for std {} {}".format(par,np.std(percentage_residues), np.std(percentage_ligand_atm) ))
                    return (1,1)
                elif np.std(percentage_residues) < 0.1 or np.std(percentage_ligand_atm) < 0.1:
                    break
        
        if len(percentage_residues) < min(3, len(self._files)):
            logging.debug("Refused {} for insufficient data ".format(par))
            return (1,1)
        logging.debug("Accepted {} with {} and {} ".format(par, np.mean(percentage_residues),np.mean(percentage_ligand_atm) ))
        return (1 - np.mean(percentage_residues), 1 - np.mean(percentage_ligand_atm) )  
            
    def _runFpocket(self, par, idx):
        fname = self._files[idx]
        best_pocket = [0, 0]
        out_dir = tempfile.mkdtemp(dir="./")
        result=None
        try:
            result = fpocket("query", fname, out_dir, par, timeout=self._timeout)
        except subprocess.TimeoutExpired:
            logging.debug("Time expired for {} with parameters {} ".format(fname , par))
            shutil.rmtree(out_dir)
            return (None, None)
        if result != None:
            for pocket in result.pockets:
                perc_res, perc_lig = get_best_pocket_coverage(pocket.get_residues_ids(), self._pockets[idx])
                if best_pocket[0] < perc_res:
                    best_pocket[0]= perc_res
                if best_pocket[1]< perc_lig:
                    best_pocket[1]= perc_lig
            logging.debug("Found {} {} for par {}".format(best_pocket[0], best_pocket[1], par))
        shutil.rmtree(out_dir)
        return (best_pocket[0], best_pocket[1])
    
    

from pymoo.model.sampling import Sampling

class FpocketOptimizerSampling(Sampling):
    def _do(self, problem, n_samples, **kwargs):
        X = np.full((n_samples, problem.n_var), 0, dtype=float)
        for i in range(n_samples):
            for j in range(problem.n_var):
                if "d" in problem._arg_formatter[problem._arg_list[j]]:
                    X[i, j] = np.random.randint(low=problem._xl[j], high=problem._xu[j])
                else:
                    X[i, j] = round( problem._xl[j] + (np.random.rand() * (problem._xu[j]-problem._xl[j])) , 1 ) 
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
    