#!/usr/bin/env python3
import argparse
import logging
import os
from multiprocessing import cpu_count
logging.basicConfig(level=logging.DEBUG, format='%(asctime)s -%(levelname)s - %(message)s', filename="./log.txt")

def welcome():
    print("\n --- Welcome to PickPocket --- \n")

def train(args):
    from pickpocket.model import training_process
    file_input= args.input
    file_output= args.output
    model=args.model
    n_cross_validation=args.cross_validation
    threads=args.threads
    clfs , scaler , classnames = training_process(file_input, model, n_cross_validation, threads)
    stream_out = open(file_output, "wb")
    pickle.dump([scaler, clfs, classnames], stream_out)
    stream_out.close();

def test(args):
    from pickpocket.model import test_process
    file_input= args.input
    file_output= args.output
    model_file=args.model
    test_process(file_input, file_output, model_file)

def extract(args):
    from pickpocket.base import PickPocket
    if os.path.exists(args.output):
        print("Error! output directory exists: {}".format(args.output))
        return -1
    print("\nStarting the extraction process\n 1 - Setting up the work space...", end="", flush=True)
    pickpocket = PickPocket(pdb_dir= args.pdb_dir, 
                            pdb_list=args.pdbs, 
                            ligand_list= args.ligands,
                            threads=args.threads, pymol_dir="{}/pymol/".format(args.output),
                             info_dir="{}/info/".format(args.output))
    print("Done.")
    print(" 2 - Identifying the full pockets...", end="", flush=True)
    pickpocket.process_structures(distance=args.distance , optimization = False)
    print("Done.")
    print(" 3 - Running fpocket...", end="", flush=True)
    pickpocket.run_fpocket(args.fpocket_param, args.output)
    print("Done.")
    print(" 4 - Running stride...", end="", flush=True)
    pickpocket.run_stride(args.output)
    print("Done.")
    print(" 5 - Producing the output file...", end="", flush=True)
    pickpocket.print_table(args.output)
    print("Done.")
    print("You can find all your results in {} ".format(args.output))
    

def optimize(args):
    from pickpocket.base import PickPocket
    import pickpocket.optimizer as optimizer
    from multiprocessing.pool import ThreadPool
    from pymoo.algorithms.nsga2 import NSGA2
    from pymoo.optimize import minimize
    from pymoo.util.termination.default import MultiObjectiveDefaultTermination
    import copy
    import json
    if args.known :
        params=json.parse(args.known)
        full_arg_list = ["m", "M", "A", "i", "D", "s", "n", "r" ]
        for k in params:
            if not k in full_arg_list:
                raise ValueError("Error! file {} contains unknown key {}. \nAllowed keys: {}".format(args.known, k, full_arg_list)) 
    else:
        params=None
    print("\nStarting the optimization process with {} threads".format(args.threads))
    print(" 1 - Setting up the work space...", end="", flush=True)
    pickpocket = PickPocket(args.pdb_dir, args.pdbs, args.ligands, info_dir="{}/info/".format(args.output), pymol_dir="{}/pymol/".format(args.output))
    print("Done.")
    print(" 2 - Identifying the full pockets and redundancy...", end="", flush=True)
    pickpocket.process_structures(distance=args.distance ,rms_thr=args.rmsd_thr  ,optimization = True)
    print("Done.")
    print("\n\tFound {} pdbs with pockets having residues with a distance of {} from the respective ligand atoms.".format(len(pickpocket.get_ids("positive")), args.distance))
    print("\tUsing {} non redundant pdbs for the optimization ( rmsd threshold of {} ).".format( len(pickpocket.get_ids("optimized")), args.rmsd_thr))
    print("\n\tWork space state:")
    print("\t Structures")
    print("\t  {:15}:{:^10}".format("Total", len(pickpocket.pdbs) ))
    print("\t  {:15}:{:^10}".format("Positive", len(pickpocket.get_ids("positive"))))
    print("\t  {:15}:{:^10}".format("Negative", len(pickpocket.get_ids("negative"))))
    print("\t  {:15}:{:^10}".format("Optimization", len(pickpocket.get_ids("optimized"))))
    print("\t Ligands")
    print("\t  {:15}:{:^10}".format("Total", len(pickpocket.ligands.keys())))
    print("\t Additional Ligands:")
    print("\t  {:15}:{:^10}".format("Total", len(pickpocket.unlisted_ligands.keys())))
    print("\n\tAn extended list is present in the files {}/infos/*.ls\n".format(args.output))
    if args.download:
        print("Done. You can copy {} in another location and run the optimization offline.".format(args.pdb_dir))
        return
    
    pool = ThreadPool(processes=args.threads)
    problem = optimizer.FpocketOptimizer(pockets=pickpocket.get_optimization_pockets(), files=pickpocket.get_files_list(pdb_class="optimized", nohet=True), params= params, max_none=args.max_none,timeout=args.timeout , parallelization=('starmap', pool.starmap))
    print(" 3 - Starting the NSGA2 parameters optimization with the following settings:")
    print("\t{:15}:{:^10}".format("Pop size", args.pop_size))
    print("\t{:15}:{:^10}".format("Max gen", args.max_gen))
    print("\t{:15}:{:^10}".format("Timeout", str(args.timeout)+" sec" ), flush=True)
    
    algorithm = NSGA2(pop_size=args.pop_size,
                   sampling= optimizer.FpocketOptimizerSampling(),
                   mutations = optimizer.FpocketOptimizerMutation(),
                   eliminate_duplicates=optimizer.FpocketOptimizerDuplicateElimination()
                    )
    termination = MultiObjectiveDefaultTermination(
        x_tol=0.05,
        cv_tol=0.05,
        f_tol=0.05,
        nth_gen=1,
        n_last=3,
        n_max_gen=args.max_gen,
        n_max_evals=100000
        )
    res = minimize(problem, algorithm, termination, seed=1, verbose=True )
    pool.close()
    if type(res.opt) is not type(None) and len(res.opt) > 0 :
        print("Found {} non dominant solution:".format(len(res.opt)))
        n=1
        print("# \ttrue_pocket_residues_fraction\tligand_atom_fraction\t{}".format("\t".join(problem._arg_list)))
        for sol in res.opt:
            F = sol.get("F")
            X= problem._get_parameters(sol.get("X"))
            X_vals = []
            for k in problem._arg_list:
                X_vals.append(X[k])
            print("{}\t{:.3f}\t{:.3f}\t{}".format(n, 1-F[0], 1-F[1], "\t".join(X_vals)))
            out={"true_pocket_residues_fraction" : round(float(F[0]),3) , "ligand_atom_fraction" : round(float(F[1]),3), "parameters" : X}
            ofs=open("{}_{}.json".format(args.output, n), "w")
            json.dump(out, ofs, indent=2)
            ofs.close()
            n+=1
    else:
        print("No optimal parameters found.")

def main():

    parser = argparse.ArgumentParser(prog='pickpocket',  formatter_class=argparse.ArgumentDefaultsHelpFormatter)
    subparsers = parser.add_subparsers()
    
    ### optimize subparser
    main_opt_parser = subparsers.add_parser("optimize", formatter_class=argparse.ArgumentDefaultsHelpFormatter, help="Find an optimal combination using NSGA2 of fpocket parameters for a list of ligands in your target structures.\n The parameters that will be optimized are:\n m, M, A, i, D, s, n, r, p. \nCheck fpocket for more informations about them.")
    opt_mandatory = main_opt_parser.add_argument_group("required arguments")
    opt_mandatory.add_argument("-p", "--pdbs", help="File containing a list of PDB identifiers, one for each line", type=os.path.realpath, required=True)
    opt_mandatory.add_argument("-l", "--ligands",help="File containing a list of ligands (three letter code), one for each line", type=os.path.realpath, required=True )
    opt_parser = main_opt_parser.add_argument_group("additional arguments")
    opt_parser.add_argument("-o", "--output", help="Folder for the output files. " , default="./optimization")
    opt_parser.add_argument("-d", "--pdb-dir",help="Folder where the pdbs will be downloaded", type=str, default="./PDB")
    opt_parser.add_argument("-m", "--max-none",help="Discard a solution with more than max_none structures without valid pockets. If 0 < max_none < 1, it's considered as the fraction of the total structures.", type=float, default="0.1")
    opt_parser.add_argument("-g", "--max-gen",help="Maximum number of generations", type=int, default="100")
    opt_parser.add_argument("-s", "--pop-size",help="", type=int, default="10")
    opt_parser.add_argument("-a", "--distance",help="Distance in angstrom between a protein residue and an atom of the ligand to be consider as part of the pocket", type=float, default="5")
    opt_parser.add_argument("-t", "--timeout",help="Time in second given to fpocket to generate the pockets before dropping the parameters combinations", type=int, default="20")
    opt_parser.add_argument("-r", "--rmsd-thr",help="Threshold of the rmds: pockets with the same number of atoms and whose superimposition generate a rmsd lower than this threshold are considered redundant.", type=float, default="6")
    opt_parser.add_argument("-k", "--known",help="JSON file containing the known fpocket parameters, that won't be optimized", type=str )
    opt_parser.add_argument("--download", help="Download only the pdbs and setup the workspace, without performing the optimization. Useful in case you have to run the optimization without internet connection.", action="store_true" )
    opt_parser.add_argument("-@", "--threads", default=1, type=int, help="The number of threads to use. Default: 1")
    opt_parser.set_defaults(func=optimize)
    
    ### extract subparser 
    main_extract_parser = subparsers.add_parser("extract",formatter_class=argparse.ArgumentDefaultsHelpFormatter, help="Extract pockets from a list of pdb files")
    mandatory_extract_parser = main_extract_parser.add_argument_group("required arguments")
    mandatory_extract_parser.add_argument("-p", "--pdbs", help="File containing a list of PDB identifiers, one for each line", type=str, required=True)
    mandatory_extract_parser.add_argument("-l", "--ligands",help="File containing a list of ligands (three letter code), one for each line", type=str, required=True )
    extract_parser = main_extract_parser.add_argument_group("additional arguments")
    extract_parser.add_argument("-o", "--output", help="Prefix for the output files." , default="./pickpocket_extract")
    extract_parser.add_argument("-d", "--pdb-dir",help="Folder where the pdbs will be downloaded", type=str, default="./PDB")
    extract_parser.add_argument("-f", "--fpocket-param",help="JSON file containing fpocket parameters, as output of 'optimize'. Defualt:use the default fpocket parameters.", type=str, default=None)
    extract_parser.add_argument("-a", "--distance",help="Distance in angstrom between a protein residue and an atom of the ligand to be consider as part of the pocket", type=float, default="5")
    extract_parser.add_argument("-@", "--threads", default=1, type=int, help="The number of threads to use. Default: 1")
    extract_parser.set_defaults(func=extract)
    
    ### training subparser
    main_training_parser = subparsers.add_parser("train", formatter_class=argparse.ArgumentDefaultsHelpFormatter,help="Train a prediciton model with the pockets generated using extract")
    mandatory_training_parser = main_training_parser.add_argument_group("required arguments")
    mandatory_training_parser.add_argument("-i", "--input", help="", type=str, required=True)
    training_parser = main_training_parser.add_argument_group("additional arguments")
    training_parser.add_argument("-o", "--output",help="", type=str, default="./model.pkl")
    training_parser.add_argument("-m", "--model",help="", type=str, default="mlp", choices=["mlp", "rf", "svm"] )
    training_parser.add_argument("-c", "--cross-validation",help="", type=int, default=5 )
    training_parser.add_argument("-@", "--threads", default=1, type=int, help="The number of threads to use. Default: 1")
    training_parser.set_defaults(func=train)
    
    ### test subparser
    main_training_parser = subparsers.add_parser("test",formatter_class=argparse.ArgumentDefaultsHelpFormatter, help="Test a model with the pockets generated using extract")
    mandatory_training_parser = main_training_parser.add_argument_group("required arguments")
    mandatory_training_parser.add_argument("-i", "--input", help="", type=str , required=True)
    mandatory_training_parser.add_argument("-m", "--model",help="", type=str , required=True)
    training_parser = main_training_parser.add_argument_group("additional arguments")
    training_parser.add_argument("-o", "--output",help="", type=str , default="./test.txt")
    
    training_parser.set_defaults(func=test)
    
    args = parser.parse_args()
    if hasattr(args, "func"):
        welcome()
        if args.threads:
            if args.threads == -1:
                args.threads=cpu_count()
        return args.func(args)
    else:
        parser.print_help()
    return 

if __name__ == "__main__":
    main();
