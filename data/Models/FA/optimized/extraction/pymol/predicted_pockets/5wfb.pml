load ../../../PDB/pdb5wfb.ent
# predicted pocket number 0
select predicted_pocket_0, ( chain A and resi 81+33+109+67+29+78+74+119+70+77+116+28+30+31+115+36+112+71+27+82 )  or  ( chain B and resi 104+111+74+65+109+112+116+115+27+29+33+119+31+28+70+117+78+113+71+36+67+82+66+77+81+30+130 ) 
set_color predicted_pk_0, [ 0, 255, 255 ] 
color predicted_pk_0 , predicted_pocket_0 
show spheres, predicted_pocket_0 
set sphere_scale , 0.3 , predicted_pocket_0 
set sphere_transparency , 0.1 , predicted_pocket_0 
# predicted pocket number 1
select predicted_pocket_1, chain A and resi 67+108+107+117+110+66+104+116+109+113+65
set_color predicted_pk_1, [ 0, 255, 255 ] 
color predicted_pk_1 , predicted_pocket_1 
show spheres, predicted_pocket_1 
set sphere_scale , 0.3 , predicted_pocket_1 
set sphere_transparency , 0.1 , predicted_pocket_1 
# predicted pocket number 2
select predicted_pocket_2, ( chain B and resi 128+99+129+133+98+125+124+102+132 )  or  ( chain A and resi 118 ) 
set_color predicted_pk_2, [ 0, 255, 255 ] 
color predicted_pk_2 , predicted_pocket_2 
show spheres, predicted_pocket_2 
set sphere_scale , 0.3 , predicted_pocket_2 
set sphere_transparency , 0.1 , predicted_pocket_2 
# predicted pocket number 3
select predicted_pocket_3, chain B and resi 97+90+58+59+94+93+51+55+54
set_color predicted_pk_3, [ 0, 255, 255 ] 
color predicted_pk_3 , predicted_pocket_3 
show spheres, predicted_pocket_3 
set sphere_scale , 0.3 , predicted_pocket_3 
set sphere_transparency , 0.1 , predicted_pocket_3 
select TP, true_pocket* and predicted_pocket*
color green, TP
