load ../../../PDB/pdb5oav.ent
# predicted pocket number 0
select predicted_pocket_0, ( chain D and resi 9+8+6+7 )  or  ( chain A and resi 141+107+140+85 )  or  ( chain C and resi 117+115+116 ) 
set_color predicted_pk_0, [ 0, 255, 255 ] 
color predicted_pk_0 , predicted_pocket_0 
show spheres, predicted_pocket_0 
set sphere_scale , 0.3 , predicted_pocket_0 
set sphere_transparency , 0.1 , predicted_pocket_0 
# predicted pocket number 1
select predicted_pocket_1, ( chain A and resi 87+107+105+140+125 )  or  ( chain D and resi 6+7+4 ) 
set_color predicted_pk_1, [ 0, 255, 255 ] 
color predicted_pk_1 , predicted_pocket_1 
show spheres, predicted_pocket_1 
set sphere_scale , 0.3 , predicted_pocket_1 
set sphere_transparency , 0.1 , predicted_pocket_1 
select TP, true_pocket* and predicted_pocket*
color green, TP
