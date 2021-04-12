#!/usr/bin/env python3
import argparse
import logging
import os
from multiprocessing import cpu_count

if os.environ.get("PICKPOCKET_DEBUG"):
    logging.basicConfig(level=logging.DEBUG, format='%(asctime)s -%(levelname)s - %(message)s', filename="./log.txt")
else:
    logging.disable(logging.WARNING)

def welcome():
    print("\n --- Welcome to PickPocket --- \n")


def train(args):
    from pickpocket.model import training_process
    if args.both:
        condition="and"
    else:
        condition="or"
    
    training_process(
        file_name=args.input, 
        out_prefix= args.output,
        labels = args.labels,
        model= args.model,
        cv=args.cross_validation, 
        f1_thr=args.f1_thr, f2_thr=args.f2_thr, 
        condition = condition, threads=args.threads)
    

def test(args):
    from pickpocket.model import test_process
    if args.both:
        condition="and"
    else:
        condition="or"
    test_process(args.input, args.output, args.model, args.f1_thr, args.f2_thr,condition, args.labels)

def extract(args):
    from pickpocket.base import PickPocket
    #if os.path.exists(args.output):
    #    print("Error! output directory exists: {}".format(args.output))
    #    return -1
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
    pickpocket.print_results(args.output)
    print("Done.")
    print("You can find all your results in {} ".format(args.output))
    

def optimize(args):
    from pickpocket.optimizer import run_NSGA2
    run_NSGA2(args)
    
    

def compare(args):
    from pickpocket.compare import compare
    if not os.path.exists(args.extract_folder) or not os.path.isdir(args.extract_folder) :
        raise NotADirectoryError("Folder {} doesn't exists!".format(args.extract_folder))
    if not os.path.exists(args.biolip):
        raise FileNotFoundError("File {} doesn't exists!".format(args.biolip))
    compare( biolip_file=args.biolip, extract_folder=args.extract_folder,   out_file=args.output_prefix )

def predict(args):
    from pickpocket.model import predict
    predict(args.input, args.model, args.output)

def main():
    from pickpocket.utils import check_dependencies
    check_dependencies()
    parser = argparse.ArgumentParser(prog='pickpocket',  formatter_class=argparse.ArgumentDefaultsHelpFormatter)
    subparsers = parser.add_subparsers()
    
    ### optimize subparser
    main_opt_parser = subparsers.add_parser("optimize", formatter_class=argparse.ArgumentDefaultsHelpFormatter, help="Find an optimal combination using NSGA2 of fpocket parameters for a list of ligands in your target structures.\n The parameters that will be optimized are:\n m, M, A, i, D, s, n, r. \nCheck fpocket for more informations about them.")
    opt_mandatory = main_opt_parser.add_argument_group("required arguments")
    opt_mandatory.add_argument("-p", "--pdbs", help="File containing a list of PDB identifiers, one for each line", type=os.path.realpath, required=True)
    opt_mandatory.add_argument("-l", "--ligands",help="File containing a list of ligands (three letter code), one for each line", type=os.path.realpath, required=True )
    opt_parser = main_opt_parser.add_argument_group("additional arguments")
    opt_parser.add_argument("-o", "--output", help="Folder for the output files. " , default="./optimization")
    opt_parser.add_argument("-d", "--pdb-dir",help="Folder where the pdbs will be downloaded", type=str, default="./PDB")
    opt_parser.add_argument("-m", "--max-none",help="Discard a solution with more than max_none structures without valid pockets. If 0 < max_none < 1, it's considered as the fraction of the total structures.", type=float, default="0")
    opt_parser.add_argument("-M", "--max-tests",help="For each individual, test a maximum of max-test random structures to determine its fitness.", type=int, default=None)
    opt_parser.add_argument("-g", "--max-gen",help="Maximum number of generations", type=int, default="100")
    opt_parser.add_argument("-s", "--pop-size",help="Number of individuals in each population", type=int, default="10")
    opt_parser.add_argument("-a", "--distance",help="Distance in angstrom between a protein residue and an atom of the ligand to be consider as part of the pocket", type=float, default="4")
    opt_parser.add_argument("-t", "--timeout",help="Time in second given to fpocket to generate the pockets before dropping the parameters combinations", type=int, default="30")
    opt_parser.add_argument("-T", "--max-timeout",help="Maximum number of timeout pdbs before rejecting the solution", type=float, default="0.1")
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
    extract_parser.add_argument("-a", "--distance",help="Distance in angstrom between a protein residue and an atom of the ligand to be consider as part of the pocket", type=float, default="4")
    extract_parser.add_argument("-@", "--threads", default=1, type=int, help="The number of threads to use. Default: 1")
    extract_parser.set_defaults(func=extract)
    
    ### training subparser
    main_training_parser = subparsers.add_parser("train", formatter_class=argparse.ArgumentDefaultsHelpFormatter,help="Train a prediciton model with the pockets generated using extract")
    mandatory_training_parser = main_training_parser.add_argument_group("required arguments")
    mandatory_training_parser.add_argument("-i", "--input", help="Input file, has to be the tsv output of the extraction command.", type=str, required=True)
    training_parser = main_training_parser.add_argument_group("additional arguments")
    training_parser.add_argument("-o", "--output",help="Output prefix", type=str, default="./model")
    training_parser.add_argument("-l", "--labels",help="Labels to assign to each pocket, as output of compare. If absent, the label is based on f1 and f2.", type=str, default=None)
    training_parser.add_argument("-m", "--model",help="Type of model to generate", type=str, default="rf", choices=["mlp", "rf", "svm", "deep"] )
    training_parser.add_argument("-c", "--cross-validation",help="The model parameters are optimized through cross validated grid search", type=int, default=5 )
    
    training_parser.add_argument("-t", "--f1-thr",help="A pocket is considered positive if the best_true_pocket_fraction is higher than this threshold", type=float, default="0.1" )
    training_parser.add_argument("-T", "--f2-thr",help="A pocket is considered positive if the best_ligand_atm_fraction is higher than this threshold", type=float, default="0.1" )
    training_parser.add_argument("-b", "--both",help="Require that both f1-thr and f2-thr are satisfied", action="store_true")
    training_parser.add_argument("-@", "--threads", default=1, type=int, help="The number of threads to use. Default: 1")
    training_parser.set_defaults(func=train)
    
    ### test subparser
    main_test_parser = subparsers.add_parser("test",formatter_class=argparse.ArgumentDefaultsHelpFormatter, help="Test a model with the pockets generated using extract")
    mandatory_test_parser = main_test_parser.add_argument_group("required arguments")
    mandatory_test_parser.add_argument("-i", "--input", help="", type=str , required=True)
    mandatory_test_parser.add_argument("-m", "--model",help="", type=str , required=True)
    test_parser = main_test_parser.add_argument_group("additional arguments")
    test_parser.add_argument("-o", "--output",help="Ouput file", type=str , default="./test.txt")
    test_parser.add_argument("-l", "--labels",help="For evaluation, labels to assign to each pocket, as output of compare. If absent, the label is based on f1 and f2.", type=str, default=None)
    test_parser.add_argument("-t", "--f1-thr",help="For evaluation, a pocket is considered positive if the best_true_pocket_fraction is higher than this threshold", type=float, default="0.1" )
    test_parser.add_argument("-T", "--f2-thr",help="For evaluation, a pocket is considered positive if the best_ligand_atm_fraction is higher than this threshold", type=float, default="0.1" )
    test_parser.add_argument("-b", "--both",help="Require that both f1-thr and f2-thr are satisfied", action="store_true")
    
    test_parser.set_defaults(func=test)
    
    ### compare subparser
    main_compare_parser = subparsers.add_parser("compare",formatter_class=argparse.ArgumentDefaultsHelpFormatter, help="Compare the pockets generated with BioLip")
    mandatory_compare_parser= main_compare_parser.add_argument_group("required arguments")
    mandatory_compare_parser.add_argument("-e", "--extract-folder", help="The folder containing the extract results", type=str , required=True)
    mandatory_compare_parser.add_argument("-b", "--biolip", help="The biolip file containing the biolip database ( or part of it). Can be a compressed gzip file.", type=str , required=True)
    compare_parser = main_compare_parser.add_argument_group("additional arguments")
    compare_parser.add_argument("-o", "--output-prefix", help="The prefix of the output files", type=str , default="./compare")
    compare_parser.set_defaults(func=compare)
    args = parser.parse_args()
    
    ### predict
    main_predict_parser = subparsers.add_parser("predict", formatter_class=argparse.ArgumentDefaultsHelpFormatter, help="Predict the pockets in a PDB structure.")
    mandatory_predict_parser= main_predict_parser.add_argument_group("required arguments")
    mandatory_predict_parser.add_argument("-i", "--input", help="The input file or PDB id", type=str , required=True)
    mandatory_predict_parser.add_argument("-m", "--model", help="The model file generated by pickPocket train", type=str , required=True)
    predict_parser = main_predict_parser.add_argument_group("additional arguments")
    predict_parser.add_argument("-o", "--output-prefix", help="The prefix of the output files", type=str , default="./compare")
    predict_parser.set_defaults(func=predict)
    
    args = parser.parse_args()
    
    if hasattr(args, "func"):
        welcome()
        if hasattr(args, "threads"):
            if args.threads == -1:
                args.threads=cpu_count()
        return args.func(args)
    else:
        parser.print_help()
    return 

if __name__ == "__main__":
    main();
