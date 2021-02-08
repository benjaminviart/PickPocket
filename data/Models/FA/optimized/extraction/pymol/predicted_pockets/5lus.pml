load ../../../PDB/pdb5lus.ent
# predicted pocket number 0
select predicted_pocket_0, ( chain J and resi 19+23+20 )  or  ( chain E and resi 38+39+42+37+34 )  or  ( chain H and resi 50+40+44+53+43+49+47+46 )  or  ( chain I and resi 64+65+61+62+58 )  or  ( chain F and resi 47+48 ) 
set_color predicted_pk_0, [ 0, 255, 255 ] 
color predicted_pk_0 , predicted_pocket_0 
show spheres, predicted_pocket_0 
set sphere_scale , 0.3 , predicted_pocket_0 
set sphere_transparency , 0.1 , predicted_pocket_0 
# predicted pocket number 1
select predicted_pocket_1, ( chain C and resi 42+39+38+37+34 )  or  ( chain D and resi 48+47 )  or  ( chain I and resi 41 )  or  ( chain A and resi 61+64+65 ) 
set_color predicted_pk_1, [ 0, 255, 255 ] 
color predicted_pk_1 , predicted_pocket_1 
show spheres, predicted_pocket_1 
set sphere_scale , 0.3 , predicted_pocket_1 
set sphere_transparency , 0.1 , predicted_pocket_1 
# predicted pocket number 2
select predicted_pocket_2, ( chain H and resi 41+44+45 )  or  ( chain G and resi 45 )  or  ( chain I and resi 55+51+61+54+58 ) 
set_color predicted_pk_2, [ 0, 255, 255 ] 
color predicted_pk_2 , predicted_pocket_2 
show spheres, predicted_pocket_2 
set sphere_scale , 0.3 , predicted_pocket_2 
set sphere_transparency , 0.1 , predicted_pocket_2 
# predicted pocket number 3
select predicted_pocket_3, ( chain G and resi 46+44+50+49+51+47 )  or  ( chain A and resi 44+48+47+49+50+51+46 ) 
set_color predicted_pk_3, [ 0, 255, 255 ] 
color predicted_pk_3 , predicted_pocket_3 
show spheres, predicted_pocket_3 
set sphere_scale , 0.3 , predicted_pocket_3 
set sphere_transparency , 0.1 , predicted_pocket_3 
# predicted pocket number 4
select predicted_pocket_4, ( chain E and resi 49+47+50+44+51+46 )  or  ( chain C and resi 44+46+49+47+50 ) 
set_color predicted_pk_4, [ 0, 255, 255 ] 
color predicted_pk_4 , predicted_pocket_4 
show spheres, predicted_pocket_4 
set sphere_scale , 0.3 , predicted_pocket_4 
set sphere_transparency , 0.1 , predicted_pocket_4 
# predicted pocket number 5
select predicted_pocket_5, ( chain A and resi 37+39+42+38+34 )  or  ( chain B and resi 47+48 )  or  ( chain C and resi 64+65 ) 
set_color predicted_pk_5, [ 0, 255, 255 ] 
color predicted_pk_5 , predicted_pocket_5 
show spheres, predicted_pocket_5 
set sphere_scale , 0.3 , predicted_pocket_5 
set sphere_transparency , 0.1 , predicted_pocket_5 
# predicted pocket number 6
select predicted_pocket_6, ( chain I and resi 37+38+34+39+42 )  or  ( chain E and resi 65+64 )  or  ( chain J and resi 47+48 ) 
set_color predicted_pk_6, [ 0, 255, 255 ] 
color predicted_pk_6 , predicted_pocket_6 
show spheres, predicted_pocket_6 
set sphere_scale , 0.3 , predicted_pocket_6 
set sphere_transparency , 0.1 , predicted_pocket_6 
# predicted pocket number 7
select predicted_pocket_7, ( chain I and resi 37+40+36+38+56+39 )  or  ( chain E and resi 57+53+54+60+58+61 )  or  ( chain C and resi 45+41 ) 
set_color predicted_pk_7, [ 0, 255, 255 ] 
color predicted_pk_7 , predicted_pocket_7 
show spheres, predicted_pocket_7 
set sphere_scale , 0.3 , predicted_pocket_7 
set sphere_transparency , 0.1 , predicted_pocket_7 
# predicted pocket number 8
select predicted_pocket_8, ( chain E and resi 63+33+25+59+36+29 )  or  ( chain I and resi 63+36+29+33+59 ) 
set_color predicted_pk_8, [ 0, 255, 255 ] 
color predicted_pk_8 , predicted_pocket_8 
show spheres, predicted_pocket_8 
set sphere_scale , 0.3 , predicted_pocket_8 
set sphere_transparency , 0.1 , predicted_pocket_8 
# predicted pocket number 9
select predicted_pocket_9, ( chain I and resi 60+53+40+56 )  or  ( chain C and resi 45+41 )  or  ( chain E and resi 60+57+40+56+53 ) 
set_color predicted_pk_9, [ 0, 255, 255 ] 
color predicted_pk_9 , predicted_pocket_9 
show spheres, predicted_pocket_9 
set sphere_scale , 0.3 , predicted_pocket_9 
set sphere_transparency , 0.1 , predicted_pocket_9 
select TP, true_pocket* and predicted_pocket*
color green, TP
