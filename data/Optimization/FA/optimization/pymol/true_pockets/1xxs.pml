load ../../../PDB/pdb1xxs.ent
# ligand_0
select ligand_0, chain A and resi 201 
set_color lg_0, [ 255, 0, 0 ] 
color lg_0 , ligand_0 
show spheres, ligand_0 
set sphere_scale , 1 , ligand_0 
set sphere_transparency , 0.1 , ligand_0 
# ligand_1
select ligand_1, chain A and resi 202 
set_color lg_1, [ 255, 0, 0 ] 
color lg_1 , ligand_1 
show spheres, ligand_1 
set sphere_scale , 1 , ligand_1 
set sphere_transparency , 0.1 , ligand_1 
# ligand_2
select ligand_2, chain A and resi 205 
set_color lg_2, [ 255, 0, 0 ] 
color lg_2 , ligand_2 
show spheres, ligand_2 
set sphere_scale , 1 , ligand_2 
set sphere_transparency , 0.1 , ligand_2 
# ligand_3
select ligand_3, chain B and resi 203 
set_color lg_3, [ 255, 0, 0 ] 
color lg_3 , ligand_3 
show spheres, ligand_3 
set sphere_scale , 1 , ligand_3 
set sphere_transparency , 0.1 , ligand_3 
# ligand_4
select ligand_4, chain B and resi 204 
set_color lg_4, [ 255, 0, 0 ] 
color lg_4 , ligand_4 
show spheres, ligand_4 
set sphere_scale , 1 , ligand_4 
set sphere_transparency , 0.1 , ligand_4 
# ligand_5
select ligand_5, chain B and resi 206 
set_color lg_5, [ 255, 0, 0 ] 
color lg_5 , ligand_5 
show spheres, ligand_5 
set sphere_scale , 1 , ligand_5 
set sphere_transparency , 0.1 , ligand_5 
# true pocket number 0
select true_pocket_0, chain A and resi 29+9+28+18+48+22+49+3+6+30+2+102+45+69+5
set_color true_pk_0, [ 0, 0, 255 ] 
color true_pk_0 , true_pocket_0 
show spheres, true_pocket_0 
set sphere_scale , 0.3 , true_pocket_0 
set sphere_transparency , 0.1 , true_pocket_0 
# true pocket number 1
select true_pocket_1, chain A and resi 52+49+19+24+5+30+2+69+23+31
set_color true_pk_1, [ 0, 0, 255 ] 
color true_pk_1 , true_pocket_1 
show spheres, true_pocket_1 
set sphere_scale , 0.3 , true_pocket_1 
set sphere_transparency , 0.1 , true_pocket_1 
# true pocket number 2
select true_pocket_2, ( chain B and resi 7+11+10+77+15 )  or  ( chain A and resi 11+75+77+10+7 ) 
set_color true_pk_2, [ 0, 0, 255 ] 
color true_pk_2 , true_pocket_2 
show spheres, true_pocket_2 
set sphere_scale , 0.3 , true_pocket_2 
set sphere_transparency , 0.1 , true_pocket_2 
# true pocket number 3
select true_pocket_3, chain B and resi 29+28+2+49+22+30+18+48+45+3+6+9
set_color true_pk_3, [ 0, 0, 255 ] 
color true_pk_3 , true_pocket_3 
show spheres, true_pocket_3 
set sphere_scale , 0.3 , true_pocket_3 
set sphere_transparency , 0.1 , true_pocket_3 
# true pocket number 4
select true_pocket_4, chain B and resi 30+52+31+69+2+49
set_color true_pk_4, [ 0, 0, 255 ] 
color true_pk_4 , true_pocket_4 
show spheres, true_pocket_4 
set sphere_scale , 0.3 , true_pocket_4 
set sphere_transparency , 0.1 , true_pocket_4 
# true pocket number 5
select true_pocket_5, ( chain B and resi 7+11+10+75+3+77+15 )  or  ( chain A and resi 15+11+77+10 ) 
set_color true_pk_5, [ 0, 0, 255 ] 
color true_pk_5 , true_pocket_5 
show spheres, true_pocket_5 
set sphere_scale , 0.3 , true_pocket_5 
set sphere_transparency , 0.1 , true_pocket_5 