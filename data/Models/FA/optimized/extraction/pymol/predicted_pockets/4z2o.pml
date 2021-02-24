load ../../../PDB/pdb4z2o.ent
# predicted pocket number 0
select predicted_pocket_0, ( chain A and resi 94+113+52+55+92+128+81+26+22+48+24+111+50 )  or  ( chain P and resi 10+9 ) 
set_color predicted_pk_0, [ 0, 255, 255 ] 
color predicted_pk_0 , predicted_pocket_0 
show spheres, predicted_pocket_0 
set sphere_scale , 0.3 , predicted_pocket_0 
set sphere_transparency , 0.1 , predicted_pocket_0 
select TP, true_pocket* and predicted_pocket*
color green, TP
