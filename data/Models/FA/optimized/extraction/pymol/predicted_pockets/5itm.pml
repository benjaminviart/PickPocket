load ../../../PDB/pdb5itm.ent
# predicted pocket number 0
select predicted_pocket_0, ( chain C and resi 5+8+18+6+10+7+16 )  or  ( chain A and resi 39+37 )  or  ( chain B and resi 24+23 ) 
set_color predicted_pk_0, [ 0, 255, 255 ] 
color predicted_pk_0 , predicted_pocket_0 
show spheres, predicted_pocket_0 
set sphere_scale , 0.3 , predicted_pocket_0 
set sphere_transparency , 0.1 , predicted_pocket_0 
# predicted pocket number 1
select predicted_pocket_1, ( chain F and resi 42+43+41 )  or  ( chain E and resi 45+36+47+38 )  or  ( chain A and resi 13+12 )  or  ( chain B and resi 22+16 ) 
set_color predicted_pk_1, [ 0, 255, 255 ] 
color predicted_pk_1 , predicted_pocket_1 
show spheres, predicted_pocket_1 
set sphere_scale , 0.3 , predicted_pocket_1 
set sphere_transparency , 0.1 , predicted_pocket_1 
# predicted pocket number 2
select predicted_pocket_2, ( chain F and resi 45+41+40+38 )  or  ( chain B and resi 5+10+8+7+6+16 )  or  ( chain E and resi 41+45+40+38 )  or  ( chain A and resi 14 ) 
set_color predicted_pk_2, [ 0, 255, 255 ] 
color predicted_pk_2 , predicted_pocket_2 
show spheres, predicted_pocket_2 
set sphere_scale , 0.3 , predicted_pocket_2 
set sphere_transparency , 0.1 , predicted_pocket_2 
# predicted pocket number 3
select predicted_pocket_3, ( chain A and resi 40+41+42+39 )  or  ( chain C and resi 12+29+11+10+14 )  or  ( chain D and resi 14+10+11 ) 
set_color predicted_pk_3, [ 0, 255, 255 ] 
color predicted_pk_3 , predicted_pocket_3 
show spheres, predicted_pocket_3 
set sphere_scale , 0.3 , predicted_pocket_3 
set sphere_transparency , 0.1 , predicted_pocket_3 
# predicted pocket number 4
select predicted_pocket_4, ( chain A and resi 14+30+29+12 )  or  ( chain E and resi 40+38 )  or  ( chain B and resi 10+8+9+11 )  or  ( chain F and resi 41 ) 
set_color predicted_pk_4, [ 0, 255, 255 ] 
color predicted_pk_4 , predicted_pocket_4 
show spheres, predicted_pocket_4 
set sphere_scale , 0.3 , predicted_pocket_4 
set sphere_transparency , 0.1 , predicted_pocket_4 
# predicted pocket number 5
select predicted_pocket_5, ( chain C and resi 29+28 )  or  ( chain D and resi 13+12 )  or  ( chain B and resi 32+31+28+48+26 ) 
set_color predicted_pk_5, [ 0, 255, 255 ] 
color predicted_pk_5 , predicted_pocket_5 
show spheres, predicted_pocket_5 
set sphere_scale , 0.3 , predicted_pocket_5 
set sphere_transparency , 0.1 , predicted_pocket_5 
# predicted pocket number 6
select predicted_pocket_6, ( chain A and resi 11+13+12 )  or  ( chain F and resi 4 )  or  ( chain E and resi 47+34 )  or  ( chain B and resi 28+29 ) 
set_color predicted_pk_6, [ 0, 255, 255 ] 
color predicted_pk_6 , predicted_pocket_6 
show spheres, predicted_pocket_6 
set sphere_scale , 0.3 , predicted_pocket_6 
set sphere_transparency , 0.1 , predicted_pocket_6 
select TP, true_pocket* and predicted_pocket*
color green, TP
