load ../../../PDB/pdb5nnf.ent
# predicted pocket number 0
select predicted_pocket_0, ( chain B and resi 222+220 )  or  ( chain A and resi 87+92+146+97+94+140+82+139 ) 
set_color predicted_pk_0, [ 0, 255, 255 ] 
color predicted_pk_0 , predicted_pocket_0 
show spheres, predicted_pocket_0 
set sphere_scale , 0.3 , predicted_pocket_0 
set sphere_transparency , 0.1 , predicted_pocket_0 
select TP, true_pocket* and predicted_pocket*
color green, TP
