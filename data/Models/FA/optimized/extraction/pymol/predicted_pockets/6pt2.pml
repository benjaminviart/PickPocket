load ../../../PDB/pdb6pt2.ent
# ligand_0
select ligand_0, chain A and resi 1202 
set_color lg_0, [ 255, 0, 0 ] 
color lg_0 , ligand_0 
show spheres, ligand_0 
set sphere_scale , 1 , ligand_0 
set sphere_transparency , 0.1 , ligand_0 
# ligand_1
select ligand_1, chain A and resi 1203 
set_color lg_1, [ 255, 0, 0 ] 
color lg_1 , ligand_1 
show spheres, ligand_1 
set sphere_scale , 1 , ligand_1 
set sphere_transparency , 0.1 , ligand_1 
# ligand_2
select ligand_2, chain B and resi 1201 
set_color lg_2, [ 255, 0, 0 ] 
color lg_2 , ligand_2 
show spheres, ligand_2 
set sphere_scale , 1 , ligand_2 
set sphere_transparency , 0.1 , ligand_2 
# ligand_3
select ligand_3, chain B and resi 1202 
set_color lg_3, [ 255, 0, 0 ] 
color lg_3 , ligand_3 
show spheres, ligand_3 
set sphere_scale , 1 , ligand_3 
set sphere_transparency , 0.1 , ligand_3 
# ligand_4
select ligand_4, chain B and resi 1203 
set_color lg_4, [ 255, 0, 0 ] 
color lg_4 , ligand_4 
show spheres, ligand_4 
set sphere_scale , 1 , ligand_4 
set sphere_transparency , 0.1 , ligand_4 
# ligand_5
select ligand_5, chain B and resi 1204 
set_color lg_5, [ 255, 0, 0 ] 
color lg_5 , ligand_5 
show spheres, ligand_5 
set sphere_scale , 1 , ligand_5 
set sphere_transparency , 0.1 , ligand_5 
# ligand_6
select ligand_6, chain B and resi 1205 
set_color lg_6, [ 255, 0, 0 ] 
color lg_6 , ligand_6 
show spheres, ligand_6 
set sphere_scale , 1 , ligand_6 
set sphere_transparency , 0.1 , ligand_6 
# true pocket number 0
select true_pocket_0, ( chain A and resi 57+110+106+107+111 )  or  ( chain B and resi 328+325+69 ) 
set_color true_pk_0, [ 0, 0, 255 ] 
color true_pk_0 , true_pocket_0 
show spheres, true_pocket_0 
set sphere_scale , 0.3 , true_pocket_0 
set sphere_transparency , 0.1 , true_pocket_0 
# true pocket number 1
select true_pocket_1, chain A and resi 169+97+93+86+166+173+127+130+80
set_color true_pk_1, [ 0, 0, 255 ] 
color true_pk_1 , true_pocket_1 
show spheres, true_pocket_1 
set sphere_scale , 0.3 , true_pocket_1 
set sphere_transparency , 0.1 , true_pocket_1 
# true pocket number 2
select true_pocket_2, chain B and resi 322+318
set_color true_pk_2, [ 0, 0, 255 ] 
color true_pk_2 , true_pocket_2 
show spheres, true_pocket_2 
set sphere_scale , 0.3 , true_pocket_2 
set sphere_transparency , 0.1 , true_pocket_2 
# true pocket number 3
select true_pocket_3, chain B and resi 273
set_color true_pk_3, [ 0, 0, 255 ] 
color true_pk_3 , true_pocket_3 
show spheres, true_pocket_3 
set sphere_scale , 0.3 , true_pocket_3 
set sphere_transparency , 0.1 , true_pocket_3 
# true pocket number 4
select true_pocket_4, chain B and resi 86+80+166+173
set_color true_pk_4, [ 0, 0, 255 ] 
color true_pk_4 , true_pocket_4 
show spheres, true_pocket_4 
set sphere_scale , 0.3 , true_pocket_4 
set sphere_transparency , 0.1 , true_pocket_4 
# true pocket number 5
select true_pocket_5, chain B and resi 285+286
set_color true_pk_5, [ 0, 0, 255 ] 
color true_pk_5 , true_pocket_5 
show spheres, true_pocket_5 
set sphere_scale , 0.3 , true_pocket_5 
set sphere_transparency , 0.1 , true_pocket_5 
# true pocket number 6
select true_pocket_6, chain B and resi 184+185+122
set_color true_pk_6, [ 0, 0, 255 ] 
color true_pk_6 , true_pocket_6 
show spheres, true_pocket_6 
set sphere_scale , 0.3 , true_pocket_6 
set sphere_transparency , 0.1 , true_pocket_6 
# predicted pocket number 0
select predicted_pocket_0, ( chain A and resi 307+291+214+49+98+129+110+292+108+109+128+195+217+48+311+213+210+294+280+282+304+113+196+197+131+198+278+135+112+45+281+284+218+300+274+277+297+105+202+132+301+308 )  or  ( chain B and resi 328+331+329 )  or  ( chain C and resi 3 ) 
set_color predicted_pk_0, [ 0, 255, 255 ] 
color predicted_pk_0 , predicted_pocket_0 
show spheres, predicted_pocket_0 
set sphere_scale , 0.3 , predicted_pocket_0 
set sphere_transparency , 0.1 , predicted_pocket_0 
# predicted pocket number 1
select predicted_pocket_1, ( chain A and resi 317+252+322+255+251+262+318+266+265+314+258+326+254+321+323+259 )  or  ( chain B and resi 1008+1009+42+1005+1004+43+1012 ) 
set_color predicted_pk_1, [ 0, 255, 255 ] 
color predicted_pk_1 , predicted_pocket_1 
show spheres, predicted_pocket_1 
set sphere_scale , 0.3 , predicted_pocket_1 
set sphere_transparency , 0.1 , predicted_pocket_1 
# predicted pocket number 2
select predicted_pocket_2, ( chain A and resi 49+110+50+46+111+53+107 )  or  ( chain B and resi 65+312+318+62+328+321+72+324+73+313+329+66+325+77+69+317 ) 
set_color predicted_pk_2, [ 0, 255, 255 ] 
color predicted_pk_2 , predicted_pocket_2 
show spheres, predicted_pocket_2 
set sphere_scale , 0.3 , predicted_pocket_2 
set sphere_transparency , 0.1 , predicted_pocket_2 
# predicted pocket number 3
select predicted_pocket_3, ( chain B and resi 128+105+129+217+308+311+277+98+278+274+304+131+281+132 )  or  ( chain D and resi 3 ) 
set_color predicted_pk_3, [ 0, 255, 255 ] 
color predicted_pk_3 , predicted_pocket_3 
show spheres, predicted_pocket_3 
set sphere_scale , 0.3 , predicted_pocket_3 
set sphere_transparency , 0.1 , predicted_pocket_3 
# predicted pocket number 4
select predicted_pocket_4, chain B and resi 1011+1094+48+109+1033+1072+42+294+1010+1103+45+1104+1014+41+44+1007+1101+1102+292+297+1068+1098
set_color predicted_pk_4, [ 0, 255, 255 ] 
color predicted_pk_4 , predicted_pocket_4 
show spheres, predicted_pocket_4 
set sphere_scale , 0.3 , predicted_pocket_4 
set sphere_transparency , 0.1 , predicted_pocket_4 
# predicted pocket number 5
select predicted_pocket_5, ( chain A and resi 317+320+66+69+329+316+62+61+65 )  or  ( chain B and resi 107+65+103+102+50+53+56+46+106+60+61+49+57+110+64 ) 
set_color predicted_pk_5, [ 0, 255, 255 ] 
color predicted_pk_5 , predicted_pocket_5 
show spheres, predicted_pocket_5 
set sphere_scale , 0.3 , predicted_pocket_5 
set sphere_transparency , 0.1 , predicted_pocket_5 
# predicted pocket number 6
select predicted_pocket_6, chain B and resi 258+259+146+316+143+263+266+319+84+142+88+262
set_color predicted_pk_6, [ 0, 255, 255 ] 
color predicted_pk_6 , predicted_pocket_6 
show spheres, predicted_pocket_6 
set sphere_scale , 0.3 , predicted_pocket_6 
set sphere_transparency , 0.1 , predicted_pocket_6 
# predicted pocket number 7
select predicted_pocket_7, chain B and resi 82+85+146+323+320+316+78+319+88+84+324
set_color predicted_pk_7, [ 0, 255, 255 ] 
color predicted_pk_7 , predicted_pocket_7 
show spheres, predicted_pocket_7 
set sphere_scale , 0.3 , predicted_pocket_7 
set sphere_transparency , 0.1 , predicted_pocket_7 
# predicted pocket number 8
select predicted_pocket_8, chain A and resi 175+182+220+213+137+178+216+212+179+129+183+186+133+217
set_color predicted_pk_8, [ 0, 255, 255 ] 
color predicted_pk_8 , predicted_pocket_8 
show spheres, predicted_pocket_8 
set sphere_scale , 0.3 , predicted_pocket_8 
set sphere_transparency , 0.1 , predicted_pocket_8 
# predicted pocket number 9
select predicted_pocket_9, ( chain A and resi 56+60+103+57+106+102+53 )  or  ( chain B and resi 61+65 ) 
set_color predicted_pk_9, [ 0, 255, 255 ] 
color predicted_pk_9 , predicted_pocket_9 
show spheres, predicted_pocket_9 
set sphere_scale , 0.3 , predicted_pocket_9 
set sphere_transparency , 0.1 , predicted_pocket_9 
# predicted pocket number 10
select predicted_pocket_10, chain A and resi 126+180+127+130+181+184+177
set_color predicted_pk_10, [ 0, 255, 255 ] 
color predicted_pk_10 , predicted_pocket_10 
show spheres, predicted_pocket_10 
set sphere_scale , 0.3 , predicted_pocket_10 
set sphere_transparency , 0.1 , predicted_pocket_10 
# predicted pocket number 11
select predicted_pocket_11, chain B and resi 97+127+180+184+126+177+181+130
set_color predicted_pk_11, [ 0, 255, 255 ] 
color predicted_pk_11 , predicted_pocket_11 
show spheres, predicted_pocket_11 
set sphere_scale , 0.3 , predicted_pocket_11 
set sphere_transparency , 0.1 , predicted_pocket_11 
# predicted pocket number 12
select predicted_pocket_12, ( chain B and resi 332+331+333 )  or  ( chain A and resi 294+1001+1004+290+293+292+1046+1000 ) 
set_color predicted_pk_12, [ 0, 255, 255 ] 
color predicted_pk_12 , predicted_pocket_12 
show spheres, predicted_pocket_12 
set sphere_scale , 0.3 , predicted_pocket_12 
set sphere_transparency , 0.1 , predicted_pocket_12 
# predicted pocket number 13
select predicted_pocket_13, chain B and resi 90+86+80+170+173+89+169+93+166
set_color predicted_pk_13, [ 0, 255, 255 ] 
color predicted_pk_13 , predicted_pocket_13 
show spheres, predicted_pocket_13 
set sphere_scale , 0.3 , predicted_pocket_13 
set sphere_transparency , 0.1 , predicted_pocket_13 
# predicted pocket number 14
select predicted_pocket_14, ( chain A and resi 281+199+284+214+197+210+200+202+129+198+125 )  or  ( chain C and resi 3 ) 
set_color predicted_pk_14, [ 0, 255, 255 ] 
color predicted_pk_14 , predicted_pocket_14 
show spheres, predicted_pocket_14 
set sphere_scale , 0.3 , predicted_pocket_14 
set sphere_transparency , 0.1 , predicted_pocket_14 
# predicted pocket number 15
select predicted_pocket_15, chain A and resi 93+86+169+166+173+90+89+170+80
set_color predicted_pk_15, [ 0, 255, 255 ] 
color predicted_pk_15 , predicted_pocket_15 
show spheres, predicted_pocket_15 
set sphere_scale , 0.3 , predicted_pocket_15 
set sphere_transparency , 0.1 , predicted_pocket_15 
# predicted pocket number 16
select predicted_pocket_16, ( chain B and resi 327+330+326 )  or  ( chain A and resi 1098+1011+1012+1008 ) 
set_color predicted_pk_16, [ 0, 255, 255 ] 
color predicted_pk_16 , predicted_pocket_16 
show spheres, predicted_pocket_16 
set sphere_scale , 0.3 , predicted_pocket_16 
set sphere_transparency , 0.1 , predicted_pocket_16 
# predicted pocket number 17
select predicted_pocket_17, chain B and resi 215+286+211+285+218+282+214+281
set_color predicted_pk_17, [ 0, 255, 255 ] 
color predicted_pk_17 , predicted_pocket_17 
show spheres, predicted_pocket_17 
set sphere_scale , 0.3 , predicted_pocket_17 
set sphere_transparency , 0.1 , predicted_pocket_17 
# predicted pocket number 18
select predicted_pocket_18, chain A and resi 257+237+240+241+244+250
set_color predicted_pk_18, [ 0, 255, 255 ] 
color predicted_pk_18 , predicted_pocket_18 
show spheres, predicted_pocket_18 
set sphere_scale , 0.3 , predicted_pocket_18 
set sphere_transparency , 0.1 , predicted_pocket_18 
# predicted pocket number 19
select predicted_pocket_19, ( chain B and resi 210+129+213+277+300+200+202+304+284+214+281 )  or  ( chain D and resi 3 ) 
set_color predicted_pk_19, [ 0, 255, 255 ] 
color predicted_pk_19 , predicted_pocket_19 
show spheres, predicted_pocket_19 
set sphere_scale , 0.3 , predicted_pocket_19 
set sphere_transparency , 0.1 , predicted_pocket_19 
# predicted pocket number 20
select predicted_pocket_20, chain A and resi 291+284+300+297+296+280+289+109+301
set_color predicted_pk_20, [ 0, 255, 255 ] 
color predicted_pk_20 , predicted_pocket_20 
show spheres, predicted_pocket_20 
set sphere_scale , 0.3 , predicted_pocket_20 
set sphere_transparency , 0.1 , predicted_pocket_20 
# predicted pocket number 21
select predicted_pocket_21, ( chain B and resi 332+333 )  or  ( chain A and resi 1105+1046+1047+41 ) 
set_color predicted_pk_21, [ 0, 255, 255 ] 
color predicted_pk_21 , predicted_pocket_21 
show spheres, predicted_pocket_21 
set sphere_scale , 0.3 , predicted_pocket_21 
set sphere_transparency , 0.1 , predicted_pocket_21 
# predicted pocket number 22
select predicted_pocket_22, ( chain A and resi 309+58+313+62+54+55+59+312 )  or  ( chain B and resi 50+58+55+54 ) 
set_color predicted_pk_22, [ 0, 255, 255 ] 
color predicted_pk_22 , predicted_pocket_22 
show spheres, predicted_pocket_22 
set sphere_scale , 0.3 , predicted_pocket_22 
set sphere_transparency , 0.1 , predicted_pocket_22 
# predicted pocket number 23
select predicted_pocket_23, chain B and resi 1061+1058+292+1100+1104+290+1103+1099+291+1060
set_color predicted_pk_23, [ 0, 255, 255 ] 
color predicted_pk_23 , predicted_pocket_23 
show spheres, predicted_pocket_23 
set sphere_scale , 0.3 , predicted_pocket_23 
set sphere_transparency , 0.1 , predicted_pocket_23 
# predicted pocket number 24
select predicted_pocket_24, chain A and resi 296+280+295+276+289+283+279+299
set_color predicted_pk_24, [ 0, 255, 255 ] 
color predicted_pk_24 , predicted_pocket_24 
show spheres, predicted_pocket_24 
set sphere_scale , 0.3 , predicted_pocket_24 
set sphere_transparency , 0.1 , predicted_pocket_24 
# predicted pocket number 25
select predicted_pocket_25, chain B and resi 175+137+133+141+176+179+172
set_color predicted_pk_25, [ 0, 255, 255 ] 
color predicted_pk_25 , predicted_pocket_25 
show spheres, predicted_pocket_25 
set sphere_scale , 0.3 , predicted_pocket_25 
set sphere_transparency , 0.1 , predicted_pocket_25 
select TP, true_pocket* and predicted_pocket*
color green, TP
