load ../../../PDB/pdb6fxd.ent
# predicted pocket number 0
select predicted_pocket_0, ( chain A and resi 4+114+89+5+116+0+-4+111+-1+113+-5+115+1+2+122+6+112+88+-3+55+-2 )  or  ( chain B and resi 42+40+29+33+53+26+44+34+30 ) 
set_color predicted_pk_0, [ 0, 255, 255 ] 
color predicted_pk_0 , predicted_pocket_0 
show spheres, predicted_pocket_0 
set sphere_scale , 0.3 , predicted_pocket_0 
set sphere_transparency , 0.1 , predicted_pocket_0 
# predicted pocket number 1
select predicted_pocket_1, chain A and resi 81+79+21+85+80+11+24+103+73+104+52+70+77+76+28+43+66+41+69+9+54+25+82+65
set_color predicted_pk_1, [ 0, 255, 255 ] 
color predicted_pk_1 , predicted_pocket_1 
show spheres, predicted_pocket_1 
set sphere_scale , 0.3 , predicted_pocket_1 
set sphere_transparency , 0.1 , predicted_pocket_1 
# predicted pocket number 2
select predicted_pocket_2, chain B and resi 82+24+9+85+66+77+25+69+80+79+41+65+28+11+43+21+76+54+73
set_color predicted_pk_2, [ 0, 255, 255 ] 
color predicted_pk_2 , predicted_pocket_2 
show spheres, predicted_pocket_2 
set sphere_scale , 0.3 , predicted_pocket_2 
set sphere_transparency , 0.1 , predicted_pocket_2 
# predicted pocket number 3
select predicted_pocket_3, chain A and resi 83+84+107+105+103+104+82+85
set_color predicted_pk_3, [ 0, 255, 255 ] 
color predicted_pk_3 , predicted_pocket_3 
show spheres, predicted_pocket_3 
set sphere_scale , 0.3 , predicted_pocket_3 
set sphere_transparency , 0.1 , predicted_pocket_3 
select TP, true_pocket* and predicted_pocket*
color green, TP
