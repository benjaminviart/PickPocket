load ../../../PDB/pdb5u5o.ent
# predicted pocket number 0
select predicted_pocket_0, chain A and resi 7+81+83+34+8+84+159+158+36+82
set_color predicted_pk_0, [ 0, 255, 255 ] 
color predicted_pk_0 , predicted_pocket_0 
show spheres, predicted_pocket_0 
set sphere_scale , 0.3 , predicted_pocket_0 
set sphere_transparency , 0.1 , predicted_pocket_0 
select TP, true_pocket* and predicted_pocket*
color green, TP
