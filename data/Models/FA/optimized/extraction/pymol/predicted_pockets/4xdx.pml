load ../../../PDB/pdb4xdx.ent
# predicted pocket number 0
select predicted_pocket_0, chain A and resi 11+52+51+38+12+36+9+53+10+37+50+39
set_color predicted_pk_0, [ 0, 255, 255 ] 
color predicted_pk_0 , predicted_pocket_0 
show spheres, predicted_pocket_0 
set sphere_scale , 0.3 , predicted_pocket_0 
set sphere_transparency , 0.1 , predicted_pocket_0 
select TP, true_pocket* and predicted_pocket*
color green, TP
