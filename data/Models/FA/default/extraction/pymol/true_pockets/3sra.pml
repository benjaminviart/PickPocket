load ../../../PDB/pdb3sra.ent
# ligand_0
select ligand_0, chain B and resi 763 
set_color lg_0, [ 255, 0, 0 ] 
color lg_0 , ligand_0 
show spheres, ligand_0 
set sphere_scale , 1 , ligand_0 
set sphere_transparency , 0.1 , ligand_0 
# true pocket number 0
select true_pocket_0, ( chain A and resi 169+170+166 )  or  ( chain B and resi 240+266+269+238+217+284+374+285+248+378+286+273+239+485 ) 
set_color true_pk_0, [ 0, 0, 255 ] 
color true_pk_0 , true_pocket_0 
show spheres, true_pocket_0 
set sphere_scale , 0.3 , true_pocket_0 
set sphere_transparency , 0.1 , true_pocket_0 
