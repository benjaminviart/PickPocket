load ../../../PDB/pdb6bev.ent
# predicted pocket number 0
select predicted_pocket_0, ( chain A and resi 72+20+75+69+16+74+73+41+21+38+19+66+22+65+39+23 )  or  ( chain B and resi 57+64+56+66+22+69+60+65 ) 
set_color predicted_pk_0, [ 0, 255, 255 ] 
color predicted_pk_0 , predicted_pocket_0 
show spheres, predicted_pocket_0 
set sphere_scale , 0.3 , predicted_pocket_0 
set sphere_transparency , 0.1 , predicted_pocket_0 
# predicted pocket number 1
select predicted_pocket_1, chain B and resi 99+72+74+2+73+71+98+3
set_color predicted_pk_1, [ 0, 255, 255 ] 
color predicted_pk_1 , predicted_pocket_1 
show spheres, predicted_pocket_1 
set sphere_scale , 0.3 , predicted_pocket_1 
set sphere_transparency , 0.1 , predicted_pocket_1 
select TP, true_pocket* and predicted_pocket*
color green, TP
