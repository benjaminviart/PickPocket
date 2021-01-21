## TODO: header

import numpy as np
import os
import logging
import stat
import json
from Bio.PDB import *
import subprocess

import multiprocessing as mp
import warnings
from Bio import BiopythonWarning
from multiprocessing.pool import ThreadPool

warnings.simplefilter('ignore', BiopythonWarning)
logging.getLogger("Bio").setLevel(logging.ERROR)


from pickpocket.utils import *
 

import os, contextlib

def supress_stdout(func):
    def wrapper(*a, **ka):
        with open(os.devnull, 'w') as devnull:
            with contextlib.redirect_stdout(devnull):
                func(*a, **ka)
    return wrapper




class NonHetSelect(Select):
    def accept_residue(self, residue):
        return 1 if residue.id[0] == " " else 0


class PickPocket():
    def __init__(self, pdb_dir, pdb_list, ligand_list, pymol_dir=None, info_dir = None, threads = 1):
        '''
        Initialize pickPocket
        :param pdb_dir:
        :param ligand_list:
        :param distance:
        '''
        ## Init arguments
        self.pdb_dir = pdb_dir
        self.pdb_list = pdb_list
        self.ligand_list = ligand_list
        self.threads = threads
        ## Init variables
        self.ligand_codes = [] 
        self.redundancy= {}
        self.pdbs=[]
        
        if not os.path.exists(self.pdb_dir):
            os.makedirs(self.pdb_dir)
        self._pymol_dir = pymol_dir
        if self._pymol_dir != None: 
            if not os.path.exists(self._pymol_dir):
                os.makedirs(self._pymol_dir)
        self._info_dir=info_dir
        if self._info_dir != None: 
            if not os.path.exists(self._info_dir):
                os.makedirs(self._info_dir)
        ## Init utils
        self._pdbl = PDBList()
        self._pdbp = PDBParser()
        self._pdbio = PDBIO()
        ## Init methods
        self._read_ligand_list()
        self._read_pdb_list()
        self._prepare_pdb_dir()
        self.fpocket_param = None
        self.stride_results=[]
        self.fpocket_results=[]
    
    ### Structures first process, common for optimization and extract
    
    def process_structures(self, distance=5 , rms_thr=15, optimization = True):
        self.optimization=optimization
        self.distance = distance
        self.rms_thr = rms_thr
        self._optimization_pockets_atoms=[None for _ in self.pdbs]
        self._optimization_pockets=[None for _ in self.pdbs]
        self._struct_ligand_id=[None for _ in self.pdbs]
        self._missing_pdbs = [False for _ in self.pdbs]
        self._positive_pdbs=[False for _ in self.pdbs]
        self._negative_pdbs=[False for _ in self.pdbs]
        self._optimization_pdbs=[False for _ in self.pdbs]
        self._positive_pocket_residues=[None for _ in self.pdbs]
        self.ligands={}
        self.redundancy = {}
        self.unlisted_ligands = {}
        if self._pymol_dir != None:
            if not os.path.exists("{}/true_pockets/".format(self._pymol_dir)):
                os.makedirs("{}/true_pockets/".format(self._pymol_dir))
        for idx in range(len(self.pdbs)):
            self._process_pdb(idx)
        if self._info_dir != None:
            self._write_infos()
    
    def get_optimization_pockets(self):
        out=[]
        for p in self._optimization_pockets:
            if p!=None:
                out.append(p)
        return out
        
    def _process_pdb(self, idx):
        pdb_id=self.pdbs[idx]
        fname="{}/pdb{}.ent".format(self.pdb_dir, pdb_id)
        if not os.path.isfile(fname):
            self._missing_pdbs[idx]=True
            return
        struct = self._pdbp.get_structure(pdb_id, fname)
        if not os.path.isfile(fname+"_noHet.pdb"):
            self._remove_hetatm(struct, fname+"_noHet.pdb")
        res_list = Selection.unfold_entities(struct, "R")
        nohet = []
        het = []
        for res in res_list:
            self._assign_residue(res, het, nohet)
        ns = NeighborSearch(nohet)
        pocket_l, pocket_atms = self._treat_het(het, ns)
        self._struct_ligand_id[idx]=get_uids( het )
        self._positive_pocket_residues[idx]=pocket_l
        if len(pocket_l) == 0:
            self._negative_pdbs[idx]=True
        else:
            self._positive_pdbs[idx]=True
            if self._pymol_dir != None:
                self.write_pymol_pocket("{}/true_pockets/{}".format(self._pymol_dir, pdb_id), fname, self._struct_ligand_id[idx],self._positive_pocket_residues[idx])
            if self.optimization:
                self._treat_for_opt(idx, pocket_atms, pocket_l, pdb_id)   
                
    def _assign_residue(self, res, het, nohet):
        if res.id[0] == ' ':
            if res.id[2] == ' ': ## Ignore disorder
                nohet.extend(Selection.unfold_entities(res, "A"))
        else:
            if "_" in res.id[0]:
                l_id=res.id[0].split("_")[1].strip()
                if l_id in self.ligand_codes:
                    het.append(res)
                    if not l_id in self.ligands:
                        self.ligands[l_id]=0 
                    self.ligands[l_id]+=1
                else:
                    if not l_id in self.unlisted_ligands:
                        self.unlisted_ligands[l_id]=0
                    self.unlisted_ligands[l_id]+=1
    
    def _treat_het(self, het, ns):
        pocket_l=[]
        pocket_atms=[]
        for h in het:
            residues = [set()]
            all_atm=set()
            for a in h:
                pocket_res=ns.search(center=a.coord, radius=self.distance, level="R")
                all_atm|= set(Selection.unfold_entities(pocket_res, "A"))
                residues.append(set(get_uids(pocket_res)))
                residues[0] |= residues[len(residues)-1]
            if len(residues) > 1:
                pocket_l.append(residues)
                pocket_atms.append(all_atm)
        return (pocket_l, pocket_atms)
    
    def _check_redundancy(self, pocket_atms):
        redundant=-1
        to_discard=None
        for p in pocket_atms:
            for idx, o_p in enumerate(self._optimization_pockets_atoms):
                if o_p != None:
                    for o in o_p:
                        if len(o) == len(p):
                            sup = Superimposer()
                            sup.set_atoms(list(p), list(o))
                            if sup.rms < self.rms_thr:
                                redundant=idx
                                if len(o_p) < len(pocket_atms):
                                    to_discard=idx
                                break
            if redundant!=-1:
                break
        return (redundant, to_discard)
    
    def _treat_for_opt(self,idx, pocket_atms, pocket_l, pdb_id):
        redundant, to_discard = self._check_redundancy(pocket_atms)
        if to_discard != None:
            redundant = -1
            if self.redundancy.__contains__(self.pdbs[to_discard]):
                self.redundancy[pdb_id]=self.redundancy[self.pdbs[to_discard]]
                del self.redundancy[self.pdbs[to_discard]]
            else:
                self.redundancy[pdb_id]= []
            self.redundancy[pdb_id].append(self.pdbs[to_discard])
            self._optimization_pockets_atoms[to_discard]=None
            self._optimization_pockets[to_discard]=None
            self._optimization_pdbs[to_discard]=False
        if redundant == -1:
            self._optimization_pockets_atoms[idx]=pocket_atms
            self._optimization_pockets[idx]=pocket_l
            self._optimization_pdbs[idx]=True
        else:
            if not self.pdbs[redundant] in self.redundancy.keys():
                self.redundancy[self.pdbs[redundant]]=[]
            self.redundancy[self.pdbs[redundant]].append(pdb_id) 
    ### End methods for first structure process
    
    ### External software methods
    def _set_fpocket_param(self, param):
        if param != None :
            if type(param) == str:
                with open(param , "r") as f:
                    fpocket_param=json.load(f)
            elif type(param) == dict:
                fpocket_param = param
            else:
                raise ValueError("Fpocket parameter has to be a dictionary or a json file.")
            if "parameters" in fpocket_param.keys():
                fpocket_param = fpocket_param["parameters"]
            for k in fpocket_default_param.keys():
                if k not in fpocket_param.keys():
                    fpocket_param[k]=fpocket_default_param[k]
        else:
            fpocket_param = fpocket_default_param
        for k in fpocket_param:
            if type(fpocket_param[k]) != str:
                fpocket_param[k]=fpocket_arg_formatter[k].format(fpocket_param[k])
        self.fpocket_param = fpocket_param
        
    
    def run_fpocket(self, param, out_dir):
        self._set_fpocket_param(param)
        os.makedirs("{}/fpocket/".format(out_dir), exist_ok=True)
        args= []
        for pdb_id in self.pdbs:
            fname="{}/pdb{}.ent_noHet.pdb".format(self.pdb_dir, pdb_id)
            odir= "{}/fpocket/".format(out_dir)
            args.append((pdb_id, fname, odir, self.fpocket_param.copy()))
        pool = ThreadPool(processes=self.threads)
        self.fpocket_results = pool.starmap(fpocket, args)
        pool.close()
        if self._pymol_dir!=None:
            if not os.path.exists("{}/predicted_pockets".format(self._pymol_dir)):
                os.makedirs("{}/predicted_pockets".format(self._pymol_dir))
            for idx, res in enumerate(self.fpocket_results):
                pdb_id=self.pdbs[idx]
                self.write_pymol_pocket("{}/predicted_pockets/{}".format(self._pymol_dir,pdb_id),
                                        "{}/pdb{}.ent".format(self.pdb_dir, pdb_id), 
                                        self._struct_ligand_id[idx] , 
                                        self._positive_pocket_residues[idx] ,
                                        res.get_pockets_ids() )
        
    def run_stride(self, out_dir):
        os.makedirs("{}/stride/".format(out_dir), exist_ok=True)
        args=[]
        for pdb_id in self.pdbs:
            fname="{}/pdb{}.ent_noHet.pdb".format(self.pdb_dir, pdb_id)
            odir= "{}/stride/".format(out_dir)
            args.append((pdb_id, fname, odir))
        pool = ThreadPool(processes=self.threads)
        self.stride_results = pool.starmap(stride, args)
        pool.close()
    ### End External software methods
    
    
    ### Extraction methods
    
    def print_table(self, out_dir):
        if len(self.stride_results) == 0 or len(self.stride_results) != len(self.fpocket_results):
            raise ValueError("You need to run stride and fpocket first!")
        with open("{}/results.tsv".format(out_dir), "w") as ofs:
            ofs.write("\t".join(pickpocket_header)+"\n")
            for idx, fpr in enumerate(self.fpocket_results):
                if fpr != None:
                    for pocket in fpr.pockets:
                        stride_stats= self.stride_results[idx].get_residues_stats(pocket.get_residues_ids())
                        atm_stats = pocket.get_atm_stats()
                        line="{}\t{}\t{}".format(fpr.pdb_id, pocket.pocket_number, pocket.get_position() )
                        if self._positive_pdbs[idx]:
                            perc_res, perc_lig = get_best_pocket_coverage(pocket.get_residues_ids(), self._positive_pocket_residues[idx])
                            line+="\t{:.2f}\t{:.2f}".format(perc_res, perc_lig)
                        else:
                            line+="\t0\t0"
                        for info in pocket.info:
                            line+="\t{}".format(info)
                        for ss in stride_one_letter_ss:
                            line+="\t{:.3}".format(stride_stats[ss])
                        for atm in "CNOPS":
                            line+="\t{:.3}".format(atm_stats[atm])
                        ofs.write(line+"\n")
    
    
    ### General methods
                        
    def get_ids(self, pdb_class="all"):                
        mask=None
        out=[]
        if pdb_class == "positive":
            mask=self._positive_pdbs
        elif pdb_class=="negative":
            mask=self._negative_pdbs
        elif pdb_class=="missing":
            mask=self._missing_pdbs
        elif pdb_class=="optimized":
            mask=self._optimization_pdbs
        elif pdb_class=="all":
            return self.pdbs
        else:
            raise ValueError("pdb_class has to be positive, negative, optimized, missing or all")
        for idx, id in enumerate(self.pdbs):
            if mask[idx]:
                out.append(id)
        return out
                
    
    def _write_infos(self):
        basedir="{}/infos/".format(self._info_dir)
        if not os.path.exists(basedir):
            os.makedirs(basedir)
        with open("{}/pdb_total.ls".format(basedir), "w") as f:
            for pdb in self.get_ids("all"):
                f.write(pdb+"\n")
        with open("{}/pdb_positive.ls".format(basedir), "w") as f:
            for pdb in self.get_ids("positive"):
                f.write(pdb+"\n")
        with open("{}/pdb_negative.ls".format(basedir), "w") as f:
            for pdb in self.get_ids("negative"):
                f.write(pdb+"\n")
        with open("{}/ligands.ls".format(basedir), "w") as f:
            for lig in self.ligands.keys():
                f.write("{}\t{}\n".format(lig, self.ligands[lig]))
        with open("{}/unlisted_ligands.ls".format(basedir), "w") as f:
            for lig in self.unlisted_ligands.keys():
                f.write("{}\t{}\n".format(lig, self.unlisted_ligands[lig]))
        if self.optimization:
            with open("{}/pdb_redundant.ls".format(basedir), "w") as f:
                f.write("kept\tremoved\n")
                for k in self.redundancy:
                    f.write("{}\t{}\n".format(k, ";".join(self.redundancy[k])))
            with open("{}/pdb_optimization.ls".format(basedir), "w") as f:
                for pdb in self.get_ids("optimized"):
                    f.write(pdb+"\n")
                
    def _read_ligand_list(self):
        if not os.path.isfile(self.ligand_list):
            raise FileNotFoundError("Error! {} ligand file doesn't exists".format(self.ligand_list))
        with open(self.ligand_list) as infile:
            for line in infile:
                self.ligand_codes.append(line.strip().split()[0])
        if len(self.ligand_codes) == 0:
            raise SyntaxError("No ligands found")
    
    def get_files_list(self, pdb_class="all", nohet=False):
        if nohet:
            base_path="{}/pdb{}.ent_noHet.pdb"
        else:
            base_path="{}/pdb{}.ent"
        out=[]
        for id in self.get_ids(pdb_class):
            out.append(base_path.format(self.pdb_dir, id))
        return out
        
    def _remove_hetatm(self, pdb, ofname):
        self._pdbio.set_structure(pdb)
        self._pdbio.save(ofname, NonHetSelect())
    
    def _read_pdb_list(self):
        if not os.path.isfile(self.pdb_list):
            raise FileNotFoundError("Error! {} pdb list file doesn't exists".format(self.pdb_list))
        with open(self.pdb_list) as infile:
            for line in infile:
                pdb_id=line.strip().split()[0].lower()
                if len(pdb_id) == 4:
                    self.pdbs.append(pdb_id)
        self._missing_pdbs = [False for _ in self.pdbs]
        self._positive_pdbs=[False for _ in self.pdbs]
        self._negative_pdbs=[False for _ in self.pdbs]
        self._optimization_pdbs=[False for _ in self.pdbs]
    
    def _get_pymol_pockets(self, pockets, prefix, color):
        out=""
        for idx , res in enumerate(pockets):
            out+="# {} pocket number {}\n".format(prefix, idx)
            residues = {}
            for r in res[0]:
                tmp=r.split("_")
                if tmp[0] not in residues:
                    residues[tmp[0]]=[]
                residues[tmp[0]].append(tmp[1])
            if len(residues.keys()) == 1:
                k=list(residues.keys())[0]
                out+="select {}_pocket_{}, chain {} and resi {}\n".format(prefix, idx, k, "+".join(residues[k]))
            else:
                line = "select {}_pocket_{},".format(prefix, idx)
                for i, k in enumerate(list(residues.keys())):
                    if i > 0:
                        line+=" or "
                    line+=" ( chain {} and resi {} ) ".format(k, "+".join(residues[k]))
                out+=line+"\n"
            out+="set_color {}_pk_{}, [ {}, {}, {} ] \n".format(prefix,idx,color[0], color[1], color[2])
            out+="color {}_pk_{} , {}_pocket_{} \n".format(prefix,idx, prefix,idx)
            out+="show spheres, {}_pocket_{} \n".format(prefix,idx)
            out+="set sphere_scale , 0.3 , {}_pocket_{} \n".format(prefix,idx)
            out+="set sphere_transparency , 0.1 , {}_pocket_{} \n".format(prefix, idx)
        return out
    
    def write_pymol_pocket(self, out_file, structure_file, ligands, true_pockets, predicted_pockets=None ):
        with open(out_file+".pml", "w") as f:
            f.write("load {}\n".format(os.path.relpath(structure_file, start=os.path.dirname(out_file))))
            if ligands != None and len(ligands) > 0:
                for idx, lig in enumerate(ligands):
                    f.write("# ligand_{}\n".format(idx))
                    chain_num = lig.split("_")
                    f.write("select ligand_{}, chain {} and resi {} \n".format(idx, chain_num[0], chain_num[1]))
                    f.write("set_color lg_{}, [ {}, {}, {} ] \n".format(idx, 255 , 0 , 0))
                    f.write("color lg_{} , ligand_{} \n".format(idx, idx))
                    f.write("show spheres, ligand_{} \n".format(idx))
                    f.write("set sphere_scale , 1 , ligand_{} \n".format(idx))
                    f.write("set sphere_transparency , 0.1 , ligand_{} \n".format(idx))
            f.write(self._get_pymol_pockets(true_pockets, "true", [0,0,255]))
            if predicted_pockets != None:
                f.write(self._get_pymol_pockets(predicted_pockets, "predicted", [0,255,255]))
        with open(out_file+".sh", "w") as f:
            f.write("#!/bin/bash\ncd {}\npymol {}\n".format("${BASH_SOURCE%/*}", os.path.relpath(out_file+".pml", start=os.path.dirname(out_file))))
        st = os.stat(out_file+".sh")
        os.chmod(out_file+".sh", st.st_mode | stat.S_IEXEC)
    @supress_stdout
    def _downlaod_pdbs(self):
        self._pdbl.download_pdb_files(self.pdbs, file_format="pdb" ,pdir = self.pdb_dir , obsolete=False)
        
    def _prepare_pdb_dir(self):
        if not self.pdb_dir or len(self.pdb_dir) == 0:
            raise ValueError("Error! give a pdb directory")
        if len(self.ligand_codes) == 0:
            raise ValueError("Error! No ligands found")
        if len(self.pdbs) == 0:
            raise ValueError("Error! No pdb ids found")
        self._downlaod_pdbs()



        