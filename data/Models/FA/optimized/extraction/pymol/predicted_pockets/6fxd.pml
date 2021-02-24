load ../../../PDB/pdb6fxd.ent
# predicted pocket number 0
select predicted_pocket_0, ( chain A and resi 116+-3+6+122+-4+89+0+115+88+113+-1+55+1+112+2+114+5+111+-5+4+-2 )  or  ( chain B and resi 34+33+53+29+26+40+30+44+42 ) 
set_color predicted_pk_0, [ 0, 255, 255 ] 
color predicted_pk_0 , predicted_pocket_0 
show spheres, predicted_pocket_0 
set sphere_scale , 0.3 , predicted_pocket_0 
set sphere_transparency , 0.1 , predicted_pocket_0 
# predicted pocket number 1
select predicted_pocket_1, chain A and resi 104+9+69+52+28+73+41+21+43+25+77+85+66+80+81+54+24+79+65+103+11+76+70+82
set_color predicted_pk_1, [ 0, 255, 255 ] 
color predicted_pk_1 , predicted_pocket_1 
show spheres, predicted_pocket_1 
set sphere_scale , 0.3 , predicted_pocket_1 
set sphere_transparency , 0.1 , predicted_pocket_1 
# predicted pocket number 2
select predicted_pocket_2, chain B and resi 80+66+54+25+76+77+43+41+79+73+24+21+82+69+28+9+85+65+11
set_color predicted_pk_2, [ 0, 255, 255 ] 
color predicted_pk_2 , predicted_pocket_2 
show spheres, predicted_pocket_2 
set sphere_scale , 0.3 , predicted_pocket_2 
set sphere_transparency , 0.1 , predicted_pocket_2 
# predicted pocket number 3
select predicted_pocket_3, chain A and resi 85+104+105+83+84+107+103+82
set_color predicted_pk_3, [ 0, 255, 255 ] 
color predicted_pk_3 , predicted_pocket_3 
show spheres, predicted_pocket_3 
set sphere_scale , 0.3 , predicted_pocket_3 
set sphere_transparency , 0.1 , predicted_pocket_3 
select TP, true_pocket* and predicted_pocket*
color green, TP
