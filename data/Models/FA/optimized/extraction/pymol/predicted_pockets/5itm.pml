load ../../../PDB/pdb5itm.ent
# predicted pocket number 0
select predicted_pocket_0, ( chain B and resi 24+23 )  or  ( chain C and resi 18+10+16+5+7+8+6 )  or  ( chain A and resi 37+39 ) 
set_color predicted_pk_0, [ 0, 255, 255 ] 
color predicted_pk_0 , predicted_pocket_0 
show spheres, predicted_pocket_0 
set sphere_scale , 0.3 , predicted_pocket_0 
set sphere_transparency , 0.1 , predicted_pocket_0 
# predicted pocket number 1
select predicted_pocket_1, ( chain F and resi 42+43+41 )  or  ( chain E and resi 36+47+38+45 )  or  ( chain B and resi 16+22 )  or  ( chain A and resi 13+12 ) 
set_color predicted_pk_1, [ 0, 255, 255 ] 
color predicted_pk_1 , predicted_pocket_1 
show spheres, predicted_pocket_1 
set sphere_scale , 0.3 , predicted_pocket_1 
set sphere_transparency , 0.1 , predicted_pocket_1 
# predicted pocket number 2
select predicted_pocket_2, ( chain F and resi 40+45+38+41 )  or  ( chain A and resi 14 )  or  ( chain B and resi 16+6+7+8+10+5 )  or  ( chain E and resi 38+41+40+45 ) 
set_color predicted_pk_2, [ 0, 255, 255 ] 
color predicted_pk_2 , predicted_pocket_2 
show spheres, predicted_pocket_2 
set sphere_scale , 0.3 , predicted_pocket_2 
set sphere_transparency , 0.1 , predicted_pocket_2 
# predicted pocket number 3
select predicted_pocket_3, ( chain C and resi 10+12+11+14+29 )  or  ( chain D and resi 14+10+11 )  or  ( chain A and resi 39+40+42+41 ) 
set_color predicted_pk_3, [ 0, 255, 255 ] 
color predicted_pk_3 , predicted_pocket_3 
show spheres, predicted_pocket_3 
set sphere_scale , 0.3 , predicted_pocket_3 
set sphere_transparency , 0.1 , predicted_pocket_3 
# predicted pocket number 4
select predicted_pocket_4, ( chain B and resi 9+11+8+10 )  or  ( chain A and resi 30+14+29+12 )  or  ( chain E and resi 38+40 )  or  ( chain F and resi 41 ) 
set_color predicted_pk_4, [ 0, 255, 255 ] 
color predicted_pk_4 , predicted_pocket_4 
show spheres, predicted_pocket_4 
set sphere_scale , 0.3 , predicted_pocket_4 
set sphere_transparency , 0.1 , predicted_pocket_4 
# predicted pocket number 5
select predicted_pocket_5, ( chain B and resi 32+26+48+31+28 )  or  ( chain D and resi 12+13 )  or  ( chain C and resi 28+29 ) 
set_color predicted_pk_5, [ 0, 255, 255 ] 
color predicted_pk_5 , predicted_pocket_5 
show spheres, predicted_pocket_5 
set sphere_scale , 0.3 , predicted_pocket_5 
set sphere_transparency , 0.1 , predicted_pocket_5 
# predicted pocket number 6
select predicted_pocket_6, ( chain B and resi 29+28 )  or  ( chain A and resi 11+13+12 )  or  ( chain E and resi 47+34 )  or  ( chain F and resi 4 ) 
set_color predicted_pk_6, [ 0, 255, 255 ] 
color predicted_pk_6 , predicted_pocket_6 
show spheres, predicted_pocket_6 
set sphere_scale , 0.3 , predicted_pocket_6 
set sphere_transparency , 0.1 , predicted_pocket_6 
select TP, true_pocket* and predicted_pocket*
color green, TP
