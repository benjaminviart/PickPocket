load ../../../PDB/pdb5ii6.ent
# predicted pocket number 0
select predicted_pocket_0, chain A and resi 142+52+146+55+57+139+94+92+54+140+145+96+138+89+143+53+59+144+50
set_color predicted_pk_0, [ 0, 255, 255 ] 
color predicted_pk_0 , predicted_pocket_0 
show spheres, predicted_pocket_0 
set sphere_scale , 0.3 , predicted_pocket_0 
set sphere_transparency , 0.1 , predicted_pocket_0 
select TP, true_pocket* and predicted_pocket*
color green, TP
