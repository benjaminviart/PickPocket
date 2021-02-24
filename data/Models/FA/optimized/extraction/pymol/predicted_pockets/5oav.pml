load ../../../PDB/pdb5oav.ent
# predicted pocket number 0
select predicted_pocket_0, ( chain C and resi 117+116+115 )  or  ( chain D and resi 7+6+9+8 )  or  ( chain A and resi 85+141+140+107 ) 
set_color predicted_pk_0, [ 0, 255, 255 ] 
color predicted_pk_0 , predicted_pocket_0 
show spheres, predicted_pocket_0 
set sphere_scale , 0.3 , predicted_pocket_0 
set sphere_transparency , 0.1 , predicted_pocket_0 
# predicted pocket number 1
select predicted_pocket_1, ( chain D and resi 7+6+4 )  or  ( chain A and resi 125+87+105+140+107 ) 
set_color predicted_pk_1, [ 0, 255, 255 ] 
color predicted_pk_1 , predicted_pocket_1 
show spheres, predicted_pocket_1 
set sphere_scale , 0.3 , predicted_pocket_1 
set sphere_transparency , 0.1 , predicted_pocket_1 
select TP, true_pocket* and predicted_pocket*
color green, TP
