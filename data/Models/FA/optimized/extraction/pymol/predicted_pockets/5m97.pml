load ../../../PDB/pdb5m97.ent
# predicted pocket number 0
select predicted_pocket_0, ( chain A and resi 69+68+35+38+34 )  or  ( chain B and resi 39+43+36+40 ) 
set_color predicted_pk_0, [ 0, 255, 255 ] 
color predicted_pk_0 , predicted_pocket_0 
show spheres, predicted_pocket_0 
set sphere_scale , 0.3 , predicted_pocket_0 
set sphere_transparency , 0.1 , predicted_pocket_0 
# predicted pocket number 1
select predicted_pocket_1, ( chain B and resi 70+35+69+38+34+68 )  or  ( chain A and resi 39+36+40+43 ) 
set_color predicted_pk_1, [ 0, 255, 255 ] 
color predicted_pk_1 , predicted_pocket_1 
show spheres, predicted_pocket_1 
set sphere_scale , 0.3 , predicted_pocket_1 
set sphere_transparency , 0.1 , predicted_pocket_1 
select TP, true_pocket* and predicted_pocket*
color green, TP
