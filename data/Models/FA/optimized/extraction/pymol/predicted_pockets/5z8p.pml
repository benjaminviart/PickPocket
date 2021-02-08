load ../../../PDB/pdb5z8p.ent
# predicted pocket number 0
select predicted_pocket_0, chain A and resi 181+190+189+51+246+174+95+24+73+96+70+52+193+28+100+97+157+178+94+161+124+26+27+158+154+219+194+192+54+25+247
set_color predicted_pk_0, [ 0, 255, 255 ] 
color predicted_pk_0 , predicted_pocket_0 
show spheres, predicted_pocket_0 
set sphere_scale , 0.3 , predicted_pocket_0 
set sphere_transparency , 0.1 , predicted_pocket_0 
# predicted pocket number 1
select predicted_pocket_1, chain A and resi 257+253+254+35+39+258+261
set_color predicted_pk_1, [ 0, 255, 255 ] 
color predicted_pk_1 , predicted_pocket_1 
show spheres, predicted_pocket_1 
set sphere_scale , 0.3 , predicted_pocket_1 
set sphere_transparency , 0.1 , predicted_pocket_1 
select TP, true_pocket* and predicted_pocket*
color green, TP
