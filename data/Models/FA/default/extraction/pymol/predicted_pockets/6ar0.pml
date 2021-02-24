load ../../../PDB/pdb6ar0.ent
# predicted pocket number 0
select predicted_pocket_0, chain A and resi 121+39+46+19+20+47+40+18+16+41+17
set_color predicted_pk_0, [ 0, 255, 255 ] 
color predicted_pk_0 , predicted_pocket_0 
show spheres, predicted_pocket_0 
set sphere_scale , 0.3 , predicted_pocket_0 
set sphere_transparency , 0.1 , predicted_pocket_0 
select TP, true_pocket* and predicted_pocket*
color green, TP
