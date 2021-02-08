load ../../../PDB/pdb1ayn.ent
# ligand_0
select ligand_0, chain 1 and resi 7009 
set_color lg_0, [ 255, 0, 0 ] 
color lg_0 , ligand_0 
show spheres, ligand_0 
set sphere_scale , 1 , ligand_0 
set sphere_transparency , 0.1 , ligand_0 
# ligand_1
select ligand_1, chain 4 and resi 4000 
set_color lg_1, [ 255, 0, 0 ] 
color lg_1 , ligand_1 
show spheres, ligand_1 
set sphere_scale , 1 , ligand_1 
set sphere_transparency , 0.1 , ligand_1 
# true pocket number 0
select true_pocket_0, chain 1 and resi 98+212+120+214+122+181+99+100
set_color true_pk_0, [ 0, 0, 255 ] 
color true_pk_0 , true_pocket_0 
show spheres, true_pocket_0 
set sphere_scale , 0.3 , true_pocket_0 
set sphere_transparency , 0.1 , true_pocket_0 
# true pocket number 1
select true_pocket_1, chain 4 and resi 1
set_color true_pk_1, [ 0, 0, 255 ] 
color true_pk_1 , true_pocket_1 
show spheres, true_pocket_1 
set sphere_scale , 0.3 , true_pocket_1 
set sphere_transparency , 0.1 , true_pocket_1 
# predicted pocket number 0
select predicted_pocket_0, ( chain 2 and resi 100+215+211+208 )  or  ( chain 1 and resi 184+185+144+236+122+186+208+260+118+189+217+179+178+120+96+167+214+111+181+194+190+192+147+212+168+99+191+77+98+106+107+142+166+124+211+210+238+100+110+213+187+101 )  or  ( chain 3 and resi 22+25+24+23 ) 
set_color predicted_pk_0, [ 0, 255, 255 ] 
color predicted_pk_0 , predicted_pocket_0 
show spheres, predicted_pocket_0 
set sphere_scale , 0.3 , predicted_pocket_0 
set sphere_transparency , 0.1 , predicted_pocket_0 
# predicted pocket number 1
select predicted_pocket_1, ( chain 1 and resi 72+239+66+14+9+12+69+68+63+73+64 )  or  ( chain 4 and resi 43+40+41 )  or  ( chain 3 and resi 18+16+17 ) 
set_color predicted_pk_1, [ 0, 255, 255 ] 
color predicted_pk_1 , predicted_pocket_1 
show spheres, predicted_pocket_1 
set sphere_scale , 0.3 , predicted_pocket_1 
set sphere_transparency , 0.1 , predicted_pocket_1 
# predicted pocket number 2
select predicted_pocket_2, ( chain 3 and resi 136+178+88+137+177+179+86+90+89+188+182+187+91+185+109+181+180+138+184 )  or  ( chain 1 and resi 277 ) 
set_color predicted_pk_2, [ 0, 255, 255 ] 
color predicted_pk_2 , predicted_pocket_2 
show spheres, predicted_pocket_2 
set sphere_scale , 0.3 , predicted_pocket_2 
set sphere_transparency , 0.1 , predicted_pocket_2 
# predicted pocket number 3
select predicted_pocket_3, ( chain 2 and resi 187+183+189 )  or  ( chain 1 and resi 42+36+35+40+43+37+41+33 )  or  ( chain 3 and resi 49+116+162+163+164+50+212 ) 
set_color predicted_pk_3, [ 0, 255, 255 ] 
color predicted_pk_3 , predicted_pocket_3 
show spheres, predicted_pocket_3 
set sphere_scale , 0.3 , predicted_pocket_3 
set sphere_transparency , 0.1 , predicted_pocket_3 
# predicted pocket number 4
select predicted_pocket_4, ( chain 1 and resi 58+54+51+60+57+20+56+47+52+53 )  or  ( chain 3 and resi 168+112+170+218+111+169+110+174 ) 
set_color predicted_pk_4, [ 0, 255, 255 ] 
color predicted_pk_4 , predicted_pocket_4 
show spheres, predicted_pocket_4 
set sphere_scale , 0.3 , predicted_pocket_4 
set sphere_transparency , 0.1 , predicted_pocket_4 
# predicted pocket number 5
select predicted_pocket_5, ( chain 4 and resi 43+44+41+42 )  or  ( chain 1 and resi 67+245+242+243+244+66+68 )  or  ( chain 3 and resi 39+33+40+41 ) 
set_color predicted_pk_5, [ 0, 255, 255 ] 
color predicted_pk_5 , predicted_pocket_5 
show spheres, predicted_pocket_5 
set sphere_scale , 0.3 , predicted_pocket_5 
set sphere_transparency , 0.1 , predicted_pocket_5 
# predicted pocket number 6
select predicted_pocket_6, ( chain 2 and resi 195+194+193+116+115+113+112+192+114+196+27+118 )  or  ( chain 3 and resi 123 ) 
set_color predicted_pk_6, [ 0, 255, 255 ] 
color predicted_pk_6 , predicted_pocket_6 
show spheres, predicted_pocket_6 
set sphere_scale , 0.3 , predicted_pocket_6 
set sphere_transparency , 0.1 , predicted_pocket_6 
# predicted pocket number 7
select predicted_pocket_7, ( chain 3 and resi 208+69+66+64+65 )  or  ( chain 2 and resi 76+75+73+226+227+228+74+170 ) 
set_color predicted_pk_7, [ 0, 255, 255 ] 
color predicted_pk_7 , predicted_pocket_7 
show spheres, predicted_pocket_7 
set sphere_scale , 0.3 , predicted_pocket_7 
set sphere_transparency , 0.1 , predicted_pocket_7 
# predicted pocket number 8
select predicted_pocket_8, chain 2 and resi 157+70+156+76+75+77+72+74+78+155+158
set_color predicted_pk_8, [ 0, 255, 255 ] 
color predicted_pk_8 , predicted_pocket_8 
show spheres, predicted_pocket_8 
set sphere_scale , 0.3 , predicted_pocket_8 
set sphere_transparency , 0.1 , predicted_pocket_8 
# predicted pocket number 9
select predicted_pocket_9, ( chain 2 and resi 37+41+206+204+103+209+40+248+203+208+105+39+104+43+247+42+46 )  or  ( chain 3 and resi 36+35+37+34 ) 
set_color predicted_pk_9, [ 0, 255, 255 ] 
color predicted_pk_9 , predicted_pocket_9 
show spheres, predicted_pocket_9 
set sphere_scale , 0.3 , predicted_pocket_9 
set sphere_transparency , 0.1 , predicted_pocket_9 
# predicted pocket number 10
select predicted_pocket_10, ( chain 2 and resi 187+34+32+33+185+183+36+186+35+184 )  or  ( chain 3 and resi 49 )  or  ( chain 1 and resi 40+41 ) 
set_color predicted_pk_10, [ 0, 255, 255 ] 
color predicted_pk_10 , predicted_pocket_10 
show spheres, predicted_pocket_10 
set sphere_scale , 0.3 , predicted_pocket_10 
set sphere_transparency , 0.1 , predicted_pocket_10 
# predicted pocket number 11
select predicted_pocket_11, ( chain 2 and resi 195+194+13+28+12+31+29+30+11+14 )  or  ( chain 3 and resi 159+161+160 )  or  ( chain 1 and resi 36+38+35+39 ) 
set_color predicted_pk_11, [ 0, 255, 255 ] 
color predicted_pk_11 , predicted_pocket_11 
show spheres, predicted_pocket_11 
set sphere_scale , 0.3 , predicted_pocket_11 
set sphere_transparency , 0.1 , predicted_pocket_11 
# predicted pocket number 12
select predicted_pocket_12, ( chain 1 and resi 263+265+264+257+258 )  or  ( chain 2 and resi 138+134+137+136 ) 
set_color predicted_pk_12, [ 0, 255, 255 ] 
color predicted_pk_12 , predicted_pocket_12 
show spheres, predicted_pocket_12 
set sphere_scale , 0.3 , predicted_pocket_12 
set sphere_transparency , 0.1 , predicted_pocket_12 
# predicted pocket number 13
select predicted_pocket_13, ( chain 1 and resi 256+249+112+108+107+250+252+111+251+261+208+193+192+101+262+260 )  or  ( chain 2 and resi 185+175+131+177 ) 
set_color predicted_pk_13, [ 0, 255, 255 ] 
color predicted_pk_13 , predicted_pocket_13 
show spheres, predicted_pocket_13 
set sphere_scale , 0.3 , predicted_pocket_13 
set sphere_transparency , 0.1 , predicted_pocket_13 
# predicted pocket number 14
select predicted_pocket_14, ( chain 1 and resi 74+75+105+106+103+109+76+73 )  or  ( chain 3 and resi 224+16+226+15+225 ) 
set_color predicted_pk_14, [ 0, 255, 255 ] 
color predicted_pk_14 , predicted_pocket_14 
show spheres, predicted_pocket_14 
set sphere_scale , 0.3 , predicted_pocket_14 
set sphere_transparency , 0.1 , predicted_pocket_14 
# predicted pocket number 15
select predicted_pocket_15, chain 1 and resi 217+234+96+142+236+94+80+79+78+95+219+81
set_color predicted_pk_15, [ 0, 255, 255 ] 
color predicted_pk_15 , predicted_pocket_15 
show spheres, predicted_pocket_15 
set sphere_scale , 0.3 , predicted_pocket_15 
set sphere_transparency , 0.1 , predicted_pocket_15 
# predicted pocket number 16
select predicted_pocket_16, ( chain 1 and resi 254+253+275+272+274+273+255 )  or  ( chain 3 and resi 230+231+229+228 ) 
set_color predicted_pk_16, [ 0, 255, 255 ] 
color predicted_pk_16 , predicted_pocket_16 
show spheres, predicted_pocket_16 
set sphere_scale , 0.3 , predicted_pocket_16 
set sphere_transparency , 0.1 , predicted_pocket_16 
# predicted pocket number 17
select predicted_pocket_17, ( chain 2 and resi 48+208+207+47+46+209 )  or  ( chain 3 and resi 31+32+34 )  or  ( chain 1 and resi 186+187+188 ) 
set_color predicted_pk_17, [ 0, 255, 255 ] 
color predicted_pk_17 , predicted_pocket_17 
show spheres, predicted_pocket_17 
set sphere_scale , 0.3 , predicted_pocket_17 
set sphere_transparency , 0.1 , predicted_pocket_17 
# predicted pocket number 18
select predicted_pocket_18, chain 2 and resi 258+87+88+260+97+259+257
set_color predicted_pk_18, [ 0, 255, 255 ] 
color predicted_pk_18 , predicted_pocket_18 
show spheres, predicted_pocket_18 
set sphere_scale , 0.3 , predicted_pocket_18 
set sphere_transparency , 0.1 , predicted_pocket_18 
# predicted pocket number 19
select predicted_pocket_19, chain 1 and resi 90+153+152+94+160+95+151+93+218
set_color predicted_pk_19, [ 0, 255, 255 ] 
color predicted_pk_19 , predicted_pocket_19 
show spheres, predicted_pocket_19 
set sphere_scale , 0.3 , predicted_pocket_19 
set sphere_transparency , 0.1 , predicted_pocket_19 
# predicted pocket number 20
select predicted_pocket_20, chain 2 and resi 102+219+204+211+218+82+212+205+104+106+213+216
set_color predicted_pk_20, [ 0, 255, 255 ] 
color predicted_pk_20 , predicted_pocket_20 
show spheres, predicted_pocket_20 
set sphere_scale , 0.3 , predicted_pocket_20 
set sphere_transparency , 0.1 , predicted_pocket_20 
# predicted pocket number 21
select predicted_pocket_21, ( chain 2 and resi 148+87+145+144+260+261 )  or  ( chain 1 and resi 202+200+201 ) 
set_color predicted_pk_21, [ 0, 255, 255 ] 
color predicted_pk_21 , predicted_pocket_21 
show spheres, predicted_pocket_21 
set sphere_scale , 0.3 , predicted_pocket_21 
set sphere_transparency , 0.1 , predicted_pocket_21 
# predicted pocket number 22
select predicted_pocket_22, ( chain 1 and resi 105+108+104 )  or  ( chain 3 and resi 232+227+230+231+226+105 ) 
set_color predicted_pk_22, [ 0, 255, 255 ] 
color predicted_pk_22 , predicted_pocket_22 
show spheres, predicted_pocket_22 
set sphere_scale , 0.3 , predicted_pocket_22 
set sphere_transparency , 0.1 , predicted_pocket_22 
# predicted pocket number 23
select predicted_pocket_23, ( chain 4 and resi 43+44 )  or  ( chain 1 and resi 62+66+15+16 )  or  ( chain 3 and resi 44+42+45+41 ) 
set_color predicted_pk_23, [ 0, 255, 255 ] 
color predicted_pk_23 , predicted_pocket_23 
show spheres, predicted_pocket_23 
set sphere_scale , 0.3 , predicted_pocket_23 
set sphere_transparency , 0.1 , predicted_pocket_23 
# predicted pocket number 24
select predicted_pocket_24, chain 1 and resi 162+165+158+163+159+164+149+143+150+161
set_color predicted_pk_24, [ 0, 255, 255 ] 
color predicted_pk_24 , predicted_pocket_24 
show spheres, predicted_pocket_24 
set sphere_scale , 0.3 , predicted_pocket_24 
set sphere_transparency , 0.1 , predicted_pocket_24 
# predicted pocket number 25
select predicted_pocket_25, chain 2 and resi 149+79+145+159+166+154+146+153+165+155
set_color predicted_pk_25, [ 0, 255, 255 ] 
color predicted_pk_25 , predicted_pocket_25 
show spheres, predicted_pocket_25 
set sphere_scale , 0.3 , predicted_pocket_25 
set sphere_transparency , 0.1 , predicted_pocket_25 
# predicted pocket number 26
select predicted_pocket_26, ( chain 1 and resi 65+11+60+12+61+63+59+62+64 )  or  ( chain 3 and resi 175+222+220+221 ) 
set_color predicted_pk_26, [ 0, 255, 255 ] 
color predicted_pk_26 , predicted_pocket_26 
show spheres, predicted_pocket_26 
set sphere_scale , 0.3 , predicted_pocket_26 
set sphere_transparency , 0.1 , predicted_pocket_26 
# predicted pocket number 27
select predicted_pocket_27, ( chain 4 and resi 38+30+3+28+40+41+29+42+39 )  or  ( chain 1 and resi 242 )  or  ( chain 3 and resi 20 ) 
set_color predicted_pk_27, [ 0, 255, 255 ] 
color predicted_pk_27 , predicted_pocket_27 
show spheres, predicted_pocket_27 
set sphere_scale , 0.3 , predicted_pocket_27 
set sphere_transparency , 0.1 , predicted_pocket_27 
# predicted pocket number 28
select predicted_pocket_28, ( chain 4 and resi 35 )  or  ( chain 1 and resi 242+117+119+244+183+118 )  or  ( chain 3 and resi 30+33 ) 
set_color predicted_pk_28, [ 0, 255, 255 ] 
color predicted_pk_28 , predicted_pocket_28 
show spheres, predicted_pocket_28 
set sphere_scale , 0.3 , predicted_pocket_28 
set sphere_transparency , 0.1 , predicted_pocket_28 
# predicted pocket number 29
select predicted_pocket_29, chain 1 and resi 225+230+221+88+87+84+226+138+229+86+227+228
set_color predicted_pk_29, [ 0, 255, 255 ] 
color predicted_pk_29 , predicted_pocket_29 
show spheres, predicted_pocket_29 
set sphere_scale , 0.3 , predicted_pocket_29 
set sphere_transparency , 0.1 , predicted_pocket_29 
# predicted pocket number 30
select predicted_pocket_30, chain 3 and resi 135+141+134+150+139+147+138+146+149
set_color predicted_pk_30, [ 0, 255, 255 ] 
color predicted_pk_30 , predicted_pocket_30 
show spheres, predicted_pocket_30 
set sphere_scale , 0.3 , predicted_pocket_30 
set sphere_transparency , 0.1 , predicted_pocket_30 
# predicted pocket number 31
select predicted_pocket_31, chain 2 and resi 25+24+113+112+26+196+111+27
set_color predicted_pk_31, [ 0, 255, 255 ] 
color predicted_pk_31 , predicted_pocket_31 
show spheres, predicted_pocket_31 
set sphere_scale , 0.3 , predicted_pocket_31 
set sphere_transparency , 0.1 , predicted_pocket_31 
# predicted pocket number 32
select predicted_pocket_32, ( chain 1 and resi 98+205+212+214+209+97+213+260 )  or  ( chain 3 and resi 238 ) 
set_color predicted_pk_32, [ 0, 255, 255 ] 
color predicted_pk_32 , predicted_pocket_32 
show spheres, predicted_pocket_32 
set sphere_scale , 0.3 , predicted_pocket_32 
set sphere_transparency , 0.1 , predicted_pocket_32 
# predicted pocket number 33
select predicted_pocket_33, ( chain 2 and resi 100+48+208+101+42+47+210+211+49+209 )  or  ( chain 1 and resi 186 ) 
set_color predicted_pk_33, [ 0, 255, 255 ] 
color predicted_pk_33 , predicted_pocket_33 
show spheres, predicted_pocket_33 
set sphere_scale , 0.3 , predicted_pocket_33 
set sphere_transparency , 0.1 , predicted_pocket_33 
# predicted pocket number 34
select predicted_pocket_34, chain 3 and resi 176+177+175+222+183+173+108+184
set_color predicted_pk_34, [ 0, 255, 255 ] 
color predicted_pk_34 , predicted_pocket_34 
show spheres, predicted_pocket_34 
set sphere_scale , 0.3 , predicted_pocket_34 
set sphere_transparency , 0.1 , predicted_pocket_34 
# predicted pocket number 35
select predicted_pocket_35, ( chain 1 and resi 165+144+166+164+146 )  or  ( chain 3 and resi 27+25+28+24+26 ) 
set_color predicted_pk_35, [ 0, 255, 255 ] 
color predicted_pk_35 , predicted_pocket_35 
show spheres, predicted_pocket_35 
set sphere_scale , 0.3 , predicted_pocket_35 
set sphere_transparency , 0.1 , predicted_pocket_35 
# predicted pocket number 36
select predicted_pocket_36, ( chain 3 and resi 19+20+18 )  or  ( chain 4 and resi 31+32+27+29+28+40+26+39 ) 
set_color predicted_pk_36, [ 0, 255, 255 ] 
color predicted_pk_36 , predicted_pocket_36 
show spheres, predicted_pocket_36 
set sphere_scale , 0.3 , predicted_pocket_36 
set sphere_transparency , 0.1 , predicted_pocket_36 
# predicted pocket number 37
select predicted_pocket_37, ( chain 1 and resi 5+2+9+6 )  or  ( chain 4 and resi 3+42+26 ) 
set_color predicted_pk_37, [ 0, 255, 255 ] 
color predicted_pk_37 , predicted_pocket_37 
show spheres, predicted_pocket_37 
set sphere_scale , 0.3 , predicted_pocket_37 
set sphere_transparency , 0.1 , predicted_pocket_37 
select TP, true_pocket* and predicted_pocket*
color green, TP
