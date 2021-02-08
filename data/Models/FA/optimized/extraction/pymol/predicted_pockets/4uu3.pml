load ../../../PDB/pdb4uu3.ent
# predicted pocket number 0
select predicted_pocket_0, chain A and resi 93+95+27+41+29+99+49+21+78+74+39+106+70+80+46+72+19+76
set_color predicted_pk_0, [ 0, 255, 255 ] 
color predicted_pk_0 , predicted_pocket_0 
show spheres, predicted_pocket_0 
set sphere_scale , 0.3 , predicted_pocket_0 
set sphere_transparency , 0.1 , predicted_pocket_0 
# predicted pocket number 1
select predicted_pocket_1, chain B and resi 95+99+39+70+19+49+78+80+29+41+46+72+74+76+93+21+106+27
set_color predicted_pk_1, [ 0, 255, 255 ] 
color predicted_pk_1 , predicted_pocket_1 
show spheres, predicted_pocket_1 
set sphere_scale , 0.3 , predicted_pocket_1 
set sphere_transparency , 0.1 , predicted_pocket_1 
# predicted pocket number 2
select predicted_pocket_2, ( chain B and resi 127+129+96+77+94+126+75 )  or  ( chain A and resi 126+127+94+129+96+77+75 ) 
set_color predicted_pk_2, [ 0, 255, 255 ] 
color predicted_pk_2 , predicted_pocket_2 
show spheres, predicted_pocket_2 
set sphere_scale , 0.3 , predicted_pocket_2 
set sphere_transparency , 0.1 , predicted_pocket_2 
select TP, true_pocket* and predicted_pocket*
color green, TP
