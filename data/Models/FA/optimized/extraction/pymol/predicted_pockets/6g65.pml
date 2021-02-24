load ../../../PDB/pdb6g65.ent
# predicted pocket number 0
select predicted_pocket_0, ( chain H and resi 26+27+30+29+28+23 )  or  ( chain C and resi 22+18+8 )  or  ( chain J and resi 2 )  or  ( chain K and resi 1+3+2+6+5 )  or  ( chain B and resi 15+23+16+19+5+12+20+8+9 )  or  ( chain L and resi 5+8+1 )  or  ( chain I and resi 29+28 ) 
set_color predicted_pk_0, [ 0, 255, 255 ] 
color predicted_pk_0 , predicted_pocket_0 
show spheres, predicted_pocket_0 
set sphere_scale , 0.3 , predicted_pocket_0 
set sphere_transparency , 0.1 , predicted_pocket_0 
# predicted pocket number 1
select predicted_pocket_1, ( chain D and resi 3+1+2+4 )  or  ( chain C and resi 29+28 )  or  ( chain G and resi 9+6+5+2 )  or  ( chain E and resi 5+2+1+9+3 )  or  ( chain A and resi 30+26+28+29+27 )  or  ( chain F and resi 1+8 )  or  ( chain B and resi 27+29+26+30+28 )  or  ( chain H and resi 11+16+19+8+15+9+4+12 ) 
set_color predicted_pk_1, [ 0, 255, 255 ] 
color predicted_pk_1 , predicted_pocket_1 
show spheres, predicted_pocket_1 
set sphere_scale , 0.3 , predicted_pocket_1 
set sphere_transparency , 0.1 , predicted_pocket_1 
# predicted pocket number 2
select predicted_pocket_2, ( chain G and resi 23+28+27+30+26 )  or  ( chain H and resi 26+25+28+29 )  or  ( chain J and resi 3+2+1 )  or  ( chain K and resi 1 ) 
set_color predicted_pk_2, [ 0, 255, 255 ] 
color predicted_pk_2 , predicted_pocket_2 
show spheres, predicted_pocket_2 
set sphere_scale , 0.3 , predicted_pocket_2 
set sphere_transparency , 0.1 , predicted_pocket_2 
# predicted pocket number 3
select predicted_pocket_3, ( chain F and resi 12+15+8+11 )  or  ( chain H and resi 1+2+5 )  or  ( chain E and resi 9 ) 
set_color predicted_pk_3, [ 0, 255, 255 ] 
color predicted_pk_3 , predicted_pocket_3 
show spheres, predicted_pocket_3 
set sphere_scale , 0.3 , predicted_pocket_3 
set sphere_transparency , 0.1 , predicted_pocket_3 
# predicted pocket number 4
select predicted_pocket_4, ( chain E and resi 5+8+9+12 )  or  ( chain H and resi 1+4+5 )  or  ( chain F and resi 15 )  or  ( chain G and resi 2 ) 
set_color predicted_pk_4, [ 0, 255, 255 ] 
color predicted_pk_4 , predicted_pocket_4 
show spheres, predicted_pocket_4 
set sphere_scale , 0.3 , predicted_pocket_4 
set sphere_transparency , 0.1 , predicted_pocket_4 
# predicted pocket number 5
select predicted_pocket_5, ( chain I and resi 19+22+18 )  or  ( chain C and resi 29+26 )  or  ( chain H and resi 16+19 )  or  ( chain B and resi 23 ) 
set_color predicted_pk_5, [ 0, 255, 255 ] 
color predicted_pk_5 , predicted_pocket_5 
show spheres, predicted_pocket_5 
set sphere_scale , 0.3 , predicted_pocket_5 
set sphere_transparency , 0.1 , predicted_pocket_5 
# predicted pocket number 6
select predicted_pocket_6, ( chain I and resi 29+19+22+26+25+23 )  or  ( chain C and resi 22+26 )  or  ( chain H and resi 23 ) 
set_color predicted_pk_6, [ 0, 255, 255 ] 
color predicted_pk_6 , predicted_pocket_6 
show spheres, predicted_pocket_6 
set sphere_scale , 0.3 , predicted_pocket_6 
set sphere_transparency , 0.1 , predicted_pocket_6 
# predicted pocket number 7
select predicted_pocket_7, ( chain B and resi 5+8 )  or  ( chain K and resi 9+11+8+5+12+15 )  or  ( chain A and resi 2 )  or  ( chain J and resi 9 ) 
set_color predicted_pk_7, [ 0, 255, 255 ] 
color predicted_pk_7 , predicted_pocket_7 
show spheres, predicted_pocket_7 
set sphere_scale , 0.3 , predicted_pocket_7 
set sphere_transparency , 0.1 , predicted_pocket_7 
# predicted pocket number 8
select predicted_pocket_8, ( chain D and resi 26+30+27+23 )  or  ( chain E and resi 28+29 ) 
set_color predicted_pk_8, [ 0, 255, 255 ] 
color predicted_pk_8 , predicted_pocket_8 
show spheres, predicted_pocket_8 
set sphere_scale , 0.3 , predicted_pocket_8 
set sphere_transparency , 0.1 , predicted_pocket_8 
# predicted pocket number 9
select predicted_pocket_9, ( chain K and resi 23+27+26 )  or  ( chain L and resi 29+26+22+25 ) 
set_color predicted_pk_9, [ 0, 255, 255 ] 
color predicted_pk_9 , predicted_pocket_9 
show spheres, predicted_pocket_9 
set sphere_scale , 0.3 , predicted_pocket_9 
set sphere_transparency , 0.1 , predicted_pocket_9 
select TP, true_pocket* and predicted_pocket*
color green, TP
