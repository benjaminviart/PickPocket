load ../../../PDB/pdb6bev.ent
# predicted pocket number 0
select predicted_pocket_0, ( chain A and resi 21+20+73+39+74+16+22+19+66+72+23+41+75+69+38+65 )  or  ( chain B and resi 65+22+56+60+57+66+69+64 ) 
set_color predicted_pk_0, [ 0, 255, 255 ] 
color predicted_pk_0 , predicted_pocket_0 
show spheres, predicted_pocket_0 
set sphere_scale , 0.3 , predicted_pocket_0 
set sphere_transparency , 0.1 , predicted_pocket_0 
# predicted pocket number 1
select predicted_pocket_1, chain B and resi 99+74+98+71+2+72+3+73
set_color predicted_pk_1, [ 0, 255, 255 ] 
color predicted_pk_1 , predicted_pocket_1 
show spheres, predicted_pocket_1 
set sphere_scale , 0.3 , predicted_pocket_1 
set sphere_transparency , 0.1 , predicted_pocket_1 
select TP, true_pocket* and predicted_pocket*
color green, TP
