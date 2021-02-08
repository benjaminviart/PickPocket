load ../../../PDB/pdb6ogh.ent
# ligand_0
select ligand_0, chain A and resi 204 
set_color lg_0, [ 255, 0, 0 ] 
color lg_0 , ligand_0 
show spheres, ligand_0 
set sphere_scale , 1 , ligand_0 
set sphere_transparency , 0.1 , ligand_0 
# true pocket number 0
select true_pocket_0, chain A and resi 15+32+50+119+71+120+72+37+105+47+116+107+89+51+104+56+11+46+108+63+35+88+54+85+68
set_color true_pk_0, [ 0, 0, 255 ] 
color true_pk_0 , true_pocket_0 
show spheres, true_pocket_0 
set sphere_scale , 0.3 , true_pocket_0 
set sphere_transparency , 0.1 , true_pocket_0 
