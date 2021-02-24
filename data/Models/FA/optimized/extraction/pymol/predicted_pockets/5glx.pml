load ../../../PDB/pdb5glx.ent
# predicted pocket number 0
select predicted_pocket_0, chain A and resi 86+85+-1+121+1+80+2+91+76+118+119+-2+187+77+0+185
set_color predicted_pk_0, [ 0, 255, 255 ] 
color predicted_pk_0 , predicted_pocket_0 
show spheres, predicted_pocket_0 
set sphere_scale , 0.3 , predicted_pocket_0 
set sphere_transparency , 0.1 , predicted_pocket_0 
select TP, true_pocket* and predicted_pocket*
color green, TP
