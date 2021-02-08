load ../../../PDB/pdb3anp.ent
# ligand_0
select ligand_0, chain D and resi 1003 
set_color lg_0, [ 255, 0, 0 ] 
color lg_0 , ligand_0 
show spheres, ligand_0 
set sphere_scale , 1 , ligand_0 
set sphere_transparency , 0.1 , ligand_0 
# true pocket number 0
select true_pocket_0, ( chain D and resi 108+111+93+123+128+162+104+96+126+163+160 )  or  ( chain C and resi 168 ) 
set_color true_pk_0, [ 0, 0, 255 ] 
color true_pk_0 , true_pocket_0 
show spheres, true_pocket_0 
set sphere_scale , 0.3 , true_pocket_0 
set sphere_transparency , 0.1 , true_pocket_0 
