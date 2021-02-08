load ../../../PDB/pdb5ii6.ent
# predicted pocket number 0
select predicted_pocket_0, chain A and resi 138+145+92+146+144+143+139+94+57+142+140+54+52+55+50+96+59+89+53
set_color predicted_pk_0, [ 0, 255, 255 ] 
color predicted_pk_0 , predicted_pocket_0 
show spheres, predicted_pocket_0 
set sphere_scale , 0.3 , predicted_pocket_0 
set sphere_transparency , 0.1 , predicted_pocket_0 
select TP, true_pocket* and predicted_pocket*
color green, TP
