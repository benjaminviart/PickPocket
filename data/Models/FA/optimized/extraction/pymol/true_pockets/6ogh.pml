load ../../../PDB/pdb6ogh.ent
# ligand_0
select ligand_0, chain A and resi 204 
set_color lg_0, [ 255, 0, 0 ] 
color lg_0 , ligand_0 
show spheres, ligand_0 
set sphere_scale , 1 , ligand_0 
set sphere_transparency , 0.1 , ligand_0 
# true pocket number 0
select true_pocket_0, chain A and resi 32+47+15+68+50+51+72+108+89+71+85+56+63+88+120+37+11+107+105+35+119+54+116+104+46
set_color true_pk_0, [ 0, 0, 255 ] 
color true_pk_0 , true_pocket_0 
show spheres, true_pocket_0 
set sphere_scale , 0.3 , true_pocket_0 
set sphere_transparency , 0.1 , true_pocket_0 
