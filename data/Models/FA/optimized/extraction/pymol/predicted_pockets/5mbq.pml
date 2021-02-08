load ../../../PDB/pdb5mbq.ent
# predicted pocket number 0
select predicted_pocket_0, ( chain A and resi 281+263+269+307+278+274+277+280+264+268+260+265+279+308 )  or  ( chain B and resi 175+171+176+169+172+168 ) 
set_color predicted_pk_0, [ 0, 255, 255 ] 
color predicted_pk_0 , predicted_pocket_0 
show spheres, predicted_pocket_0 
set sphere_scale , 0.3 , predicted_pocket_0 
set sphere_transparency , 0.1 , predicted_pocket_0 
# predicted pocket number 1
select predicted_pocket_1, ( chain C and resi 57+136+77+139+96+288+100+289+116+290+97+118+119+56+137+134+287+206+23+98+205+117+122 )  or  ( chain B and resi 27+24+25+38 ) 
set_color predicted_pk_1, [ 0, 255, 255 ] 
color predicted_pk_1 , predicted_pocket_1 
show spheres, predicted_pocket_1 
set sphere_scale , 0.3 , predicted_pocket_1 
set sphere_transparency , 0.1 , predicted_pocket_1 
# predicted pocket number 2
select predicted_pocket_2, ( chain A and resi 84+300+286+68+297+296+62+66+299+65+166 )  or  ( chain C and resi 52+129+109+111+131+47+130+110 ) 
set_color predicted_pk_2, [ 0, 255, 255 ] 
color predicted_pk_2 , predicted_pocket_2 
show spheres, predicted_pocket_2 
set sphere_scale , 0.3 , predicted_pocket_2 
set sphere_transparency , 0.1 , predicted_pocket_2 
# predicted pocket number 3
select predicted_pocket_3, ( chain B and resi 144+24+149+25+26+138+145+151+148+141+136+147+23 )  or  ( chain C and resi 99+102+103+100+122 ) 
set_color predicted_pk_3, [ 0, 255, 255 ] 
color predicted_pk_3 , predicted_pocket_3 
show spheres, predicted_pocket_3 
set sphere_scale , 0.3 , predicted_pocket_3 
set sphere_transparency , 0.1 , predicted_pocket_3 
# predicted pocket number 4
select predicted_pocket_4, ( chain A and resi 307+84+300+286+285+283+303+83+304 )  or  ( chain C and resi 106+109+107 ) 
set_color predicted_pk_4, [ 0, 255, 255 ] 
color predicted_pk_4 , predicted_pocket_4 
show spheres, predicted_pocket_4 
set sphere_scale , 0.3 , predicted_pocket_4 
set sphere_transparency , 0.1 , predicted_pocket_4 
# predicted pocket number 5
select predicted_pocket_5, chain A and resi 56+118+58+97+288+98+57+289+96+119+77+80
set_color predicted_pk_5, [ 0, 255, 255 ] 
color predicted_pk_5 , predicted_pocket_5 
show spheres, predicted_pocket_5 
set sphere_scale , 0.3 , predicted_pocket_5 
set sphere_transparency , 0.1 , predicted_pocket_5 
# predicted pocket number 6
select predicted_pocket_6, chain C and resi 134+138+144+136+26+23+145+148+24+141+25+149
set_color predicted_pk_6, [ 0, 255, 255 ] 
color predicted_pk_6 , predicted_pocket_6 
show spheres, predicted_pocket_6 
set sphere_scale , 0.3 , predicted_pocket_6 
set sphere_transparency , 0.1 , predicted_pocket_6 
# predicted pocket number 7
select predicted_pocket_7, chain A and resi 138+148+145+141+144+25+22+23
set_color predicted_pk_7, [ 0, 255, 255 ] 
color predicted_pk_7 , predicted_pocket_7 
show spheres, predicted_pocket_7 
set sphere_scale , 0.3 , predicted_pocket_7 
set sphere_transparency , 0.1 , predicted_pocket_7 
# predicted pocket number 8
select predicted_pocket_8, ( chain C and resi 249+193+228+205+200+288+198+191 )  or  ( chain B and resi 127+39+41+38+43+42 ) 
set_color predicted_pk_8, [ 0, 255, 255 ] 
color predicted_pk_8 , predicted_pocket_8 
show spheres, predicted_pocket_8 
set sphere_scale , 0.3 , predicted_pocket_8 
set sphere_transparency , 0.1 , predicted_pocket_8 
# predicted pocket number 9
select predicted_pocket_9, chain C and resi 185+180+243+242+182+309+278+276+310
set_color predicted_pk_9, [ 0, 255, 255 ] 
color predicted_pk_9 , predicted_pocket_9 
show spheres, predicted_pocket_9 
set sphere_scale , 0.3 , predicted_pocket_9 
set sphere_transparency , 0.1 , predicted_pocket_9 
# predicted pocket number 10
select predicted_pocket_10, chain B and resi 208+137+117+289+288+139+290+57+204+211+205+142+118+116
set_color predicted_pk_10, [ 0, 255, 255 ] 
color predicted_pk_10 , predicted_pocket_10 
show spheres, predicted_pocket_10 
set sphere_scale , 0.3 , predicted_pocket_10 
set sphere_transparency , 0.1 , predicted_pocket_10 
# predicted pocket number 11
select predicted_pocket_11, chain A and resi 287+286+137+290+205+142+292+208+301+139
set_color predicted_pk_11, [ 0, 255, 255 ] 
color predicted_pk_11 , predicted_pocket_11 
show spheres, predicted_pocket_11 
set sphere_scale , 0.3 , predicted_pocket_11 
set sphere_transparency , 0.1 , predicted_pocket_11 
# predicted pocket number 12
select predicted_pocket_12, ( chain C and resi 71+92+73+91 )  or  ( chain A and resi 87+86+91+90+89 ) 
set_color predicted_pk_12, [ 0, 255, 255 ] 
color predicted_pk_12 , predicted_pocket_12 
show spheres, predicted_pocket_12 
set sphere_scale , 0.3 , predicted_pocket_12 
set sphere_transparency , 0.1 , predicted_pocket_12 
select TP, true_pocket* and predicted_pocket*
color green, TP
