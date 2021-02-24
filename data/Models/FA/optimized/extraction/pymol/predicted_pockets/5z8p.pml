load ../../../PDB/pdb5z8p.ent
# predicted pocket number 0
select predicted_pocket_0, chain A and resi 94+26+193+246+96+100+95+52+73+189+28+157+124+51+178+219+25+154+247+174+54+24+161+181+190+27+192+194+158+70+97
set_color predicted_pk_0, [ 0, 255, 255 ] 
color predicted_pk_0 , predicted_pocket_0 
show spheres, predicted_pocket_0 
set sphere_scale , 0.3 , predicted_pocket_0 
set sphere_transparency , 0.1 , predicted_pocket_0 
# predicted pocket number 1
select predicted_pocket_1, chain A and resi 257+253+258+261+254+35+39
set_color predicted_pk_1, [ 0, 255, 255 ] 
color predicted_pk_1 , predicted_pocket_1 
show spheres, predicted_pocket_1 
set sphere_scale , 0.3 , predicted_pocket_1 
set sphere_transparency , 0.1 , predicted_pocket_1 
select TP, true_pocket* and predicted_pocket*
color green, TP
