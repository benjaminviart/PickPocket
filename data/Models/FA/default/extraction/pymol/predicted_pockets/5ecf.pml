load ../../../PDB/pdb5ecf.ent
# ligand_0
select ligand_0, chain B and resi 201 
set_color lg_0, [ 255, 0, 0 ] 
color lg_0 , ligand_0 
show spheres, ligand_0 
set sphere_scale , 1 , ligand_0 
set sphere_transparency , 0.1 , ligand_0 
# ligand_1
select ligand_1, chain I and resi 300 
set_color lg_1, [ 255, 0, 0 ] 
color lg_1 , ligand_1 
show spheres, ligand_1 
set sphere_scale , 1 , ligand_1 
set sphere_transparency , 0.1 , ligand_1 
# ligand_2
select ligand_2, chain I and resi 301 
set_color lg_2, [ 255, 0, 0 ] 
color lg_2 , ligand_2 
show spheres, ligand_2 
set sphere_scale , 1 , ligand_2 
set sphere_transparency , 0.1 , ligand_2 
# ligand_3
select ligand_3, chain J and resi 201 
set_color lg_3, [ 255, 0, 0 ] 
color lg_3 , ligand_3 
show spheres, ligand_3 
set sphere_scale , 1 , ligand_3 
set sphere_transparency , 0.1 , ligand_3 
# true pocket number 0
select true_pocket_0, chain B and resi 164+149+97+94+146+89+43+40+161+153+165+101+36+105
set_color true_pk_0, [ 0, 0, 255 ] 
color true_pk_0 , true_pocket_0 
show spheres, true_pocket_0 
set sphere_scale , 0.3 , true_pocket_0 
set sphere_transparency , 0.1 , true_pocket_0 
# true pocket number 1
select true_pocket_1, chain I and resi 160+157+161+101+89+164+165+83+153+97+98+36+146+145+39+149+40
set_color true_pk_1, [ 0, 0, 255 ] 
color true_pk_1 , true_pocket_1 
show spheres, true_pocket_1 
set sphere_scale , 0.3 , true_pocket_1 
set sphere_transparency , 0.1 , true_pocket_1 
# true pocket number 2
select true_pocket_2, chain I and resi 47+76+135+108+101+104+72+172+134+138+168+50+105+69
set_color true_pk_2, [ 0, 0, 255 ] 
color true_pk_2 , true_pocket_2 
show spheres, true_pocket_2 
set sphere_scale , 0.3 , true_pocket_2 
set sphere_transparency , 0.1 , true_pocket_2 
# true pocket number 3
select true_pocket_3, chain J and resi 105+97+160+98+153+101+165+168+40+149+146+36+164
set_color true_pk_3, [ 0, 0, 255 ] 
color true_pk_3 , true_pocket_3 
show spheres, true_pocket_3 
set sphere_scale , 0.3 , true_pocket_3 
set sphere_transparency , 0.1 , true_pocket_3 
# predicted pocket number 0
select predicted_pocket_0, ( chain F and resi 35+82+38+46+68+75+78+81+49+34+71+45+41+86+74+37+85+42 )  or  ( chain B and resi 134+181+135+123+126+65+66+119+131+50+54+137+178+179+176+132+62+140+138+70+115+69+125+180+130+133+129+173+136+73+127+128+177+139+122 )  or  ( chain A and resi 119+173+176+181+179+126+177+178+136+129+128+180+132+123+124 )  or  ( chain E and resi 67 ) 
set_color predicted_pk_0, [ 0, 255, 255 ] 
color predicted_pk_0 , predicted_pocket_0 
show spheres, predicted_pocket_0 
set sphere_scale , 0.3 , predicted_pocket_0 
set sphere_transparency , 0.1 , predicted_pocket_0 
# predicted pocket number 1
select predicted_pocket_1, chain G and resi 65+54+108+172+70+72+150+173+97+105+76+165+83+143+94+160+69+36+139+111+137+134+115+112+47+157+66+73+146+149+145+135+50+122+138+43+98+101+161+169+166+104+147+131+130+89+164+152+153+40+142+95+168+39
set_color predicted_pk_1, [ 0, 255, 255 ] 
color predicted_pk_1 , predicted_pocket_1 
show spheres, predicted_pocket_1 
set sphere_scale , 0.3 , predicted_pocket_1 
set sphere_transparency , 0.1 , predicted_pocket_1 
# predicted pocket number 2
select predicted_pocket_2, ( chain H and resi 142+168+140+104+70+139+111+146+127+50+73+138+165+149+122+66+145+170+47+150+166+161+169+43+162+153+76+158+112+136+173+105+62+147+131+108+40+143+72+164+69+172+134+115+101+65+54+135 )  or  ( chain D and resi 176+140+139+173+136+132+177+143+180 ) 
set_color predicted_pk_2, [ 0, 255, 255 ] 
color predicted_pk_2 , predicted_pocket_2 
show spheres, predicted_pocket_2 
set sphere_scale , 0.3 , predicted_pocket_2 
set sphere_transparency , 0.1 , predicted_pocket_2 
# predicted pocket number 3
select predicted_pocket_3, chain I and resi 142+122+169+162+115+101+72+89+83+112+134+98+111+139+50+152+105+39+166+157+104+164+165+153+172+147+94+146+69+54+47+135+173+161+73+158+131+97+36+66+145+40+160+76+108+127+130+62+65+138+168+43+143+150+149
set_color predicted_pk_3, [ 0, 255, 255 ] 
color predicted_pk_3 , predicted_pocket_3 
show spheres, predicted_pocket_3 
set sphere_scale , 0.3 , predicted_pocket_3 
set sphere_transparency , 0.1 , predicted_pocket_3 
# predicted pocket number 4
select predicted_pocket_4, chain F and resi 97+105+168+40+161+72+104+98+157+169+146+50+153+150+76+115+101+149+39+143+162+145+147+140+160+94+47+138+142+83+108+36+139+165+136+172+173+112+176+152+89+43+111+166+164+135
set_color predicted_pk_4, [ 0, 255, 255 ] 
color predicted_pk_4 , predicted_pocket_4 
show spheres, predicted_pocket_4 
set sphere_scale , 0.3 , predicted_pocket_4 
set sphere_transparency , 0.1 , predicted_pocket_4 
# predicted pocket number 5
select predicted_pocket_5, chain E and resi 112+157+73+94+65+127+134+54+139+89+43+161+76+105+62+111+153+36+40+108+172+131+142+122+104+97+72+164+145+169+83+146+165+98+173+39+66+168+47+160+50+150+101+115+130+152+149+138+135+69+143+70
set_color predicted_pk_5, [ 0, 255, 255 ] 
color predicted_pk_5 , predicted_pocket_5 
show spheres, predicted_pocket_5 
set sphere_scale , 0.3 , predicted_pocket_5 
set sphere_transparency , 0.1 , predicted_pocket_5 
# predicted pocket number 6
select predicted_pocket_6, ( chain A and resi 43+50+89+72+139+152+47+105+40+97+150+95+173+169+140+138+141+39+76+101+149+160+98+145+146+165+136+73+153+36+157+164+142+172+112+108+143+94+83+111+168+161+104 )  or  ( chain H and resi 157+95 ) 
set_color predicted_pk_6, [ 0, 255, 255 ] 
color predicted_pk_6 , predicted_pocket_6 
show spheres, predicted_pocket_6 
set sphere_scale , 0.3 , predicted_pocket_6 
set sphere_transparency , 0.1 , predicted_pocket_6 
# predicted pocket number 7
select predicted_pocket_7, chain B and resi 168+149+97+94+146+98+157+160+112+101+152+142+105+172+50+150+43+153+138+104+164+145+89+161+76+165+72+108+47+39+173+83+73+111+40+139+143+36+169+141
set_color predicted_pk_7, [ 0, 255, 255 ] 
color predicted_pk_7 , predicted_pocket_7 
show spheres, predicted_pocket_7 
set sphere_scale , 0.3 , predicted_pocket_7 
set sphere_transparency , 0.1 , predicted_pocket_7 
# predicted pocket number 8
select predicted_pocket_8, chain D and resi 145+150+101+94+138+95+47+141+73+146+72+43+115+76+152+168+36+83+111+160+105+142+108+98+172+165+89+112+135+164+149+161+50+153+39+104+157+97+40
set_color predicted_pk_8, [ 0, 255, 255 ] 
color predicted_pk_8 , predicted_pocket_8 
show spheres, predicted_pocket_8 
set sphere_scale , 0.3 , predicted_pocket_8 
set sphere_transparency , 0.1 , predicted_pocket_8 
# predicted pocket number 9
select predicted_pocket_9, ( chain F and resi 56+70+67+68+61+49+57+71+63+59+53+74+52+64+58 )  or  ( chain H and resi 117+118+121+55+58+57 )  or  ( chain B and resi 137+140+70+77+80+74+144+73+78+81+143+141 ) 
set_color predicted_pk_9, [ 0, 255, 255 ] 
color predicted_pk_9 , predicted_pocket_9 
show spheres, predicted_pocket_9 
set sphere_scale , 0.3 , predicted_pocket_9 
set sphere_transparency , 0.1 , predicted_pocket_9 
# predicted pocket number 10
select predicted_pocket_10, chain C and resi 105+153+150+152+76+108+112+135+168+115+138+160+94+164+145+165+111+40+143+36+72+169+43+95+97+149+98+139+73+142+104+141+47+161+173+101+146+172+50+89+157
set_color predicted_pk_10, [ 0, 255, 255 ] 
color predicted_pk_10 , predicted_pocket_10 
show spheres, predicted_pocket_10 
set sphere_scale , 0.3 , predicted_pocket_10 
set sphere_transparency , 0.1 , predicted_pocket_10 
# predicted pocket number 11
select predicted_pocket_11, ( chain I and resi 106+48+110+52+107+51+103 )  or  ( chain A and resi 151+162+147+154+153+166+155+150+158+161+165 ) 
set_color predicted_pk_11, [ 0, 255, 255 ] 
color predicted_pk_11 , predicted_pocket_11 
show spheres, predicted_pocket_11 
set sphere_scale , 0.3 , predicted_pocket_11 
set sphere_transparency , 0.1 , predicted_pocket_11 
# predicted pocket number 12
select predicted_pocket_12, ( chain A and resi 48+45+53+52+114+51+49+103+110+55+107 )  or  ( chain D and resi 150+151+88+154+152+147+158+162+165+89+161+155+166+153 ) 
set_color predicted_pk_12, [ 0, 255, 255 ] 
color predicted_pk_12 , predicted_pocket_12 
show spheres, predicted_pocket_12 
set sphere_scale , 0.3 , predicted_pocket_12 
set sphere_transparency , 0.1 , predicted_pocket_12 
# predicted pocket number 13
select predicted_pocket_13, chain J and resi 76+50+168+69+149+43+145+104+142+66+172+72+54+108+73+115+135+47+40+105+138+112+131+141+101+111+70+65+165+134+130+146+164
set_color predicted_pk_13, [ 0, 255, 255 ] 
color predicted_pk_13 , predicted_pocket_13 
show spheres, predicted_pocket_13 
set sphere_scale , 0.3 , predicted_pocket_13 
set sphere_transparency , 0.1 , predicted_pocket_13 
# predicted pocket number 14
select predicted_pocket_14, ( chain F and resi 97+89+90+34+37+93+96+92 )  or  ( chain E and resi 61+130+63+64+66+67+127+70 )  or  ( chain B and resi 126+124+125 ) 
set_color predicted_pk_14, [ 0, 255, 255 ] 
color predicted_pk_14 , predicted_pocket_14 
show spheres, predicted_pocket_14 
set sphere_scale , 0.3 , predicted_pocket_14 
set sphere_transparency , 0.1 , predicted_pocket_14 
# predicted pocket number 15
select predicted_pocket_15, ( chain J and resi 162+158+142+172+139+165+168+151+143+146+169+147+166+150 )  or  ( chain B and resi 48+110+107+51+103+106 ) 
set_color predicted_pk_15, [ 0, 255, 255 ] 
color predicted_pk_15 , predicted_pocket_15 
show spheres, predicted_pocket_15 
set sphere_scale , 0.3 , predicted_pocket_15 
set sphere_transparency , 0.1 , predicted_pocket_15 
# predicted pocket number 16
select predicted_pocket_16, ( chain A and resi 56+61+59+58+64+60+57 )  or  ( chain G and resi 61+124+125+60+127+121+123+126+129+128 )  or  ( chain D and resi 82+86+35+87+32+38+81+85 ) 
set_color predicted_pk_16, [ 0, 255, 255 ] 
color predicted_pk_16 , predicted_pocket_16 
show spheres, predicted_pocket_16 
set sphere_scale , 0.3 , predicted_pocket_16 
set sphere_transparency , 0.1 , predicted_pocket_16 
# predicted pocket number 17
select predicted_pocket_17, ( chain C and resi 59+53+63+64+67+57+58+61+56 )  or  ( chain E and resi 151+154+92+91+152+155+90+89+88+153 ) 
set_color predicted_pk_17, [ 0, 255, 255 ] 
color predicted_pk_17 , predicted_pocket_17 
show spheres, predicted_pocket_17 
set sphere_scale , 0.3 , predicted_pocket_17 
set sphere_transparency , 0.1 , predicted_pocket_17 
# predicted pocket number 18
select predicted_pocket_18, ( chain D and resi 143+147+140+144 )  or  ( chain A and resi 174+112+106+170+171+113+109+117+114+110+167 )  or  ( chain H and resi 166+163+170 ) 
set_color predicted_pk_18, [ 0, 255, 255 ] 
color predicted_pk_18 , predicted_pocket_18 
show spheres, predicted_pocket_18 
set sphere_scale , 0.3 , predicted_pocket_18 
set sphere_transparency , 0.1 , predicted_pocket_18 
# predicted pocket number 19
select predicted_pocket_19, ( chain G and resi 106+110+103+114+107+51 )  or  ( chain F and resi 158+147+150+162 ) 
set_color predicted_pk_19, [ 0, 255, 255 ] 
color predicted_pk_19 , predicted_pocket_19 
show spheres, predicted_pocket_19 
set sphere_scale , 0.3 , predicted_pocket_19 
set sphere_transparency , 0.1 , predicted_pocket_19 
# predicted pocket number 20
select predicted_pocket_20, chain H and resi 89+161+40+160+157+43+36+149+153+39+94+164+101+145+83+98+97+152
set_color predicted_pk_20, [ 0, 255, 255 ] 
color predicted_pk_20 , predicted_pocket_20 
show spheres, predicted_pocket_20 
set sphere_scale , 0.3 , predicted_pocket_20 
set sphere_transparency , 0.1 , predicted_pocket_20 
# predicted pocket number 21
select predicted_pocket_21, chain J and resi 161+97+160+98+83+101+153+40+152+94+149+89+157+43+145+39+36+164
set_color predicted_pk_21, [ 0, 255, 255 ] 
color predicted_pk_21 , predicted_pocket_21 
show spheres, predicted_pocket_21 
set sphere_scale , 0.3 , predicted_pocket_21 
set sphere_transparency , 0.1 , predicted_pocket_21 
# predicted pocket number 22
select predicted_pocket_22, ( chain H and resi 110+107+48+51+55+52+114 )  or  ( chain B and resi 155+147+151+158+153+150 ) 
set_color predicted_pk_22, [ 0, 255, 255 ] 
color predicted_pk_22 , predicted_pocket_22 
show spheres, predicted_pocket_22 
set sphere_scale , 0.3 , predicted_pocket_22 
set sphere_transparency , 0.1 , predicted_pocket_22 
# predicted pocket number 23
select predicted_pocket_23, ( chain C and resi 34+37+41+38+32 )  or  ( chain I and resi 64+56+58+59+57+53+61+60 )  or  ( chain A and resi 85 ) 
set_color predicted_pk_23, [ 0, 255, 255 ] 
color predicted_pk_23 , predicted_pocket_23 
show spheres, predicted_pocket_23 
set sphere_scale , 0.3 , predicted_pocket_23 
set sphere_transparency , 0.1 , predicted_pocket_23 
# predicted pocket number 24
select predicted_pocket_24, ( chain F and resi 35+38+87+85+86 )  or  ( chain E and resi 74+77+73+137+78+81+67+70 )  or  ( chain A and resi 133+130+125+126+129 ) 
set_color predicted_pk_24, [ 0, 255, 255 ] 
color predicted_pk_24 , predicted_pocket_24 
show spheres, predicted_pocket_24 
set sphere_scale , 0.3 , predicted_pocket_24 
set sphere_transparency , 0.1 , predicted_pocket_24 
# predicted pocket number 25
select predicted_pocket_25, ( chain D and resi 80+85+84+77+81+144+148 )  or  ( chain A and resi 58+121+55+57+117+118 )  or  ( chain G and resi 120+124+121 ) 
set_color predicted_pk_25, [ 0, 255, 255 ] 
color predicted_pk_25 , predicted_pocket_25 
show spheres, predicted_pocket_25 
set sphere_scale , 0.3 , predicted_pocket_25 
set sphere_transparency , 0.1 , predicted_pocket_25 
# predicted pocket number 26
select predicted_pocket_26, ( chain D and resi 143+147+146+150+166+162+169+165 )  or  ( chain A and resi 106+103+110+107 ) 
set_color predicted_pk_26, [ 0, 255, 255 ] 
color predicted_pk_26 , predicted_pocket_26 
show spheres, predicted_pocket_26 
set sphere_scale , 0.3 , predicted_pocket_26 
set sphere_transparency , 0.1 , predicted_pocket_26 
# predicted pocket number 27
select predicted_pocket_27, ( chain I and resi 106+170+109+99+105+164+163+167+103+102 )  or  ( chain B and resi 163+109+112+171+162+166+174+167+159+170+113 )  or  ( chain A and resi 162 ) 
set_color predicted_pk_27, [ 0, 255, 255 ] 
color predicted_pk_27 , predicted_pocket_27 
show spheres, predicted_pocket_27 
set sphere_scale , 0.3 , predicted_pocket_27 
set sphere_transparency , 0.1 , predicted_pocket_27 
# predicted pocket number 28
select predicted_pocket_28, ( chain F and resi 70+74+66+67+63 )  or  ( chain H and resi 116+174+119+120+113+117 )  or  ( chain B and resi 140 ) 
set_color predicted_pk_28, [ 0, 255, 255 ] 
color predicted_pk_28 , predicted_pocket_28 
show spheres, predicted_pocket_28 
set sphere_scale , 0.3 , predicted_pocket_28 
set sphere_transparency , 0.1 , predicted_pocket_28 
# predicted pocket number 29
select predicted_pocket_29, ( chain F and resi 81+80+84+148+85 )  or  ( chain G and resi 118+55+117+57+58+121 )  or  ( chain A and resi 121+120+123+124 ) 
set_color predicted_pk_29, [ 0, 255, 255 ] 
color predicted_pk_29 , predicted_pocket_29 
show spheres, predicted_pocket_29 
set sphere_scale , 0.3 , predicted_pocket_29 
set sphere_transparency , 0.1 , predicted_pocket_29 
# predicted pocket number 30
select predicted_pocket_30, ( chain H and resi 120+119+179+123+129+132+128+178+180 )  or  ( chain F and resi 66+133+130+137+129 ) 
set_color predicted_pk_30, [ 0, 255, 255 ] 
color predicted_pk_30 , predicted_pocket_30 
show spheres, predicted_pocket_30 
set sphere_scale , 0.3 , predicted_pocket_30 
set sphere_transparency , 0.1 , predicted_pocket_30 
# predicted pocket number 31
select predicted_pocket_31, ( chain A and resi 60+125+124 )  or  ( chain G and resi 56+61+57+64+58+53+59 )  or  ( chain F and resi 85 ) 
set_color predicted_pk_31, [ 0, 255, 255 ] 
color predicted_pk_31 , predicted_pocket_31 
show spheres, predicted_pocket_31 
set sphere_scale , 0.3 , predicted_pocket_31 
set sphere_transparency , 0.1 , predicted_pocket_31 
# predicted pocket number 32
select predicted_pocket_32, chain E and resi 169+146+165+150+166+147+143+162
set_color predicted_pk_32, [ 0, 255, 255 ] 
color predicted_pk_32 , predicted_pocket_32 
show spheres, predicted_pocket_32 
set sphere_scale , 0.3 , predicted_pocket_32 
set sphere_transparency , 0.1 , predicted_pocket_32 
# predicted pocket number 33
select predicted_pocket_33, ( chain J and resi 137+76+141+80+140+144+77+81 )  or  ( chain B and resi 55+118+56+58 ) 
set_color predicted_pk_33, [ 0, 255, 255 ] 
color predicted_pk_33 , predicted_pocket_33 
show spheres, predicted_pocket_33 
set sphere_scale , 0.3 , predicted_pocket_33 
set sphere_transparency , 0.1 , predicted_pocket_33 
# predicted pocket number 34
select predicted_pocket_34, ( chain G and resi 119+178+180+179+128+123+129 )  or  ( chain D and resi 81+82+78 ) 
set_color predicted_pk_34, [ 0, 255, 255 ] 
color predicted_pk_34 , predicted_pocket_34 
show spheres, predicted_pocket_34 
set sphere_scale , 0.3 , predicted_pocket_34 
set sphere_transparency , 0.1 , predicted_pocket_34 
# predicted pocket number 35
select predicted_pocket_35, chain H and resi 38+39+42+78+35+82+79
set_color predicted_pk_35, [ 0, 255, 255 ] 
color predicted_pk_35 , predicted_pocket_35 
show spheres, predicted_pocket_35 
set sphere_scale , 0.3 , predicted_pocket_35 
set sphere_transparency , 0.1 , predicted_pocket_35 
# predicted pocket number 36
select predicted_pocket_36, chain G and resi 78+42+82+45+38+39+41
set_color predicted_pk_36, [ 0, 255, 255 ] 
color predicted_pk_36 , predicted_pocket_36 
show spheres, predicted_pocket_36 
set sphere_scale , 0.3 , predicted_pocket_36 
set sphere_transparency , 0.1 , predicted_pocket_36 
# predicted pocket number 37
select predicted_pocket_37, ( chain H and resi 147+165+143+169+162+140+144+146+166 )  or  ( chain D and resi 173+177 ) 
set_color predicted_pk_37, [ 0, 255, 255 ] 
color predicted_pk_37 , predicted_pocket_37 
show spheres, predicted_pocket_37 
set sphere_scale , 0.3 , predicted_pocket_37 
set sphere_transparency , 0.1 , predicted_pocket_37 
# predicted pocket number 38
select predicted_pocket_38, ( chain A and resi 74+42+82+39+79+78+75 )  or  ( chain E and resi 93+31 )  or  ( chain C and resi 75+81+46+49+82+42+68+67+74+71+78+77+45 ) 
set_color predicted_pk_38, [ 0, 255, 255 ] 
color predicted_pk_38 , predicted_pocket_38 
show spheres, predicted_pocket_38 
set sphere_scale , 0.3 , predicted_pocket_38 
set sphere_transparency , 0.1 , predicted_pocket_38 
# predicted pocket number 39
select predicted_pocket_39, ( chain F and resi 35+89+87+36+34+93+88+86 )  or  ( chain E and resi 67+70 ) 
set_color predicted_pk_39, [ 0, 255, 255 ] 
color predicted_pk_39 , predicted_pocket_39 
show spheres, predicted_pocket_39 
set sphere_scale , 0.3 , predicted_pocket_39 
set sphere_transparency , 0.1 , predicted_pocket_39 
# predicted pocket number 40
select predicted_pocket_40, ( chain A and resi 162+174+170+166+163+109+159+167 )  or  ( chain H and resi 174+167+109+106+171+113+164+102+112+170+105 ) 
set_color predicted_pk_40, [ 0, 255, 255 ] 
color predicted_pk_40 , predicted_pocket_40 
show spheres, predicted_pocket_40 
set sphere_scale , 0.3 , predicted_pocket_40 
set sphere_transparency , 0.1 , predicted_pocket_40 
# predicted pocket number 41
select predicted_pocket_41, chain C and resi 127+115+135+54+66+138+130+131+62+134+122+65+50+69
set_color predicted_pk_41, [ 0, 255, 255 ] 
color predicted_pk_41 , predicted_pocket_41 
show spheres, predicted_pocket_41 
set sphere_scale , 0.3 , predicted_pocket_41 
set sphere_transparency , 0.1 , predicted_pocket_41 
# predicted pocket number 42
select predicted_pocket_42, ( chain H and resi 110 )  or  ( chain B and resi 154+155+162+161+158+153+165+150+166 ) 
set_color predicted_pk_42, [ 0, 255, 255 ] 
color predicted_pk_42 , predicted_pocket_42 
show spheres, predicted_pocket_42 
set sphere_scale , 0.3 , predicted_pocket_42 
set sphere_transparency , 0.1 , predicted_pocket_42 
# predicted pocket number 43
select predicted_pocket_43, chain A and resi 134+131+50+138+54+66+135+130+69+62+115+65+127+122
set_color predicted_pk_43, [ 0, 255, 255 ] 
color predicted_pk_43 , predicted_pocket_43 
show spheres, predicted_pocket_43 
set sphere_scale , 0.3 , predicted_pocket_43 
set sphere_transparency , 0.1 , predicted_pocket_43 
# predicted pocket number 44
select predicted_pocket_44, ( chain A and resi 102+103+106+99 )  or  ( chain H and resi 159+162+163+166 )  or  ( chain D and resi 162 ) 
set_color predicted_pk_44, [ 0, 255, 255 ] 
color predicted_pk_44 , predicted_pocket_44 
show spheres, predicted_pocket_44 
set sphere_scale , 0.3 , predicted_pocket_44 
set sphere_transparency , 0.1 , predicted_pocket_44 
# predicted pocket number 45
select predicted_pocket_45, chain F and resi 114+110+103+107+106+51
set_color predicted_pk_45, [ 0, 255, 255 ] 
color predicted_pk_45 , predicted_pocket_45 
show spheres, predicted_pocket_45 
set sphere_scale , 0.3 , predicted_pocket_45 
set sphere_transparency , 0.1 , predicted_pocket_45 
# predicted pocket number 46
select predicted_pocket_46, ( chain B and resi 67+70+71+74 )  or  ( chain F and resi 52 ) 
set_color predicted_pk_46, [ 0, 255, 255 ] 
color predicted_pk_46 , predicted_pocket_46 
show spheres, predicted_pocket_46 
set sphere_scale , 0.3 , predicted_pocket_46 
set sphere_transparency , 0.1 , predicted_pocket_46 
# predicted pocket number 47
select predicted_pocket_47, ( chain I and resi 162+166+163+159 )  or  ( chain B and resi 106+102+99+103 )  or  ( chain J and resi 162 ) 
set_color predicted_pk_47, [ 0, 255, 255 ] 
color predicted_pk_47 , predicted_pocket_47 
show spheres, predicted_pocket_47 
set sphere_scale , 0.3 , predicted_pocket_47 
set sphere_transparency , 0.1 , predicted_pocket_47 
# predicted pocket number 48
select predicted_pocket_48, ( chain A and resi 140+147+84+144+80+148 )  or  ( chain I and resi 117+114+118+55 ) 
set_color predicted_pk_48, [ 0, 255, 255 ] 
color predicted_pk_48 , predicted_pocket_48 
show spheres, predicted_pocket_48 
set sphere_scale , 0.3 , predicted_pocket_48 
set sphere_transparency , 0.1 , predicted_pocket_48 
# predicted pocket number 49
select predicted_pocket_49, ( chain D and resi 179+180+128+132+178+126+119+129+123 )  or  ( chain H and resi 136 ) 
set_color predicted_pk_49, [ 0, 255, 255 ] 
color predicted_pk_49 , predicted_pocket_49 
show spheres, predicted_pocket_49 
set sphere_scale , 0.3 , predicted_pocket_49 
set sphere_transparency , 0.1 , predicted_pocket_49 
# predicted pocket number 50
select predicted_pocket_50, ( chain I and resi 104+100+48+44+37+107+45+41+40+103 )  or  ( chain A and resi 158 ) 
set_color predicted_pk_50, [ 0, 255, 255 ] 
color predicted_pk_50 , predicted_pocket_50 
show spheres, predicted_pocket_50 
set sphere_scale , 0.3 , predicted_pocket_50 
set sphere_transparency , 0.1 , predicted_pocket_50 
# predicted pocket number 51
select predicted_pocket_51, ( chain H and resi 124+59+125+121+60+58 )  or  ( chain F and resi 125+127+61+60+124 ) 
set_color predicted_pk_51, [ 0, 255, 255 ] 
color predicted_pk_51 , predicted_pocket_51 
show spheres, predicted_pocket_51 
set sphere_scale , 0.3 , predicted_pocket_51 
set sphere_transparency , 0.1 , predicted_pocket_51 
# predicted pocket number 52
select predicted_pocket_52, ( chain H and resi 173+177+176+132+180 )  or  ( chain D and resi 136+140+133+137 ) 
set_color predicted_pk_52, [ 0, 255, 255 ] 
color predicted_pk_52 , predicted_pocket_52 
show spheres, predicted_pocket_52 
set sphere_scale , 0.3 , predicted_pocket_52 
set sphere_transparency , 0.1 , predicted_pocket_52 
# predicted pocket number 53
select predicted_pocket_53, ( chain F and resi 89+90+87+93+88 )  or  ( chain E and resi 133+130+73+66+137+134+70 ) 
set_color predicted_pk_53, [ 0, 255, 255 ] 
color predicted_pk_53 , predicted_pocket_53 
show spheres, predicted_pocket_53 
set sphere_scale , 0.3 , predicted_pocket_53 
set sphere_transparency , 0.1 , predicted_pocket_53 
# predicted pocket number 54
select predicted_pocket_54, chain F and resi 131+62+66+54+127+69+50+65+115+138+122+134+135
set_color predicted_pk_54, [ 0, 255, 255 ] 
color predicted_pk_54 , predicted_pocket_54 
show spheres, predicted_pocket_54 
set sphere_scale , 0.3 , predicted_pocket_54 
set sphere_transparency , 0.1 , predicted_pocket_54 
# predicted pocket number 55
select predicted_pocket_55, chain I and resi 78+141+76+80+144+81+137+140+77
set_color predicted_pk_55, [ 0, 255, 255 ] 
color predicted_pk_55 , predicted_pocket_55 
show spheres, predicted_pocket_55 
set sphere_scale , 0.3 , predicted_pocket_55 
set sphere_transparency , 0.1 , predicted_pocket_55 
# predicted pocket number 56
select predicted_pocket_56, chain E and resi 132+123+119+128+179+129+178+180
set_color predicted_pk_56, [ 0, 255, 255 ] 
color predicted_pk_56 , predicted_pocket_56 
show spheres, predicted_pocket_56 
set sphere_scale , 0.3 , predicted_pocket_56 
set sphere_transparency , 0.1 , predicted_pocket_56 
# predicted pocket number 57
select predicted_pocket_57, chain D and resi 139+143+173+146+142+169+165+172+168
set_color predicted_pk_57, [ 0, 255, 255 ] 
color predicted_pk_57 , predicted_pocket_57 
show spheres, predicted_pocket_57 
set sphere_scale , 0.3 , predicted_pocket_57 
set sphere_transparency , 0.1 , predicted_pocket_57 
# predicted pocket number 58
select predicted_pocket_58, chain I and resi 180+123+128+179+178+129+126+132+119
set_color predicted_pk_58, [ 0, 255, 255 ] 
color predicted_pk_58 , predicted_pocket_58 
show spheres, predicted_pocket_58 
set sphere_scale , 0.3 , predicted_pocket_58 
set sphere_transparency , 0.1 , predicted_pocket_58 
# predicted pocket number 59
select predicted_pocket_59, ( chain A and resi 134+73+66+130+137+70+133 )  or  ( chain E and resi 82+85+78+81 ) 
set_color predicted_pk_59, [ 0, 255, 255 ] 
color predicted_pk_59 , predicted_pocket_59 
show spheres, predicted_pocket_59 
set sphere_scale , 0.3 , predicted_pocket_59 
set sphere_transparency , 0.1 , predicted_pocket_59 
# predicted pocket number 60
select predicted_pocket_60, ( chain J and resi 158+155 )  or  ( chain B and resi 104+97+40+96+41+37+100+103 ) 
set_color predicted_pk_60, [ 0, 255, 255 ] 
color predicted_pk_60 , predicted_pocket_60 
show spheres, predicted_pocket_60 
set sphere_scale , 0.3 , predicted_pocket_60 
set sphere_transparency , 0.1 , predicted_pocket_60 
# predicted pocket number 61
select predicted_pocket_61, chain D and resi 65+72+66+50+138+127+115+122+54+62+69+135+131+134
set_color predicted_pk_61, [ 0, 255, 255 ] 
color predicted_pk_61 , predicted_pocket_61 
show spheres, predicted_pocket_61 
set sphere_scale , 0.3 , predicted_pocket_61 
set sphere_transparency , 0.1 , predicted_pocket_61 
# predicted pocket number 62
select predicted_pocket_62, ( chain H and resi 110+107+106+103 )  or  ( chain B and resi 162+158 ) 
set_color predicted_pk_62, [ 0, 255, 255 ] 
color predicted_pk_62 , predicted_pocket_62 
show spheres, predicted_pocket_62 
set sphere_scale , 0.3 , predicted_pocket_62 
set sphere_transparency , 0.1 , predicted_pocket_62 
# predicted pocket number 63
select predicted_pocket_63, ( chain G and resi 55+118+117+54+114 )  or  ( chain F and resi 147+80+144+148 ) 
set_color predicted_pk_63, [ 0, 255, 255 ] 
color predicted_pk_63 , predicted_pocket_63 
show spheres, predicted_pocket_63 
set sphere_scale , 0.3 , predicted_pocket_63 
set sphere_transparency , 0.1 , predicted_pocket_63 
# predicted pocket number 64
select predicted_pocket_64, ( chain J and resi 158+155+153+154+151+88+150 )  or  ( chain B and resi 48+45 ) 
set_color predicted_pk_64, [ 0, 255, 255 ] 
color predicted_pk_64 , predicted_pocket_64 
show spheres, predicted_pocket_64 
set sphere_scale , 0.3 , predicted_pocket_64 
set sphere_transparency , 0.1 , predicted_pocket_64 
# predicted pocket number 65
select predicted_pocket_65, ( chain D and resi 173+143+166+169+170 )  or  ( chain A and resi 106 )  or  ( chain H and resi 162+166 ) 
set_color predicted_pk_65, [ 0, 255, 255 ] 
color predicted_pk_65 , predicted_pocket_65 
show spheres, predicted_pocket_65 
set sphere_scale , 0.3 , predicted_pocket_65 
set sphere_transparency , 0.1 , predicted_pocket_65 
# predicted pocket number 66
select predicted_pocket_66, chain C and resi 129+128+180+119+178+132+179+123
set_color predicted_pk_66, [ 0, 255, 255 ] 
color predicted_pk_66 , predicted_pocket_66 
show spheres, predicted_pocket_66 
set sphere_scale , 0.3 , predicted_pocket_66 
set sphere_transparency , 0.1 , predicted_pocket_66 
# predicted pocket number 67
select predicted_pocket_67, ( chain I and resi 170+177+113+109+167+112+174+171 )  or  ( chain B and resi 174+170 ) 
set_color predicted_pk_67, [ 0, 255, 255 ] 
color predicted_pk_67 , predicted_pocket_67 
show spheres, predicted_pocket_67 
set sphere_scale , 0.3 , predicted_pocket_67 
set sphere_transparency , 0.1 , predicted_pocket_67 
# predicted pocket number 68
select predicted_pocket_68, chain J and resi 66+179+54+131+57+118+128+115+63+65
set_color predicted_pk_68, [ 0, 255, 255 ] 
color predicted_pk_68 , predicted_pocket_68 
show spheres, predicted_pocket_68 
set sphere_scale , 0.3 , predicted_pocket_68 
set sphere_transparency , 0.1 , predicted_pocket_68 
# predicted pocket number 69
select predicted_pocket_69, chain G and resi 167+113+109+174+112+171+170
set_color predicted_pk_69, [ 0, 255, 255 ] 
color predicted_pk_69 , predicted_pocket_69 
show spheres, predicted_pocket_69 
set sphere_scale , 0.3 , predicted_pocket_69 
set sphere_transparency , 0.1 , predicted_pocket_69 
# predicted pocket number 70
select predicted_pocket_70, chain D and resi 171+109+167+170+112+174+113
set_color predicted_pk_70, [ 0, 255, 255 ] 
color predicted_pk_70 , predicted_pocket_70 
show spheres, predicted_pocket_70 
set sphere_scale , 0.3 , predicted_pocket_70 
set sphere_transparency , 0.1 , predicted_pocket_70 
# predicted pocket number 71
select predicted_pocket_71, ( chain B and resi 49+53+52+57+56+64 )  or  ( chain J and resi 84+80+85+81 ) 
set_color predicted_pk_71, [ 0, 255, 255 ] 
color predicted_pk_71 , predicted_pocket_71 
show spheres, predicted_pocket_71 
set sphere_scale , 0.3 , predicted_pocket_71 
set sphere_transparency , 0.1 , predicted_pocket_71 
# predicted pocket number 72
select predicted_pocket_72, chain J and resi 97+37+34+96+93+89+100+36
set_color predicted_pk_72, [ 0, 255, 255 ] 
color predicted_pk_72 , predicted_pocket_72 
show spheres, predicted_pocket_72 
set sphere_scale , 0.3 , predicted_pocket_72 
set sphere_transparency , 0.1 , predicted_pocket_72 
# predicted pocket number 73
select predicted_pocket_73, ( chain I and resi 155+159+156 )  or  ( chain B and resi 96+92+95+100+99 ) 
set_color predicted_pk_73, [ 0, 255, 255 ] 
color predicted_pk_73 , predicted_pocket_73 
show spheres, predicted_pocket_73 
set sphere_scale , 0.3 , predicted_pocket_73 
set sphere_transparency , 0.1 , predicted_pocket_73 
# predicted pocket number 74
select predicted_pocket_74, ( chain E and resi 77+81+80 )  or  ( chain A and resi 130+125+126+127+63 ) 
set_color predicted_pk_74, [ 0, 255, 255 ] 
color predicted_pk_74 , predicted_pocket_74 
show spheres, predicted_pocket_74 
set sphere_scale , 0.3 , predicted_pocket_74 
set sphere_transparency , 0.1 , predicted_pocket_74 
# predicted pocket number 75
select predicted_pocket_75, chain H and resi 40+104+41+96+100+97+37
set_color predicted_pk_75, [ 0, 255, 255 ] 
color predicted_pk_75 , predicted_pocket_75 
show spheres, predicted_pocket_75 
set sphere_scale , 0.3 , predicted_pocket_75 
set sphere_transparency , 0.1 , predicted_pocket_75 
# predicted pocket number 76
select predicted_pocket_76, chain G and resi 143+139+176+136+173+140
set_color predicted_pk_76, [ 0, 255, 255 ] 
color predicted_pk_76 , predicted_pocket_76 
show spheres, predicted_pocket_76 
set sphere_scale , 0.3 , predicted_pocket_76 
set sphere_transparency , 0.1 , predicted_pocket_76 
# predicted pocket number 77
select predicted_pocket_77, ( chain J and resi 177+179+136+173+132+176 )  or  ( chain I and resi 180+173+177+136+176+132 ) 
set_color predicted_pk_77, [ 0, 255, 255 ] 
color predicted_pk_77 , predicted_pocket_77 
show spheres, predicted_pocket_77 
set sphere_scale , 0.3 , predicted_pocket_77 
set sphere_transparency , 0.1 , predicted_pocket_77 
# predicted pocket number 78
select predicted_pocket_78, chain F and resi 102+98+167+163+160+164
set_color predicted_pk_78, [ 0, 255, 255 ] 
color predicted_pk_78 , predicted_pocket_78 
show spheres, predicted_pocket_78 
set sphere_scale , 0.3 , predicted_pocket_78 
set sphere_transparency , 0.1 , predicted_pocket_78 
select TP, true_pocket* and predicted_pocket*
color green, TP
