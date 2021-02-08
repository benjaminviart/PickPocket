load ../../../PDB/pdb4r5r.ent
# predicted pocket number 0
select predicted_pocket_0, ( chain B and resi 39+58+59+41+38+40+60 )  or  ( chain A and resi 65+31+66+64+46 ) 
set_color predicted_pk_0, [ 0, 255, 255 ] 
color predicted_pk_0 , predicted_pocket_0 
show spheres, predicted_pocket_0 
set sphere_scale , 0.3 , predicted_pocket_0 
set sphere_transparency , 0.1 , predicted_pocket_0 
# predicted pocket number 1
select predicted_pocket_1, ( chain A and resi 30+46+29+31+62+64+63 )  or  ( chain B and resi 41+42+40 ) 
set_color predicted_pk_1, [ 0, 255, 255 ] 
color predicted_pk_1 , predicted_pocket_1 
show spheres, predicted_pocket_1 
set sphere_scale , 0.3 , predicted_pocket_1 
set sphere_transparency , 0.1 , predicted_pocket_1 
select TP, true_pocket* and predicted_pocket*
color green, TP
