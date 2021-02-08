load ../../../PDB/pdb5h7t.ent
# predicted pocket number 0
select predicted_pocket_0, chain A and resi 199+158+155+200+202+54+201+51+198+160
set_color predicted_pk_0, [ 0, 255, 255 ] 
color predicted_pk_0 , predicted_pocket_0 
show spheres, predicted_pocket_0 
set sphere_scale , 0.3 , predicted_pocket_0 
set sphere_transparency , 0.1 , predicted_pocket_0 
select TP, true_pocket* and predicted_pocket*
color green, TP
