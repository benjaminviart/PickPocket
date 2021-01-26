#!/usr/bin/env python3

import matplotlib.pyplot as plt
import gzip
import numpy as np

def read_pockets(fname):
    out={}
    with open(fname, "r")  as f:
        for line in f:
            if line[0]!="#":
                arr=[v.strip() for v in line.split("\t")]
                if not arr[0] in out:
                    out[arr[0]]=[]
                out[arr[0]].extend([ "{}_{}".format(arr[1], v.strip()) for v in arr[-1].split(",")])
    return out

def compare(biolip_file, extract_folder,   out_file):
    ligands=[]
    ligand_file="{}/info/ligands.ls".format(extract_folder)
    print("Reading ligand file...", end="")
    with open(ligand_file, "r") as f:
        for line in f:
            if len(line.strip()) > 1:
                ligands.append(line.split("\t")[0].strip())
    if len(ligands) < 1 :
        raise ValueError("Error! file {} doesn't contains ligands!".format(ligand_file))
    print("Done.")
    print("Reading pocket files...", end="")
    pred_pockets= read_pockets("{}/pockets.tsv".format(extract_folder))
    best_pockets= read_pockets("{}/info/pockets.tsv".format(extract_folder))
    pdbs=set(best_pockets.keys())
    print("Done.")
    print("Reading biolip file...", end="")
    biolip={}
    if biolip_file[-3:] ==".gz":
        f=gzip.open(biolip_file, "r")
    else:
        f=open(biolip_file, "r")
    for line in f:
      arr=[ v.strip() for v in line.split("\t")]
      if arr[4] in ligands:
          residues=[ "{}_{}".format(arr[1], v[1:].strip()) for v in arr[7].split() ]
          if not arr[0] in biolip:
              biolip[arr[0]]=[]
          biolip[arr[0]].extend(residues)
    f.close()
    print("Done.")
    
    biolip_pdbs=set(biolip.keys())
    nega=pdbs.difference(biolip_pdbs)
    if len(nega) > 0:
        print("There are {} pdbs in biolip without the ligand.".format(len(nega)))
    
    additional=biolip_pdbs.difference(pdbs)
    if len(additional) > 0:
        print("There are {} additional pdbs in biolip with those ligands. Consider to add them to your positive dataset.".format(len(additional)))
        for pdb in additional:
            print(pdb)
    
    stats={}
    print("Computing stats...")
    for pdb in pdbs:
        bl = set(biolip[pdb])
        be = set(best_pockets[pdb])
        pr = set(pred_pockets[pdb])
        stats[pdb]={ 
            "common_best" : len(bl.intersection(be)),
            "common_pred" : len(bl.intersection(pr)),
            "tot_pred" : len(pr),
            "tot_biolip" : len(bl),
            "tot_best" : len(be)
             }
    
    data = [[],[],[]]
    
    for pdb in stats:
        data[0].append(stats[pdb]["common_best"]/stats[pdb]["tot_biolip"])
        data[1].append(stats[pdb]["common_best"]/stats[pdb]["tot_best"])
        data[2].append(stats[pdb]["common_pred"]/stats[pdb]["tot_biolip"])
    
    plt.violinplot(data, showmeans=True, positions=[1,2,3]) 
    plt.plot((np.random.rand(len(data[0]))*0.5)+0.75 ,data[0], 'or', label="Common best / tot biolip" )
    plt.plot((np.random.rand(len(data[0]))*0.5)+1.75 ,data[1], 'og',  label="Common best / tot best" )
    plt.plot((np.random.rand(len(data[0]))*0.5)+2.75 ,data[2], 'ob', label="Common pred / tot biolip" )
    plt.legend()
    plt.savefig("{}.pdf".format(out_file))
    
    with open("{}_labels.tsv".format(out_file), "w") as ofs:
        with open("{}/pockets.tsv".format(extract_folder), "r")  as f:
            for line in f:
                if line[0]!="#":
                    arr=[v.strip() for v in line.split("\t")]
                    res=set([ "{}_{}".format(arr[1], v.strip()) for v in arr[-1].split(",")])
                    olabel="0"
                    if arr[0] in biolip:
                        if len(res.intersection(biolip[arr[0]])) > 1:
                            olabel="1"
                        else:
                            olabel="0"
                    ofs.write("{}\t{}\t{}\n".format(arr[0], arr[1], olabel))
    print("Done.")
    print("You can find a graph with the stats in {0}.pdf and the predicted pocket labels in {0}_labels.tsv\n\n".format(out_file))
            