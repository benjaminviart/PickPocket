import os
from Bio.PDB import *
import subprocess
import logging

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
stride_one_letter_ss = ["H", "G", "I", "E", "B", "T", "C"]
    
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
                   "stride_T",
                   "stride_C",
                   "atm_C",
                   "atm_N",
                   "atm_O",
                   "atm_P",
                   "atm_S"
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
        self.atoms.append({ "id": int(line[6:11].strip()),
              "atom" : line[76:78].strip(),
              "res" : line[17:20].strip(),
              "chain" : line[21],
              "resn" : line[22:26].strip(),
              "X" : float(line[30:38].strip()),
              "Y" : float(line[38:46].strip()),
              "Z" : float(line[46:54].strip())
            })

    def get_atm_stats(self):
        stats = {}
        for atm in "CNOPS":
            stats[atm] = 0
        for atm in self.atoms:
            stats[atm["atom"]] += 1
        tot = len(self.atoms)
        for atm in "CNOPS":
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
        raise err
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
        for r in residues:
            if not r in self.results.keys():
                logging.error("ERROR! Stride result for pdb {} doesn't contains residue {}".format(self.pdb_id, r))
            else:
                stats[self.results[r]["ss"]] += 1
        for k in stats:
            stats[k] /= tot
        return stats

