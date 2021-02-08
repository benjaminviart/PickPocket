load ../../../PDB/pdb4ynh.ent
# predicted pocket number 0
select predicted_pocket_0, ( chain B and resi 236+240+242+243+246 )  or  ( chain A and resi 246+249+250 ) 
set_color predicted_pk_0, [ 0, 255, 255 ] 
color predicted_pk_0 , predicted_pocket_0 
show spheres, predicted_pocket_0 
set sphere_scale , 0.3 , predicted_pocket_0 
set sphere_transparency , 0.1 , predicted_pocket_0 
select TP, true_pocket* and predicted_pocket*
color green, TP
