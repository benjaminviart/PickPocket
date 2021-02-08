load ../../../PDB/pdb4yec.ent
# predicted pocket number 0
select predicted_pocket_0, ( chain A and resi 133+132+131+43 )  or  ( chain B and resi 178+204+177+205+179+206 )  or  ( chain C and resi 404 ) 
set_color predicted_pk_0, [ 0, 255, 255 ] 
color predicted_pk_0 , predicted_pocket_0 
show spheres, predicted_pocket_0 
set sphere_scale , 0.3 , predicted_pocket_0 
set sphere_transparency , 0.1 , predicted_pocket_0 
# predicted pocket number 1
select predicted_pocket_1, ( chain B and resi 195+226+196+223+248+225+172+221 )  or  ( chain A and resi 31 ) 
set_color predicted_pk_1, [ 0, 255, 255 ] 
color predicted_pk_1 , predicted_pocket_1 
show spheres, predicted_pocket_1 
set sphere_scale , 0.3 , predicted_pocket_1 
set sphere_transparency , 0.1 , predicted_pocket_1 
# predicted pocket number 2
select predicted_pocket_2, ( chain B and resi 180+286+288+151+203+179+287+156+333+334 )  or  ( chain A and resi 134+142+135+133 )  or  ( chain C and resi 404 ) 
set_color predicted_pk_2, [ 0, 255, 255 ] 
color predicted_pk_2 , predicted_pocket_2 
show spheres, predicted_pocket_2 
set sphere_scale , 0.3 , predicted_pocket_2 
set sphere_transparency , 0.1 , predicted_pocket_2 
# predicted pocket number 3
select predicted_pocket_3, ( chain A and resi 77+79+78+74+73+40+102+101+76 )  or  ( chain B and resi 152 ) 
set_color predicted_pk_3, [ 0, 255, 255 ] 
color predicted_pk_3 , predicted_pocket_3 
show spheres, predicted_pocket_3 
set sphere_scale , 0.3 , predicted_pocket_3 
set sphere_transparency , 0.1 , predicted_pocket_3 
select TP, true_pocket* and predicted_pocket*
color green, TP
