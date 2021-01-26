import os
from Bio.PDB import *
import subprocess
import logging
import json
import numpy as np
import matplotlib.pyplot as plt
from matplotlib.backends.backend_pdf import PdfPages 

fpocket_default_param = {
    "m" : 3.0,
    "M" : 6.0,
    "A" : 3,
    "i" : 30,
    "D" : 1.73,
    "s" : 2.5,
    "n" : 3,
    "r" : 4.5,
    }

fpocket_arg_formatter = {
            "m" : "{:.1f}",
            "M" : "{:.1f}",
            "A" : "{:d}",
            "i" : "{:d}",
            "D" : "{:.1f}",
            "s" : "{:.1f}",
            "n" : "{:d}",
            "r" : "{:.1f}",
                      }
stride_one_letter_ss = ["H", "G", "I", "E", "B", "b", "T", "C"]
    
pickpocket_header = ["PDB",
                   "pocket_number",
                   "pocket_position",
                   "best_true_pocket_fraction",
                   "best_ligand_atm_fraction",
                   "fp_Score",
                   "fp_Druggability_Score",
                   "fp_Number_of_Alpha_Spheres",
                   "fp_Total_SASA",
                   "fp_Polar_SASA",
                   "fp_Apolar_SASA",
                   "fp_Volume",
                   "fp_Mean_local_hydrophobic_density",
                   "fp_Mean_alpha_sphere_radius",
                   "fp_Mean_alpha_sphere_solvent_access",
                   "fp_Apolar_alpha_sphere_proportion",
                   "fp_Hydrophobicity_score",
                   "fp_Volume_score",
                   "fp_Polarity_score",
                   "fp_Charge_score",
                   "fp_Proportion_of_polar_atoms",
                   "fp_Alpha_sphere_density",
                   "fp_Alpha_Sphere_max_dist",
                   "fp_Flexibility",
                   "stride_H",
                   "stride_G",
                   "stride_I",
                   "stride_E",
                   "stride_B",
                   "stride_b",
                   "stride_T",
                   "stride_C",
                   "C",
                   "C1",
                   "C2",
                   "C3",
                   "C4",
                   "C5",
                   "C6",
                   "C7",
                   "C8",
                   "CA",
                   "CB",
                   "CD",
                   "CD1",
                   "CD2",
                   "CE",
                   "CE1",
                   "CE2",
                   "CE3",
                   "CG",
                   "CG1",
                   "CG2",
                   "CH2",
                   "CZ",
                   "CZ2",
                   "CZ3",
                   "N",
                   "N1",
                   "N2",
                   "N3",
                   "N4",
                   "N6",
                   "N7",
                   "N9",
                   "ND1",
                   "ND2",
                   "NE",
                   "NE1",
                   "NE2",
                   "NH1",
                   "NH2",
                   "NZ",
                   "O",
                   "O2",
                   "O3",
                   "O4",
                   "O5",
                   "O6",
                   "OD1",
                   "OD2",
                   "OE1",
                   "OE2",
                   "OG",
                   "OG1",
                   "OH",
                   "OP1",
                   "OP2",
                   "OXT",
                   "P",
                   "S",
                   "SD",
                   "SG"
                ]


def get_uids(res_list):
    out = []
    for r in res_list:
        out.append("{}_{}".format(r.get_full_id()[2], r.id[1]))
    return out

def get_best_pocket_coverage(residues, true_positives):
        best=[0,0]
        for pk in true_positives:
            fract = len(pk[0].intersection(residues)) / len(residues)
            if fract > best[0]:
                best[0]=fract
            n=0
            for i in range(1, len(pk)):
               if len(pk[i].intersection(residues)) > 0:
                   n+=1
            fract = n / (len(pk)-1)
            if fract > best[1]:
                best[1]=fract
        return (best[0], best[1])
            
class FpocketResult():

    def __init__(self, folder, pdb_id):
        self.pdb_id = pdb_id
        self.pockets = []
        f = open("{}/{}_info.txt".format(folder, pdb_id), "r")
        for line in f:
            line = line.strip()
            if len(line) > 6 and line[0:6] == "Pocket":
                pocket_n = int(line.split()[1]) - 1
                self.pockets.append(Pocket(pocket_n, folder))
            elif ":" in line:
                self.pockets[-1].add_info(line)
        f.close()
    
    def get_pockets_ids(self):
        out = []
        for p in self.pockets:
            out.append([p.get_residues_ids()])
        return out


class Pocket():
    def __init__(self, pocket_number, folder):
        '''
        Get the pocket results from fpocket.
        Informations are kept in the same order as in the info file:
          Score 
          Druggability Score 
          Number of Alpha Spheres 
          Total SASA 
          Polar SASA 
          Apolar SASA 
          Volume 
          Mean local hydrophobic density 
          Mean alpha sphere radius 
          Mean alp. sph. solvent access 
          Apolar alpha sphere proportion 
          Hydrophobicity score
          Volume score
          Polarity score
          Charge score 
          Proportion of polar atoms
          Alpha sphere density 
          Cent. of mass - Alpha Sphere max dist
          Flexibility
          
        :param pocket_number:
        :param folder:
        '''
        self.pocket_number = pocket_number
        self.folder = folder 
        self.info = []
        self.atoms = []
        with open("{}/pockets/pocket{}_atm.pdb".format(folder, pocket_number), "r") as f:
            for line in f:
                line = line.strip()
                if line[0:4] == "ATOM":
                    self.add_atom(line)

    def add_info(self, line):
        k_v = line.strip().split(":")
        self.info.append(float(k_v[1].strip()))
    
    def add_atom(self, line):
        if line[76:78].strip() in pickpocket_header[32:]:
            self.atoms.append({ "id": int(line[6:11].strip()),
              "atom" : line[12:16].strip(),
              "res" : line[17:20].strip(),
              "chain" : line[21],
              "resn" : line[22:26].strip(),
              "X" : float(line[30:38].strip()),
              "Y" : float(line[38:46].strip()),
              "Z" : float(line[46:54].strip())
            })

    def get_atm_stats(self):
        stats = {}
        for atm in pickpocket_header[32:]:
            stats[atm] = 0
        for atm in self.atoms:
            if atm["atom"] not in pickpocket_header[32:]:
                print(atm["atom"])
            else:
                stats[atm["atom"]] += 1
        tot = len(self.atoms)
        for atm in pickpocket_header[32:]:
            stats[atm] /= tot 
        return stats  
    
    def get_residues_ids(self):
        out = set()
        for atm in self.atoms:
            out.add("{}_{}".format(atm["chain"], atm["resn"]))
        return out
    
    def get_position(self):
        out = ""
        residues = {}
        for r in list(self.get_residues_ids()):
            chain_res = r.split("_")
            if not chain_res[0] in residues.keys():
                residues[chain_res[0]] = []
            residues[chain_res[0]].append(int(chain_res[1]))
        for idx, chain in enumerate(sorted(residues.keys())):
            if idx != 0:
                out += "!"
            residues[chain] = sorted(residues[chain])                
            out += "{}[{}".format(chain, residues[chain][0])
            sep = "-"
            tot = len(residues[chain])
            if tot == 1:
                out += "]"
            else:
                for j in range(1, len(residues[chain]) - 1):
                    if residues[chain][j] != residues[chain][j - 1] + 1:
                        sep = "~"
                out += "{}{}]".format(sep, residues[chain][tot - 1])
        return out
    def get_full_position(self):
        out = ""
        residues = {}
        for r in list(self.get_residues_ids()):
            chain_res = r.split("_")
            if not chain_res[0] in residues.keys():
                residues[chain_res[0]] = []
            residues[chain_res[0]].append(int(chain_res[1]))
        for idx, chain in enumerate(sorted(residues.keys())):
            if idx != 0:
                out += "!"
            residues[chain] = sorted(residues[chain])                
            out += "{}[{}".format(chain, residues[chain][0])
            sep = "-"
            tot = len(residues[chain])
            if tot == 1:
                out += "]"
            else:
                for j in range(1, len(residues[chain]) - 1):
                    if residues[chain][j] != residues[chain][j - 1] + 1:
                        sep = "~"
                out += "{}{}]".format(sep, residues[chain][tot - 1])
        return out
        
                        
def fpocket(pdb_id, input_file, output_folder, parameters, timeout=None):
    command = "ln -s {} {}/{}.pdb ".format(os.path.realpath(input_file), os.path.realpath(output_folder), pdb_id)
    proc = subprocess.Popen(command.split(), stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
    proc.wait()
    if proc.returncode != 0 :
        logging.error("Cannot create the link: {}".format(command))
        return None
    command = "fpocket "
    for k in parameters:
        command += "-{} {} ".format(k, parameters[k])
    command += "-f {}/{}.pdb ".format(output_folder, pdb_id)
    proc = subprocess.Popen(command.split(), stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
    try:
        proc.wait(timeout=timeout)
    except subprocess.TimeoutExpired as err:
        proc.kill()
        return -1
    out_dir = "{}/{}_out/".format(output_folder, pdb_id)
    if proc.returncode == 0 and os.path.exists(out_dir):
        return FpocketResult(out_dir, pdb_id)
    else:
        return None

  
def stride(pdb_id, input_file, output_folder):
    ofile = "{}/{}.txt".format(output_folder, pdb_id)
    command = "stride -f{} {}".format(ofile, input_file)
    proc = subprocess.Popen(command.split(), stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
    proc.wait()
    if proc.returncode == 0 and os.path.exists(ofile):
        return StrideResult(ofile, pdb_id)

    
class StrideResult():

    def __init__(self, file, pdb_id):
        self.file = file
        self.pdb_id = pdb_id
        self.results = {}
        with open(file, "r") as f:
            for line in f:
                if line[0:3] == "ASG":
                    self._parse_line(line)
                    
    def _parse_line(self, line):
        if line[11:15].isupper():  # ## Discard disorderd residues 
            return 
        out = { 
            "res": line[5:8].strip(),
            "chain" : line[9].strip(),
            "resi" : int(line[11:15].strip()),
            "ss" :  line[24]
            }
        out["id"] = "{}_{}".format(out["chain"], out["resi"])
        self.results[out["id"]] = out
        
    def get_residues_stats(self, residues):
        stats = {}
        for ss in stride_one_letter_ss:
            stats[ss] = 0
        tot = len(residues)
        missing=0
        for r in residues:
            if not r in self.results.keys():
                logging.warn("WARNING! Stride result for pdb {} doesn't contains residue {}".format(self.pdb_id, r))
                missing+=1
            else:
                stats[self.results[r]["ss"]] += 1
        if tot - missing > 0 :
            tot=tot-missing
        for k in stats:
            stats[k] /= tot
        return stats



def PDBKFold( ids, Y, fold=5):
    pos_pdb_ids=[]
    neg_pdb_ids=[]
    pdbs={}
    for idx, id in enumerate(ids):
        if Y[idx] == 1:
            if id[0] not in pos_pdb_ids:
                pos_pdb_ids.append(id[0])
        if not id[0] in pdbs:
            pdbs[id[0]]=[]
        pdbs[id[0]].append(idx)
    for idx, id in enumerate(ids):
        if not id[0] in pos_pdb_ids and not id[0] in neg_pdb_ids :
            neg_pdb_ids.append(id[0])
            
    n_pos=len(pos_pdb_ids)
    n_neg=len(neg_pdb_ids)
    random_indices_pos = np.random.permutation(np.arange(n_pos))
    random_indices_neg = np.random.permutation(np.arange(n_neg))
    n_pos_test = round(n_pos / fold)
    n_neg_test = round(n_neg / fold)
    out = [([],[]) for _ in range(fold)]
    ## array with (train, test)
    if n_pos_test == 0:
        raise ValueError("ERROR! not enough PDBs with positive pockets")
    for i in range(fold):
        for j , idx in enumerate(random_indices_pos):
            if j >= (i*n_pos_test) and j < ((i+1)*n_pos_test):
                out[i][1].extend(pdbs[pos_pdb_ids[idx]])
            else:
                out[i][0].extend(pdbs[pos_pdb_ids[idx]]) 
    if n_neg_test == 0:
        print("WARNING! not enough PDBs without positive pockets. Only positive PDBs will be used.")
    else:
        for i in range(fold):
            for j , idx in enumerate(random_indices_neg):
                if j >= (i*n_neg_test) and j < ((i+1)*n_neg_test):
                    out[i][1].extend(pdbs[neg_pdb_ids[idx]])
                else:
                    out[i][0].extend(pdbs[neg_pdb_ids[idx]])
    final_out=[]
    for i in range(fold):
        pos_train,pos_test,neg_train,neg_test=[],[],[],[]
        for j in range(len(out[i][0])):
            if Y[out[i][0][j]] == 0:
                neg_train.append(out[i][0][j])
            else:
                pos_train.append(out[i][0][j])
        for j in range(len(out[i][1])):
            if Y[out[i][1][j]] == 0:
                neg_test.append(out[i][1][j])
            else:
                pos_test.append(out[i][1][j])
        n_train=min(len(pos_train), len(neg_train))
        n_test= min(len(pos_test), len(neg_test))
        train=np.concatenate((np.random.permutation(pos_train)[:n_train] , np.random.permutation(neg_train)[:n_train]))
        test=np.concatenate((np.random.permutation(pos_test)[:n_test], np.random.permutation(neg_test)[:n_test]))
        final_out.append((train,test))
    return final_out
        
    
    
def import_data( file_name, f1_thr = 0.1, f2_thr = 0.1, condition="and"):
    Y=[]
    ids =[]
    X=[]
    f1=[]
    f2=[]
    if not condition in ["and", "or"]:
        raise ValueError("Condition {} not valid. It as to be 'and' or 'or' ".format(condition))
    with open(file_name, "r") as f:
        line = f.readline()
        if line[0] == "#":
            fpocket_param = json.loads(line[1:])
            line = f.readline()
        else :
            fpocket_param = fpocket_default_param
        if not line.strip().split() == pickpocket_header:
             raise ValueError("File {} is not a pickpocket extraction output.".format(file_name))
        line = f.readline()
        while line:
            arr = line.split()
            ids.append([arr[0], arr[1]])
            f1.append(float(arr[3]))
            f2.append(float(arr[4]))
            if condition == "and":
                if f1[-1] >= f1_thr and f2[-1] >= f2_thr:
                    Y.append(1)
                else:
                    Y.append(0)
            else:
                if f1[-1] >= f1_thr or f2[-1]  >= f2_thr:
                    Y.append(1)
                else:
                    Y.append(0)
            x=[]
            for v in range(5, len(arr)):
                x.append(float(arr[v]))
            X.append(x)
            line = f.readline()
    return { "X": np.array(X), "Y": Y , "ids": ids, "param": fpocket_param , "f1":  f1, "f2" : f2 }

def plot_results(input_file,out_file, positive_list):
    data = import_data(input_file)
    pdbs={}
    
    for idx, id in enumerate(data["ids"]):
        if not id[0] in pdbs.keys():
            pdbs[id[0]]={"f1":0, "f2": 0, "Y" : 0, "pockets_p" : 0 , "pockets_n" : 0 }
        for k in ["f1", "f2", "Y"]:
            if pdbs[id[0]][k] < data[k][idx]:
                pdbs[id[0]][k]=data[k][idx]
        if data["Y"][idx] == 0:
            pdbs[id[0]]["pockets_n"]+=1
        else:
            pdbs[id[0]]["pockets_p"]+=1
    ## [[TP],[FN],[TN],[FP]]
    f1=[[],[],[],[]]
    f2=[[],[],[],[]]
    pocket_n=[[],[],[],[]]
    pocket_p=[[],[],[],[]]
    for k in pdbs:
        i=0
        if k in positive_list:
            if pdbs[k]["Y"] == 0:
                i=1
        else:
            i=2
            if pdbs[k]["Y"] == 1:
                i=3
        f1[i].append(pdbs[k]["f1"])
        f2[i].append(pdbs[k]["f2"])
        pocket_n[i].append(pdbs[k]["pockets_n"])
        pocket_p[i].append(pdbs[k]["pockets_p"])
            

    pdf=PdfPages(out_file)     
    plt.plot(f1[0], f2[0], 'ob', label="TP")
    plt.plot(f1[1], f2[1], 'og', label="FN")
    plt.plot(f1[2], f2[2], 'sr', label="TN")
    plt.plot(f1[3], f2[3], 'sc', label="FP")
    plt.xlabel('f1')
    plt.ylabel('f2')
    plt.xlim(0,1)
    plt.ylim(0,1)
    plt.legend(bbox_to_anchor=(1, 1), loc='upper left',  fontsize='xx-small')
    plt.title("Highest f1 and f2 for each pdb")
    plt.savefig(pdf, format="pdf")
    plt.close()
    plt.xlim(0,1)
    plt.hist(f1, bins=10, color=["blue", "green", "red", "cyan"] , label=["TP","FN", "TN", "FP" ])
    plt.xlabel('f1')
    plt.ylabel('Count')
    plt.legend(bbox_to_anchor=(1, 1), loc='upper left',  fontsize='xx-small')
    plt.title("Distribution of the highest f1")
    plt.savefig(pdf, format="pdf")
    plt.close()
    plt.xlim(0,1)
    plt.hist(f2, bins=10, color=["blue", "green", "red", "cyan"] , label=["TP","FN", "TN", "FP" ])
    plt.xlabel('f2')
    plt.ylabel('Count')
    plt.legend(bbox_to_anchor=(1, 1), loc='upper left',  fontsize='xx-small')
    plt.title("Distribution of the highest f2")
    plt.savefig(pdf, format="pdf")
    plt.close()
    plt.hist(pocket_p, bins=100,
             color=["blue", "green", "red", "cyan"] , 
             label=["TP","FN", "TN", "FP" ])
    plt.xlabel('Number of positive pockets')
    plt.ylabel('Count')
    plt.legend(bbox_to_anchor=(1, 1), loc='upper left',  fontsize='xx-small')
    plt.title("Number of positive pockets for each pdb")
    plt.savefig(pdf, format="pdf")
    plt.close()
    plt.hist(pocket_n, bins=100,
             color=["blue", "green", "red", "cyan"] , 
             label=["TP","FN", "TN", "FP" ])
    plt.xlabel('Number of negative pockets')
    plt.ylabel('Count')
    plt.legend(bbox_to_anchor=(1, 1), loc='upper left',  fontsize='xx-small')
    plt.title("Number of negative pockets for each pdb")
    plt.savefig(pdf, format="pdf")
    plt.close()
    pdf.close()
    
def check_dependencies():
    proc = subprocess.Popen("fpocket", stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    stdout, stderr = proc.communicate()
    if stdout.decode().split("\n")[0] != "***** POCKET HUNTING BEGINS ***** ":
        print("fpocket not detected. Install it from https://netix.dl.sourceforge.net/project/fpocket/fpocket2.tar.gz")
        exit(1)
    proc = subprocess.Popen("stride", stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    stdout, stderr = proc.communicate()
    arr=stderr.decode().split("\n")
    if len(arr) < 3 or arr[1].strip() != "You must specify input file":
        print("stride not detected. Install it from http://webclu.bio.wzw.tum.de/stride/stride.tar.gz")
        exit(1)
    
