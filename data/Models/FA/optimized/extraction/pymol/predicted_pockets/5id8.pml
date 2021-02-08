load ../../../PDB/pdb5id8.ent
# predicted pocket number 0
select predicted_pocket_0, ( chain A and resi 60+35+36+62+61+34 )  or  ( chain C and resi 114+55+38+123+119+56+130+116 ) 
set_color predicted_pk_0, [ 0, 255, 255 ] 
color predicted_pk_0 , predicted_pocket_0 
show spheres, predicted_pocket_0 
set sphere_scale , 0.3 , predicted_pocket_0 
set sphere_transparency , 0.1 , predicted_pocket_0 
# predicted pocket number 1
select predicted_pocket_1, ( chain B and resi 85+134+119+121+120+118+132 )  or  ( chain D and resi 61+60+128+59+58 ) 
set_color predicted_pk_1, [ 0, 255, 255 ] 
color predicted_pk_1 , predicted_pocket_1 
show spheres, predicted_pocket_1 
set sphere_scale , 0.3 , predicted_pocket_1 
set sphere_transparency , 0.1 , predicted_pocket_1 
# predicted pocket number 2
select predicted_pocket_2, ( chain C and resi 126+52+61+23+128+22+127+59+43+48 )  or  ( chain D and resi 34+39+37+95 ) 
set_color predicted_pk_2, [ 0, 255, 255 ] 
color predicted_pk_2 , predicted_pocket_2 
show spheres, predicted_pocket_2 
set sphere_scale , 0.3 , predicted_pocket_2 
set sphere_transparency , 0.1 , predicted_pocket_2 
# predicted pocket number 3
select predicted_pocket_3, ( chain D and resi 9+8+63+49 )  or  ( chain B and resi 123+119+56+38+114+55+116+130 ) 
set_color predicted_pk_3, [ 0, 255, 255 ] 
color predicted_pk_3 , predicted_pocket_3 
show spheres, predicted_pocket_3 
set sphere_scale , 0.3 , predicted_pocket_3 
set sphere_transparency , 0.1 , predicted_pocket_3 
# predicted pocket number 4
select predicted_pocket_4, ( chain D and resi 65+66+34+6+64+7+39+33+32+62 )  or  ( chain C and resi 126+129+106+107+127+131 ) 
set_color predicted_pk_4, [ 0, 255, 255 ] 
color predicted_pk_4 , predicted_pocket_4 
show spheres, predicted_pocket_4 
set sphere_scale , 0.3 , predicted_pocket_4 
set sphere_transparency , 0.1 , predicted_pocket_4 
# predicted pocket number 5
select predicted_pocket_5, ( chain C and resi 55+38+36+56 )  or  ( chain A and resi 33+62+61+64+63+34 ) 
set_color predicted_pk_5, [ 0, 255, 255 ] 
color predicted_pk_5 , predicted_pocket_5 
show spheres, predicted_pocket_5 
set sphere_scale , 0.3 , predicted_pocket_5 
set sphere_transparency , 0.1 , predicted_pocket_5 
# predicted pocket number 6
select predicted_pocket_6, chain B and resi 128+24+61+127+52+59+126+48+22+43+23
set_color predicted_pk_6, [ 0, 255, 255 ] 
color predicted_pk_6 , predicted_pocket_6 
show spheres, predicted_pocket_6 
set sphere_scale , 0.3 , predicted_pocket_6 
set sphere_transparency , 0.1 , predicted_pocket_6 
select TP, true_pocket* and predicted_pocket*
color green, TP
