load ../../../PDB/pdb2uwh.ent
# ligand_0
select ligand_0, chain A and resi 1460 
set_color lg_0, [ 255, 0, 0 ] 
color lg_0 , ligand_0 
show spheres, ligand_0 
set sphere_scale , 1 , ligand_0 
set sphere_transparency , 0.1 , ligand_0 
# ligand_1
select ligand_1, chain B and resi 1460 
set_color lg_1, [ 255, 0, 0 ] 
color lg_1 , ligand_1 
show spheres, ligand_1 
set sphere_scale , 1 , ligand_1 
set sphere_transparency , 0.1 , ligand_1 
# ligand_2
select ligand_2, chain C and resi 1460 
set_color lg_2, [ 255, 0, 0 ] 
color lg_2 , ligand_2 
show spheres, ligand_2 
set sphere_scale , 1 , ligand_2 
set sphere_transparency , 0.1 , ligand_2 
# ligand_3
select ligand_3, chain D and resi 1460 
set_color lg_3, [ 255, 0, 0 ] 
color lg_3 , ligand_3 
show spheres, ligand_3 
set sphere_scale , 1 , ligand_3 
set sphere_transparency , 0.1 , ligand_3 
# ligand_4
select ligand_4, chain E and resi 1460 
set_color lg_4, [ 255, 0, 0 ] 
color lg_4 , ligand_4 
show spheres, ligand_4 
set sphere_scale , 1 , ligand_4 
set sphere_transparency , 0.1 , ligand_4 
# ligand_5
select ligand_5, chain F and resi 1460 
set_color lg_5, [ 255, 0, 0 ] 
color lg_5 , ligand_5 
show spheres, ligand_5 
set sphere_scale , 1 , ligand_5 
set sphere_transparency , 0.1 , ligand_5 
# true pocket number 0
select true_pocket_0, chain A and resi 26+20+437+330+264+188+47+87+329+29+51
set_color true_pk_0, [ 0, 0, 255 ] 
color true_pk_0 , true_pocket_0 
show spheres, true_pocket_0 
set sphere_scale , 0.3 , true_pocket_0 
set sphere_transparency , 0.1 , true_pocket_0 
# true pocket number 1
select true_pocket_1, chain B and resi 49+87+264+42+437+188+438+51+330+47+263+29
set_color true_pk_1, [ 0, 0, 255 ] 
color true_pk_1 , true_pocket_1 
show spheres, true_pocket_1 
set sphere_scale , 0.3 , true_pocket_1 
set sphere_transparency , 0.1 , true_pocket_1 
# true pocket number 2
select true_pocket_2, chain C and resi 82+87+47+20+438+188+437+26+329+51+75
set_color true_pk_2, [ 0, 0, 255 ] 
color true_pk_2 , true_pocket_2 
show spheres, true_pocket_2 
set sphere_scale , 0.3 , true_pocket_2 
set sphere_transparency , 0.1 , true_pocket_2 
# true pocket number 3
select true_pocket_3, chain D and resi 438+329+20+188+29+47+26+328+51+264+87+330
set_color true_pk_3, [ 0, 0, 255 ] 
color true_pk_3 , true_pocket_3 
show spheres, true_pocket_3 
set sphere_scale , 0.3 , true_pocket_3 
set sphere_transparency , 0.1 , true_pocket_3 
# true pocket number 4
select true_pocket_4, chain E and resi 87+26+330+437+188+329+47+42+75+49+264+51
set_color true_pk_4, [ 0, 0, 255 ] 
color true_pk_4 , true_pocket_4 
show spheres, true_pocket_4 
set sphere_scale , 0.3 , true_pocket_4 
set sphere_transparency , 0.1 , true_pocket_4 
# true pocket number 5
select true_pocket_5, chain F and resi 437+82+330+438+26+20+51+329+25+268+264+263
set_color true_pk_5, [ 0, 0, 255 ] 
color true_pk_5 , true_pocket_5 
show spheres, true_pocket_5 
set sphere_scale , 0.3 , true_pocket_5 
set sphere_transparency , 0.1 , true_pocket_5 
# predicted pocket number 0
select predicted_pocket_0, ( chain F and resi 56+383+364+375+366+385+384+380+365+386+377+387+59+369+367+368+55+370+378+381+289 )  or  ( chain C and resi 87+391+326+185+93+352+336+242+409+25+268+72+188+244+350+252+71+331+394+104+66+73+89+250+263+181+399+65+393+337+328+392+94+334+400+29+82+322+74+329+97+395+80+98+264+357+406+335+76+86+26+349+75+339+243+265+96+438+247+354+436+333+64+91+67+405+95+84+78+261+327+20+107+398+267+69+272+402+338+153+397+88+100+79+46+70+92+330+407+269+403+90+68+260+51+396+332+77+435+101+437+401 )  or  ( chain D and resi 4+34+42+12+5+31+20+32+364+3+36+7+19+28+6+8+11+18+21+372+35+9+10 ) 
set_color predicted_pk_0, [ 0, 255, 255 ] 
color predicted_pk_0 , predicted_pocket_0 
show spheres, predicted_pocket_0 
set sphere_scale , 0.3 , predicted_pocket_0 
set sphere_transparency , 0.1 , predicted_pocket_0 
# predicted pocket number 1
select predicted_pocket_1, ( chain B and resi 157+65+49+233+260+184+68+189+185+62+91+261+115+69+47+397+263+82+394+393+92+400+267+88+398+399+327+181+409+396+328+86+257+42+437+61+64+104+265+269+329+435+25+51+75+26+97+392+406+153+156+395+87+72+332+74+264+357+78+244+356+44+20+106+96+272+354+107+101+330+402+268+438+326+331+100+405+67+70+436+336+188+401+17+333+322+29 )  or  ( chain A and resi 310+297+309+313+307+312+380+306+289+316+293+292+296+299 ) 
set_color predicted_pk_1, [ 0, 255, 255 ] 
color predicted_pk_1 , predicted_pocket_1 
show spheres, predicted_pocket_1 
set sphere_scale , 0.3 , predicted_pocket_1 
set sphere_transparency , 0.1 , predicted_pocket_1 
# predicted pocket number 2
select predicted_pocket_2, ( chain A and resi 409+261+263+322+403+260+181+406+101+435+69+51+26+399+153+87+402+86+438+387+97+267+64+394+391+392+437+405+25+330+395+268+400+72+88+62+327+397+63+328+70+157+68+20+78+398+100+96+326+388+29+396+331+401+74+265+59+82+67+264+357+269+65+115+156+404+354+333+407+329+332+272+185+393+188+75+233+336+107+104 )  or  ( chain D and resi 296+312+289+293+297+299+292+316+295+380+310+313 ) 
set_color predicted_pk_2, [ 0, 255, 255 ] 
color predicted_pk_2 , predicted_pocket_2 
show spheres, predicted_pocket_2 
set sphere_scale , 0.3 , predicted_pocket_2 
set sphere_transparency , 0.1 , predicted_pocket_2 
# predicted pocket number 3
select predicted_pocket_3, chain F and resi 70+82+395+405+72+68+67+157+261+332+75+327+153+107+329+401+91+115+177+402+78+264+326+322+409+403+330+87+260+269+88+267+331+100+96+265+399+354+357+268+233+406+328+397+26+272+398+156+86+437+74+392+438+64+394+400+69+436+181+407+333+393+263
set_color predicted_pk_3, [ 0, 255, 255 ] 
color predicted_pk_3 , predicted_pocket_3 
show spheres, predicted_pocket_3 
set sphere_scale , 0.3 , predicted_pocket_3 
set sphere_transparency , 0.1 , predicted_pocket_3 
# predicted pocket number 4
select predicted_pocket_4, chain E and resi 61+157+267+78+261+67+322+62+86+153+265+268+100+263+107+329+156+75+401+398+399+72+68+405+394+406+87+395+407+106+333+357+402+96+64+392+272+332+269+354+436+74+115+26+233+260+181+82+328+330+437+393+400+327+397+403+409+69+331+264+70+438
set_color predicted_pk_4, [ 0, 255, 255 ] 
color predicted_pk_4 , predicted_pocket_4 
show spheres, predicted_pocket_4 
set sphere_scale , 0.3 , predicted_pocket_4 
set sphere_transparency , 0.1 , predicted_pocket_4 
# predicted pocket number 5
select predicted_pocket_5, chain D and resi 407+331+405+88+96+329+188+20+82+29+26+86+327+357+409+87+263+272+322+393+72+398+115+264+75+78+51+436+265+394+330+100+402+107+269+267+261+260+399+397+401+392+328+106+74+233+437+406+438+181+268+153+326+400+156+104+396+25+69+157+354
set_color predicted_pk_5, [ 0, 255, 255 ] 
color predicted_pk_5 , predicted_pocket_5 
show spheres, predicted_pocket_5 
set sphere_scale , 0.3 , predicted_pocket_5 
set sphere_transparency , 0.1 , predicted_pocket_5 
# predicted pocket number 6
select predicted_pocket_6, ( chain C and resi 373+370+364+369+362+22+23+21+30+372+28+325+19+14+18+11+431+27+34+430+31+24+371 )  or  ( chain B and resi 13+93+50+90+43+46+352+68+348+70+48+91+76+47+349+350+334+45+92+351+15+12+44 ) 
set_color predicted_pk_6, [ 0, 255, 255 ] 
color predicted_pk_6 , predicted_pocket_6 
show spheres, predicted_pocket_6 
set sphere_scale , 0.3 , predicted_pocket_6 
set sphere_transparency , 0.1 , predicted_pocket_6 
# predicted pocket number 7
select predicted_pocket_7, ( chain B and resi 94+93+245+95+92+84+244+247 )  or  ( chain C and resi 48+7+10+46+41+44+9+12+13+43+11+15+47 )  or  ( chain D and resi 278+428+285+430+431+425+282+427+284+281+429 ) 
set_color predicted_pk_7, [ 0, 255, 255 ] 
color predicted_pk_7 , predicted_pocket_7 
show spheres, predicted_pocket_7 
set sphere_scale , 0.3 , predicted_pocket_7 
set sphere_transparency , 0.1 , predicted_pocket_7 
# predicted pocket number 8
select predicted_pocket_8, ( chain F and resi 374+288+375+313+376+284+377+285+283+370+286+373+292+289 )  or  ( chain C and resi 60+2+339+59+340+63+388+66+387+343 ) 
set_color predicted_pk_8, [ 0, 255, 255 ] 
color predicted_pk_8 , predicted_pocket_8 
show spheres, predicted_pocket_8 
set sphere_scale , 0.3 , predicted_pocket_8 
set sphere_transparency , 0.1 , predicted_pocket_8 
# predicted pocket number 9
select predicted_pocket_9, chain C and resi 150+181+440+147+168+443+434+171+438+164+177+436+143+169+140+442+174+170+142+439+167+267+146+178+441
set_color predicted_pk_9, [ 0, 255, 255 ] 
color predicted_pk_9 , predicted_pocket_9 
show spheres, predicted_pocket_9 
set sphere_scale , 0.3 , predicted_pocket_9 
set sphere_transparency , 0.1 , predicted_pocket_9 
# predicted pocket number 10
select predicted_pocket_10, ( chain D and resi 449+138+452+447+134+448+133+137+130+139+421+132+446+135+450+131 )  or  ( chain E and resi 161+227+159+222+228 ) 
set_color predicted_pk_10, [ 0, 255, 255 ] 
color predicted_pk_10 , predicted_pocket_10 
show spheres, predicted_pocket_10 
set sphere_scale , 0.3 , predicted_pocket_10 
set sphere_transparency , 0.1 , predicted_pocket_10 
# predicted pocket number 11
select predicted_pocket_11, chain D and resi 171+143+440+146+147+150+267+142+167+178+140+177+169+170+168+174+164
set_color predicted_pk_11, [ 0, 255, 255 ] 
color predicted_pk_11 , predicted_pocket_11 
show spheres, predicted_pocket_11 
set sphere_scale , 0.3 , predicted_pocket_11 
set sphere_transparency , 0.1 , predicted_pocket_11 
# predicted pocket number 12
select predicted_pocket_12, ( chain A and resi 378+312+375+377+384+381+380 )  or  ( chain B and resi 240+242+231+236+102+235+243+101+239+105+241 ) 
set_color predicted_pk_12, [ 0, 255, 255 ] 
color predicted_pk_12 , predicted_pocket_12 
show spheres, predicted_pocket_12 
set sphere_scale , 0.3 , predicted_pocket_12 
set sphere_transparency , 0.1 , predicted_pocket_12 
# predicted pocket number 13
select predicted_pocket_13, chain C and resi 34+54+363+53+364+37+372+362+359+38+371+33+365
set_color predicted_pk_13, [ 0, 255, 255 ] 
color predicted_pk_13 , predicted_pocket_13 
show spheres, predicted_pocket_13 
set sphere_scale , 0.3 , predicted_pocket_13 
set sphere_transparency , 0.1 , predicted_pocket_13 
# predicted pocket number 14
select predicted_pocket_14, chain F and resi 143+142+171+168+441+147+178+170+174+169+146+443+150+140+167+442+440+434+164
set_color predicted_pk_14, [ 0, 255, 255 ] 
color predicted_pk_14 , predicted_pocket_14 
show spheres, predicted_pocket_14 
set sphere_scale , 0.3 , predicted_pocket_14 
set sphere_transparency , 0.1 , predicted_pocket_14 
# predicted pocket number 15
select predicted_pocket_15, chain A and resi 169+140+142+434+174+147+170+171+143+440+442+150+168+178+146+164+167
set_color predicted_pk_15, [ 0, 255, 255 ] 
color predicted_pk_15 , predicted_pocket_15 
show spheres, predicted_pocket_15 
set sphere_scale , 0.3 , predicted_pocket_15 
set sphere_transparency , 0.1 , predicted_pocket_15 
# predicted pocket number 16
select predicted_pocket_16, ( chain D and resi 9+8+10 )  or  ( chain C and resi 242+94+101+244+247+97+245+98 ) 
set_color predicted_pk_16, [ 0, 255, 255 ] 
color predicted_pk_16 , predicted_pocket_16 
show spheres, predicted_pocket_16 
set sphere_scale , 0.3 , predicted_pocket_16 
set sphere_transparency , 0.1 , predicted_pocket_16 
# predicted pocket number 17
select predicted_pocket_17, ( chain C and resi 186+433+434+432+24+435+182+185+23+442 )  or  ( chain B and resi 338+348 ) 
set_color predicted_pk_17, [ 0, 255, 255 ] 
color predicted_pk_17 , predicted_pocket_17 
show spheres, predicted_pocket_17 
set sphere_scale , 0.3 , predicted_pocket_17 
set sphere_transparency , 0.1 , predicted_pocket_17 
# predicted pocket number 18
select predicted_pocket_18, chain E and resi 441+140+178+167+170+443+142+440+147+164+169+146+168+445+444+434+150+174+442+171+143
set_color predicted_pk_18, [ 0, 255, 255 ] 
color predicted_pk_18 , predicted_pocket_18 
show spheres, predicted_pocket_18 
set sphere_scale , 0.3 , predicted_pocket_18 
set sphere_transparency , 0.1 , predicted_pocket_18 
# predicted pocket number 19
select predicted_pocket_19, chain E and resi 362+38+365+363+33+54+364+37+359+34+53
set_color predicted_pk_19, [ 0, 255, 255 ] 
color predicted_pk_19 , predicted_pocket_19 
show spheres, predicted_pocket_19 
set sphere_scale , 0.3 , predicted_pocket_19 
set sphere_transparency , 0.1 , predicted_pocket_19 
# predicted pocket number 20
select predicted_pocket_20, ( chain A and resi 373+370+283+285+377+289+286+313+376+282+375+284+374+380 )  or  ( chain B and resi 109+110+107+105+104+404+108 ) 
set_color predicted_pk_20, [ 0, 255, 255 ] 
color predicted_pk_20 , predicted_pocket_20 
show spheres, predicted_pocket_20 
set sphere_scale , 0.3 , predicted_pocket_20 
set sphere_transparency , 0.1 , predicted_pocket_20 
# predicted pocket number 21
select predicted_pocket_21, chain F and resi 33+38+365+34+54+37+362+363+364+359+53
set_color predicted_pk_21, [ 0, 255, 255 ] 
color predicted_pk_21 , predicted_pocket_21 
show spheres, predicted_pocket_21 
set sphere_scale , 0.3 , predicted_pocket_21 
set sphere_transparency , 0.1 , predicted_pocket_21 
# predicted pocket number 22
select predicted_pocket_22, ( chain D and resi 426+423+449+284+424+425+281+428 )  or  ( chain B and resi 94+250+248+247 ) 
set_color predicted_pk_22, [ 0, 255, 255 ] 
color predicted_pk_22 , predicted_pocket_22 
show spheres, predicted_pocket_22 
set sphere_scale , 0.3 , predicted_pocket_22 
set sphere_transparency , 0.1 , predicted_pocket_22 
# predicted pocket number 23
select predicted_pocket_23, chain D and resi 33+365+34+363+38+362+53+364+359+54+37
set_color predicted_pk_23, [ 0, 255, 255 ] 
color predicted_pk_23 , predicted_pocket_23 
show spheres, predicted_pocket_23 
set sphere_scale , 0.3 , predicted_pocket_23 
set sphere_transparency , 0.1 , predicted_pocket_23 
# predicted pocket number 24
select predicted_pocket_24, ( chain A and resi 92+93+397+244+91+94+97+96+68+336 )  or  ( chain D and resi 310 ) 
set_color predicted_pk_24, [ 0, 255, 255 ] 
color predicted_pk_24 , predicted_pocket_24 
show spheres, predicted_pocket_24 
set sphere_scale , 0.3 , predicted_pocket_24 
set sphere_transparency , 0.1 , predicted_pocket_24 
# predicted pocket number 25
select predicted_pocket_25, chain B and resi 33+53+359+54+362+34+364+365+37+38+363
set_color predicted_pk_25, [ 0, 255, 255 ] 
color predicted_pk_25 , predicted_pocket_25 
show spheres, predicted_pocket_25 
set sphere_scale , 0.3 , predicted_pocket_25 
set sphere_transparency , 0.1 , predicted_pocket_25 
# predicted pocket number 26
select predicted_pocket_26, ( chain D and resi 371+372+370+364+375+373+369 )  or  ( chain C and resi 46+194+193+13+196+14+73+77+195+191+192+45 )  or  ( chain A and resi 110+113 ) 
set_color predicted_pk_26, [ 0, 255, 255 ] 
color predicted_pk_26 , predicted_pocket_26 
show spheres, predicted_pocket_26 
set sphere_scale , 0.3 , predicted_pocket_26 
set sphere_transparency , 0.1 , predicted_pocket_26 
# predicted pocket number 27
select predicted_pocket_27, chain B and resi 134+133+424+422+135+452+450+449+447+137+448+421+131+130
set_color predicted_pk_27, [ 0, 255, 255 ] 
color predicted_pk_27 , predicted_pocket_27 
show spheres, predicted_pocket_27 
set sphere_scale , 0.3 , predicted_pocket_27 
set sphere_transparency , 0.1 , predicted_pocket_27 
# predicted pocket number 28
select predicted_pocket_28, chain A and resi 53+54+362+364+365+34+38+33+359+37+363
set_color predicted_pk_28, [ 0, 255, 255 ] 
color predicted_pk_28 , predicted_pocket_28 
show spheres, predicted_pocket_28 
set sphere_scale , 0.3 , predicted_pocket_28 
set sphere_transparency , 0.1 , predicted_pocket_28 
# predicted pocket number 29
select predicted_pocket_29, chain D and resi 91+331+332+395+397+398+68+333+62+69+67+64+61+394
set_color predicted_pk_29, [ 0, 255, 255 ] 
color predicted_pk_29 , predicted_pocket_29 
show spheres, predicted_pocket_29 
set sphere_scale , 0.3 , predicted_pocket_29 
set sphere_transparency , 0.1 , predicted_pocket_29 
# predicted pocket number 30
select predicted_pocket_30, chain F and resi 24+182+23+185+435+434+442+432+186+433
set_color predicted_pk_30, [ 0, 255, 255 ] 
color predicted_pk_30 , predicted_pocket_30 
show spheres, predicted_pocket_30 
set sphere_scale , 0.3 , predicted_pocket_30 
set sphere_transparency , 0.1 , predicted_pocket_30 
# predicted pocket number 31
select predicted_pocket_31, chain C and resi 139+135+448+138+130+134+137+424+447+446+133+449+422
set_color predicted_pk_31, [ 0, 255, 255 ] 
color predicted_pk_31 , predicted_pocket_31 
show spheres, predicted_pocket_31 
set sphere_scale , 0.3 , predicted_pocket_31 
set sphere_transparency , 0.1 , predicted_pocket_31 
# predicted pocket number 32
select predicted_pocket_32, ( chain D and resi 366+380+384+367+385+375+378+386+377+381 )  or  ( chain A and resi 239+105+235+240+101+102+236+243+242+241+231 ) 
set_color predicted_pk_32, [ 0, 255, 255 ] 
color predicted_pk_32 , predicted_pocket_32 
show spheres, predicted_pocket_32 
set sphere_scale , 0.3 , predicted_pocket_32 
set sphere_transparency , 0.1 , predicted_pocket_32 
# predicted pocket number 33
select predicted_pocket_33, ( chain F and resi 370+369+375+364 )  or  ( chain C and resi 64+62+399+391+387+396+388+394+395+403 ) 
set_color predicted_pk_33, [ 0, 255, 255 ] 
color predicted_pk_33 , predicted_pocket_33 
show spheres, predicted_pocket_33 
set sphere_scale , 0.3 , predicted_pocket_33 
set sphere_transparency , 0.1 , predicted_pocket_33 
# predicted pocket number 34
select predicted_pocket_34, ( chain E and resi 450+452+449+133+448+130+131+135 )  or  ( chain D and resi 228+227+226 ) 
set_color predicted_pk_34, [ 0, 255, 255 ] 
color predicted_pk_34 , predicted_pocket_34 
show spheres, predicted_pocket_34 
set sphere_scale , 0.3 , predicted_pocket_34 
set sphere_transparency , 0.1 , predicted_pocket_34 
# predicted pocket number 35
select predicted_pocket_35, ( chain C and resi 338+337+348+349 )  or  ( chain F and resi 380+312+296+313+293+292+289+316 )  or  ( chain D and resi 442+24+23+432+22 ) 
set_color predicted_pk_35, [ 0, 255, 255 ] 
color predicted_pk_35 , predicted_pocket_35 
show spheres, predicted_pocket_35 
set sphere_scale , 0.3 , predicted_pocket_35 
set sphere_transparency , 0.1 , predicted_pocket_35 
# predicted pocket number 36
select predicted_pocket_36, chain B and resi 440+434+181+439+164+171+147+146+174+436+167+438+150+177+170+178+143+267+142+169
set_color predicted_pk_36, [ 0, 255, 255 ] 
color predicted_pk_36 , predicted_pocket_36 
show spheres, predicted_pocket_36 
set sphere_scale , 0.3 , predicted_pocket_36 
set sphere_transparency , 0.1 , predicted_pocket_36 
# predicted pocket number 37
select predicted_pocket_37, chain E and resi 24+432+433+186+442+435+185+434+23+182
set_color predicted_pk_37, [ 0, 255, 255 ] 
color predicted_pk_37 , predicted_pocket_37 
show spheres, predicted_pocket_37 
set sphere_scale , 0.3 , predicted_pocket_37 
set sphere_transparency , 0.1 , predicted_pocket_37 
# predicted pocket number 38
select predicted_pocket_38, ( chain D and resi 34+35+37+36 )  or  ( chain C and resi 83+256+252+84+93+79 ) 
set_color predicted_pk_38, [ 0, 255, 255 ] 
color predicted_pk_38 , predicted_pocket_38 
show spheres, predicted_pocket_38 
set sphere_scale , 0.3 , predicted_pocket_38 
set sphere_transparency , 0.1 , predicted_pocket_38 
# predicted pocket number 39
select predicted_pocket_39, chain A and resi 140+138+136+147+130+139+143+137+144+168+129+133
set_color predicted_pk_39, [ 0, 255, 255 ] 
color predicted_pk_39 , predicted_pocket_39 
show spheres, predicted_pocket_39 
set sphere_scale , 0.3 , predicted_pocket_39 
set sphere_transparency , 0.1 , predicted_pocket_39 
# predicted pocket number 40
select predicted_pocket_40, ( chain D and resi 120+161+457+302+121+456+124+117 )  or  ( chain E and resi 132+452+453+128+131+455+454 ) 
set_color predicted_pk_40, [ 0, 255, 255 ] 
color predicted_pk_40 , predicted_pocket_40 
show spheres, predicted_pocket_40 
set sphere_scale , 0.3 , predicted_pocket_40 
set sphere_transparency , 0.1 , predicted_pocket_40 
# predicted pocket number 41
select predicted_pocket_41, ( chain A and resi 299+296+292+295 )  or  ( chain B and resi 387+388+65+63+62+64 ) 
set_color predicted_pk_41, [ 0, 255, 255 ] 
color predicted_pk_41 , predicted_pocket_41 
show spheres, predicted_pocket_41 
set sphere_scale , 0.3 , predicted_pocket_41 
set sphere_transparency , 0.1 , predicted_pocket_41 
# predicted pocket number 42
select predicted_pocket_42, ( chain E and resi 169+132+133+137+168+140+138+129+167 )  or  ( chain D and resi 163+166+167+218 ) 
set_color predicted_pk_42, [ 0, 255, 255 ] 
color predicted_pk_42 , predicted_pocket_42 
show spheres, predicted_pocket_42 
set sphere_scale , 0.3 , predicted_pocket_42 
set sphere_transparency , 0.1 , predicted_pocket_42 
# predicted pocket number 43
select predicted_pocket_43, chain B and resi 182+442+434+432+186+23+433+435+185+24
set_color predicted_pk_43, [ 0, 255, 255 ] 
color predicted_pk_43 , predicted_pocket_43 
show spheres, predicted_pocket_43 
set sphere_scale , 0.3 , predicted_pocket_43 
set sphere_transparency , 0.1 , predicted_pocket_43 
# predicted pocket number 44
select predicted_pocket_44, chain C and resi 407+411+312+382+309+311+308+404+315+319+408
set_color predicted_pk_44, [ 0, 255, 255 ] 
color predicted_pk_44 , predicted_pocket_44 
show spheres, predicted_pocket_44 
set sphere_scale , 0.3 , predicted_pocket_44 
set sphere_transparency , 0.1 , predicted_pocket_44 
# predicted pocket number 45
select predicted_pocket_45, chain D and resi 70+350+334+76+90+92+352
set_color predicted_pk_45, [ 0, 255, 255 ] 
color predicted_pk_45 , predicted_pocket_45 
show spheres, predicted_pocket_45 
set sphere_scale , 0.3 , predicted_pocket_45 
set sphere_transparency , 0.1 , predicted_pocket_45 
# predicted pocket number 46
select predicted_pocket_46, ( chain D and resi 136+147+138+167+140+133+137+165+168+129 )  or  ( chain E and resi 166+163+218+167 ) 
set_color predicted_pk_46, [ 0, 255, 255 ] 
color predicted_pk_46 , predicted_pocket_46 
show spheres, predicted_pocket_46 
set sphere_scale , 0.3 , predicted_pocket_46 
set sphere_transparency , 0.1 , predicted_pocket_46 
# predicted pocket number 47
select predicted_pocket_47, chain B and resi 457+124+116+456+128+303+118+125+121+120+458+117+302
set_color predicted_pk_47, [ 0, 255, 255 ] 
color predicted_pk_47 , predicted_pocket_47 
show spheres, predicted_pocket_47 
set sphere_scale , 0.3 , predicted_pocket_47 
set sphere_transparency , 0.1 , predicted_pocket_47 
# predicted pocket number 48
select predicted_pocket_48, chain F and resi 59+62+396+395+64+66+391+60+388+65+387+63
set_color predicted_pk_48, [ 0, 255, 255 ] 
color predicted_pk_48 , predicted_pocket_48 
show spheres, predicted_pocket_48 
set sphere_scale , 0.3 , predicted_pocket_48 
set sphere_transparency , 0.1 , predicted_pocket_48 
# predicted pocket number 49
select predicted_pocket_49, chain E and resi 407+308+112+319+408+311+411+109+312+309+404+315
set_color predicted_pk_49, [ 0, 255, 255 ] 
color predicted_pk_49 , predicted_pocket_49 
show spheres, predicted_pocket_49 
set sphere_scale , 0.3 , predicted_pocket_49 
set sphere_transparency , 0.1 , predicted_pocket_49 
# predicted pocket number 50
select predicted_pocket_50, chain F and resi 446+137+139+448+447+422+130+423+449+424+421+138+134+133+135
set_color predicted_pk_50, [ 0, 255, 255 ] 
color predicted_pk_50 , predicted_pocket_50 
show spheres, predicted_pocket_50 
set sphere_scale , 0.3 , predicted_pocket_50 
set sphere_transparency , 0.1 , predicted_pocket_50 
# predicted pocket number 51
select predicted_pocket_51, ( chain D and resi 407+382+315+309+379+316+308+404+408+311+411+319+318+312 )  or  ( chain A and resi 243+244 ) 
set_color predicted_pk_51, [ 0, 255, 255 ] 
color predicted_pk_51 , predicted_pocket_51 
show spheres, predicted_pocket_51 
set sphere_scale , 0.3 , predicted_pocket_51 
set sphere_transparency , 0.1 , predicted_pocket_51 
# predicted pocket number 52
select predicted_pocket_52, chain C and resi 105+115+110+236+114+106+231+232+111+108+118+156
set_color predicted_pk_52, [ 0, 255, 255 ] 
color predicted_pk_52 , predicted_pocket_52 
show spheres, predicted_pocket_52 
set sphere_scale , 0.3 , predicted_pocket_52 
set sphere_transparency , 0.1 , predicted_pocket_52 
# predicted pocket number 53
select predicted_pocket_53, ( chain A and resi 304+306+113+305+117+458+116 )  or  ( chain C and resi 195+196+197 ) 
set_color predicted_pk_53, [ 0, 255, 255 ] 
color predicted_pk_53 , predicted_pocket_53 
show spheres, predicted_pocket_53 
set sphere_scale , 0.3 , predicted_pocket_53 
set sphere_transparency , 0.1 , predicted_pocket_53 
# predicted pocket number 54
select predicted_pocket_54, ( chain C and resi 443+430+432+429+427+442+428 )  or  ( chain B and resi 3+2+4 ) 
set_color predicted_pk_54, [ 0, 255, 255 ] 
color predicted_pk_54 , predicted_pocket_54 
show spheres, predicted_pocket_54 
set sphere_scale , 0.3 , predicted_pocket_54 
set sphere_transparency , 0.1 , predicted_pocket_54 
# predicted pocket number 55
select predicted_pocket_55, ( chain D and resi 430+325+431+28+432+31+30+24+433+27+22 )  or  ( chain C and resi 350+349+351 ) 
set_color predicted_pk_55, [ 0, 255, 255 ] 
color predicted_pk_55 , predicted_pocket_55 
show spheres, predicted_pocket_55 
set sphere_scale , 0.3 , predicted_pocket_55 
set sphere_transparency , 0.1 , predicted_pocket_55 
# predicted pocket number 56
select predicted_pocket_56, ( chain A and resi 310+297+296 )  or  ( chain B and resi 97+91+92+96+244+397 ) 
set_color predicted_pk_56, [ 0, 255, 255 ] 
color predicted_pk_56 , predicted_pocket_56 
show spheres, predicted_pocket_56 
set sphere_scale , 0.3 , predicted_pocket_56 
set sphere_transparency , 0.1 , predicted_pocket_56 
# predicted pocket number 57
select predicted_pocket_57, chain D and resi 72+332+42+49+352+44+48+20+188+47+74+51+354+73
set_color predicted_pk_57, [ 0, 255, 255 ] 
color predicted_pk_57 , predicted_pocket_57 
show spheres, predicted_pocket_57 
set sphere_scale , 0.3 , predicted_pocket_57 
set sphere_transparency , 0.1 , predicted_pocket_57 
# predicted pocket number 58
select predicted_pocket_58, ( chain B and resi 245+248+246+247+241 )  or  ( chain D and resi 423+422+449+288+284 ) 
set_color predicted_pk_58, [ 0, 255, 255 ] 
color predicted_pk_58 , predicted_pocket_58 
show spheres, predicted_pocket_58 
set sphere_scale , 0.3 , predicted_pocket_58 
set sphere_transparency , 0.1 , predicted_pocket_58 
# predicted pocket number 59
select predicted_pocket_59, chain B and resi 138+133+168+129+147+139+137+140+144+130
set_color predicted_pk_59, [ 0, 255, 255 ] 
color predicted_pk_59 , predicted_pocket_59 
show spheres, predicted_pocket_59 
set sphere_scale , 0.3 , predicted_pocket_59 
set sphere_transparency , 0.1 , predicted_pocket_59 
# predicted pocket number 60
select predicted_pocket_60, chain D and resi 231+155+228+111+115+156+232+114+118+159+229+230
set_color predicted_pk_60, [ 0, 255, 255 ] 
color predicted_pk_60 , predicted_pocket_60 
show spheres, predicted_pocket_60 
set sphere_scale , 0.3 , predicted_pocket_60 
set sphere_transparency , 0.1 , predicted_pocket_60 
# predicted pocket number 61
select predicted_pocket_61, chain F and resi 117+302+300+116+458+457+303+304+120
set_color predicted_pk_61, [ 0, 255, 255 ] 
color predicted_pk_61 , predicted_pocket_61 
show spheres, predicted_pocket_61 
set sphere_scale , 0.3 , predicted_pocket_61 
set sphere_transparency , 0.1 , predicted_pocket_61 
# predicted pocket number 62
select predicted_pocket_62, chain B and resi 49+48+70+42+73+188+352+72+332+354+51+47+44+74
set_color predicted_pk_62, [ 0, 255, 255 ] 
color predicted_pk_62 , predicted_pocket_62 
show spheres, predicted_pocket_62 
set sphere_scale , 0.3 , predicted_pocket_62 
set sphere_transparency , 0.1 , predicted_pocket_62 
# predicted pocket number 63
select predicted_pocket_63, chain A and resi 226+223+219+159+222+228+158+229+230
set_color predicted_pk_63, [ 0, 255, 255 ] 
color predicted_pk_63 , predicted_pocket_63 
show spheres, predicted_pocket_63 
set sphere_scale , 0.3 , predicted_pocket_63 
set sphere_transparency , 0.1 , predicted_pocket_63 
# predicted pocket number 64
select predicted_pocket_64, chain E and resi 305+120+117+300+302+457+116+303+304+113+458
set_color predicted_pk_64, [ 0, 255, 255 ] 
color predicted_pk_64 , predicted_pocket_64 
show spheres, predicted_pocket_64 
set sphere_scale , 0.3 , predicted_pocket_64 
set sphere_transparency , 0.1 , predicted_pocket_64 
# predicted pocket number 65
select predicted_pocket_65, chain A and resi 134+449+138+447+135+130+448+139+137+422+423+424+133
set_color predicted_pk_65, [ 0, 255, 255 ] 
color predicted_pk_65 , predicted_pocket_65 
show spheres, predicted_pocket_65 
set sphere_scale , 0.3 , predicted_pocket_65 
set sphere_transparency , 0.1 , predicted_pocket_65 
# predicted pocket number 66
select predicted_pocket_66, ( chain D and resi 161+155+228+160+226+159+222 )  or  ( chain E and resi 132+133+131+134+135 ) 
set_color predicted_pk_66, [ 0, 255, 255 ] 
color predicted_pk_66 , predicted_pocket_66 
show spheres, predicted_pocket_66 
set sphere_scale , 0.3 , predicted_pocket_66 
set sphere_transparency , 0.1 , predicted_pocket_66 
# predicted pocket number 67
select predicted_pocket_67, ( chain C and resi 430+432 )  or  ( chain B and resi 5+346+41+3+348+345+2+4 ) 
set_color predicted_pk_67, [ 0, 255, 255 ] 
color predicted_pk_67 , predicted_pocket_67 
show spheres, predicted_pocket_67 
set sphere_scale , 0.3 , predicted_pocket_67 
set sphere_transparency , 0.1 , predicted_pocket_67 
# predicted pocket number 68
select predicted_pocket_68, ( chain A and resi 309+315+411+408+316+382+318+311+404+407+379+308+312+319 )  or  ( chain B and resi 244+243 ) 
set_color predicted_pk_68, [ 0, 255, 255 ] 
color predicted_pk_68 , predicted_pocket_68 
show spheres, predicted_pocket_68 
set sphere_scale , 0.3 , predicted_pocket_68 
set sphere_transparency , 0.1 , predicted_pocket_68 
# predicted pocket number 69
select predicted_pocket_69, ( chain E and resi 172+171+173+214+215+218+160+211+167 )  or  ( chain D and resi 137 ) 
set_color predicted_pk_69, [ 0, 255, 255 ] 
color predicted_pk_69 , predicted_pocket_69 
show spheres, predicted_pocket_69 
set sphere_scale , 0.3 , predicted_pocket_69 
set sphere_transparency , 0.1 , predicted_pocket_69 
# predicted pocket number 70
select predicted_pocket_70, chain E and resi 48+74+44+73+188+47+42+332+49+72+352+354+51
set_color predicted_pk_70, [ 0, 255, 255 ] 
color predicted_pk_70 , predicted_pocket_70 
show spheres, predicted_pocket_70 
set sphere_scale , 0.3 , predicted_pocket_70 
set sphere_transparency , 0.1 , predicted_pocket_70 
# predicted pocket number 71
select predicted_pocket_71, chain E and resi 236+115+231+108+114+232+105+106+110+111
set_color predicted_pk_71, [ 0, 255, 255 ] 
color predicted_pk_71 , predicted_pocket_71 
show spheres, predicted_pocket_71 
set sphere_scale , 0.3 , predicted_pocket_71 
set sphere_transparency , 0.1 , predicted_pocket_71 
# predicted pocket number 72
select predicted_pocket_72, chain E and resi 83+80+79+93+76+84+256+252
set_color predicted_pk_72, [ 0, 255, 255 ] 
color predicted_pk_72 , predicted_pocket_72 
show spheres, predicted_pocket_72 
set sphere_scale , 0.3 , predicted_pocket_72 
set sphere_transparency , 0.1 , predicted_pocket_72 
# predicted pocket number 73
select predicted_pocket_73, chain E and resi 344+1+346+2+343+340
set_color predicted_pk_73, [ 0, 255, 255 ] 
color predicted_pk_73 , predicted_pocket_73 
show spheres, predicted_pocket_73 
set sphere_scale , 0.3 , predicted_pocket_73 
set sphere_transparency , 0.1 , predicted_pocket_73 
# predicted pocket number 74
select predicted_pocket_74, chain C and resi 352+49+73+72+42+47+48+188+74+354+51+332+44
set_color predicted_pk_74, [ 0, 255, 255 ] 
color predicted_pk_74 , predicted_pocket_74 
show spheres, predicted_pocket_74 
set sphere_scale , 0.3 , predicted_pocket_74 
set sphere_transparency , 0.1 , predicted_pocket_74 
# predicted pocket number 75
select predicted_pocket_75, chain E and resi 449+133+448+130+137+134+139+135+138+447
set_color predicted_pk_75, [ 0, 255, 255 ] 
color predicted_pk_75 , predicted_pocket_75 
show spheres, predicted_pocket_75 
set sphere_scale , 0.3 , predicted_pocket_75 
set sphere_transparency , 0.1 , predicted_pocket_75 
# predicted pocket number 76
select predicted_pocket_76, chain B and resi 408+309+308+311+319+404+316+382+379+407+315+411+381+318+312
set_color predicted_pk_76, [ 0, 255, 255 ] 
color predicted_pk_76 , predicted_pocket_76 
show spheres, predicted_pocket_76 
set sphere_scale , 0.3 , predicted_pocket_76 
set sphere_transparency , 0.1 , predicted_pocket_76 
# predicted pocket number 77
select predicted_pocket_77, chain D and resi 201+205+179+190+204+186+183+182+208
set_color predicted_pk_77, [ 0, 255, 255 ] 
color predicted_pk_77 , predicted_pocket_77 
show spheres, predicted_pocket_77 
set sphere_scale , 0.3 , predicted_pocket_77 
set sphere_transparency , 0.1 , predicted_pocket_77 
# predicted pocket number 78
select predicted_pocket_78, chain A and resi 182+179+201+183+205+204+208
set_color predicted_pk_78, [ 0, 255, 255 ] 
color predicted_pk_78 , predicted_pocket_78 
show spheres, predicted_pocket_78 
set sphere_scale , 0.3 , predicted_pocket_78 
set sphere_transparency , 0.1 , predicted_pocket_78 
# predicted pocket number 79
select predicted_pocket_79, chain A and resi 156+155+231+111+118+114+159+115+110+230+232
set_color predicted_pk_79, [ 0, 255, 255 ] 
color predicted_pk_79 , predicted_pocket_79 
show spheres, predicted_pocket_79 
set sphere_scale , 0.3 , predicted_pocket_79 
set sphere_transparency , 0.1 , predicted_pocket_79 
# predicted pocket number 80
select predicted_pocket_80, chain D and resi 243+242+245+101+241+94+105+102+244+247+98+236+97+240
set_color predicted_pk_80, [ 0, 255, 255 ] 
color predicted_pk_80 , predicted_pocket_80 
show spheres, predicted_pocket_80 
set sphere_scale , 0.3 , predicted_pocket_80 
set sphere_transparency , 0.1 , predicted_pocket_80 
# predicted pocket number 81
select predicted_pocket_81, chain C and resi 186+205+183+204+182+208+179+201
set_color predicted_pk_81, [ 0, 255, 255 ] 
color predicted_pk_81 , predicted_pocket_81 
show spheres, predicted_pocket_81 
set sphere_scale , 0.3 , predicted_pocket_81 
set sphere_transparency , 0.1 , predicted_pocket_81 
# predicted pocket number 82
select predicted_pocket_82, chain F and resi 208+201+182+183+204+179+180+205
set_color predicted_pk_82, [ 0, 255, 255 ] 
color predicted_pk_82 , predicted_pocket_82 
show spheres, predicted_pocket_82 
set sphere_scale , 0.3 , predicted_pocket_82 
set sphere_transparency , 0.1 , predicted_pocket_82 
# predicted pocket number 83
select predicted_pocket_83, chain C and resi 377+380+310+312+313+289+292+296+316+293
set_color predicted_pk_83, [ 0, 255, 255 ] 
color predicted_pk_83 , predicted_pocket_83 
show spheres, predicted_pocket_83 
set sphere_scale , 0.3 , predicted_pocket_83 
set sphere_transparency , 0.1 , predicted_pocket_83 
# predicted pocket number 84
select predicted_pocket_84, chain C and resi 420+298+300+416+307+419+303+301+302
set_color predicted_pk_84, [ 0, 255, 255 ] 
color predicted_pk_84 , predicted_pocket_84 
show spheres, predicted_pocket_84 
set sphere_scale , 0.3 , predicted_pocket_84 
set sphere_transparency , 0.1 , predicted_pocket_84 
# predicted pocket number 85
select predicted_pocket_85, ( chain D and resi 173+160+167+215+211+214+172+218+171 )  or  ( chain E and resi 137 ) 
set_color predicted_pk_85, [ 0, 255, 255 ] 
color predicted_pk_85 , predicted_pocket_85 
show spheres, predicted_pocket_85 
set sphere_scale , 0.3 , predicted_pocket_85 
set sphere_transparency , 0.1 , predicted_pocket_85 
# predicted pocket number 86
select predicted_pocket_86, chain F and resi 131+452+455+456+453+127+454+128+132+420
set_color predicted_pk_86, [ 0, 255, 255 ] 
color predicted_pk_86 , predicted_pocket_86 
show spheres, predicted_pocket_86 
set sphere_scale , 0.3 , predicted_pocket_86 
set sphere_transparency , 0.1 , predicted_pocket_86 
# predicted pocket number 87
select predicted_pocket_87, chain C and resi 205+198+183+190+202+187+193+201
set_color predicted_pk_87, [ 0, 255, 255 ] 
color predicted_pk_87 , predicted_pocket_87 
show spheres, predicted_pocket_87 
set sphere_scale , 0.3 , predicted_pocket_87 
set sphere_transparency , 0.1 , predicted_pocket_87 
# predicted pocket number 88
select predicted_pocket_88, chain C and resi 218+160+214+171+211+215+167+172
set_color predicted_pk_88, [ 0, 255, 255 ] 
color predicted_pk_88 , predicted_pocket_88 
show spheres, predicted_pocket_88 
set sphere_scale , 0.3 , predicted_pocket_88 
set sphere_transparency , 0.1 , predicted_pocket_88 
# predicted pocket number 89
select predicted_pocket_89, ( chain F and resi 311+404+112+308+315+407+408+309+411+109 )  or  ( chain D and resi 197 ) 
set_color predicted_pk_89, [ 0, 255, 255 ] 
color predicted_pk_89 , predicted_pocket_89 
show spheres, predicted_pocket_89 
set sphere_scale , 0.3 , predicted_pocket_89 
set sphere_transparency , 0.1 , predicted_pocket_89 
# predicted pocket number 90
select predicted_pocket_90, chain B and resi 31+359+362+34+325+372+30+27
set_color predicted_pk_90, [ 0, 255, 255 ] 
color predicted_pk_90 , predicted_pocket_90 
show spheres, predicted_pocket_90 
set sphere_scale , 0.3 , predicted_pocket_90 
set sphere_transparency , 0.1 , predicted_pocket_90 
# predicted pocket number 91
select predicted_pocket_91, ( chain D and resi 380+285+292+289+377 )  or  ( chain A and resi 404+108+109+107+104 ) 
set_color predicted_pk_91, [ 0, 255, 255 ] 
color predicted_pk_91 , predicted_pocket_91 
show spheres, predicted_pocket_91 
set sphere_scale , 0.3 , predicted_pocket_91 
set sphere_transparency , 0.1 , predicted_pocket_91 
# predicted pocket number 92
select predicted_pocket_92, ( chain D and resi 201+199+197+196+200 )  or  ( chain F and resi 307+296+306+113+310+309+109+297+305 ) 
set_color predicted_pk_92, [ 0, 255, 255 ] 
color predicted_pk_92 , predicted_pocket_92 
show spheres, predicted_pocket_92 
set sphere_scale , 0.3 , predicted_pocket_92 
set sphere_transparency , 0.1 , predicted_pocket_92 
# predicted pocket number 93
select predicted_pocket_93, chain A and resi 49+48+71+73+76+46+354+74+188+352+47+70+350+72+51
set_color predicted_pk_93, [ 0, 255, 255 ] 
color predicted_pk_93 , predicted_pocket_93 
show spheres, predicted_pocket_93 
set sphere_scale , 0.3 , predicted_pocket_93 
set sphere_transparency , 0.1 , predicted_pocket_93 
# predicted pocket number 94
select predicted_pocket_94, ( chain C and resi 34+364+35 )  or  ( chain B and resi 191+194+45+192+193 ) 
set_color predicted_pk_94, [ 0, 255, 255 ] 
color predicted_pk_94 , predicted_pocket_94 
show spheres, predicted_pocket_94 
set sphere_scale , 0.3 , predicted_pocket_94 
set sphere_transparency , 0.1 , predicted_pocket_94 
# predicted pocket number 95
select predicted_pocket_95, chain A and resi 198+183+201+205+193+202+187+190
set_color predicted_pk_95, [ 0, 255, 255 ] 
color predicted_pk_95 , predicted_pocket_95 
show spheres, predicted_pocket_95 
set sphere_scale , 0.3 , predicted_pocket_95 
set sphere_transparency , 0.1 , predicted_pocket_95 
# predicted pocket number 96
select predicted_pocket_96, chain B and resi 282+374+284+377+285+375+373+286+283+370
set_color predicted_pk_96, [ 0, 255, 255 ] 
color predicted_pk_96 , predicted_pocket_96 
show spheres, predicted_pocket_96 
set sphere_scale , 0.3 , predicted_pocket_96 
set sphere_transparency , 0.1 , predicted_pocket_96 
# predicted pocket number 97
select predicted_pocket_97, chain E and resi 208+183+200+186+179+204+201+182+190+205+180
set_color predicted_pk_97, [ 0, 255, 255 ] 
color predicted_pk_97 , predicted_pocket_97 
show spheres, predicted_pocket_97 
set sphere_scale , 0.3 , predicted_pocket_97 
set sphere_transparency , 0.1 , predicted_pocket_97 
# predicted pocket number 98
select predicted_pocket_98, ( chain D and resi 309+306+310+312 )  or  ( chain A and resi 244+97 ) 
set_color predicted_pk_98, [ 0, 255, 255 ] 
color predicted_pk_98 , predicted_pocket_98 
show spheres, predicted_pocket_98 
set sphere_scale , 0.3 , predicted_pocket_98 
set sphere_transparency , 0.1 , predicted_pocket_98 
# predicted pocket number 99
select predicted_pocket_99, chain D and resi 223+219+228+238+158+160+234+235+224+239+226+159+220+222+230
set_color predicted_pk_99, [ 0, 255, 255 ] 
color predicted_pk_99 , predicted_pocket_99 
show spheres, predicted_pocket_99 
set sphere_scale , 0.3 , predicted_pocket_99 
set sphere_transparency , 0.1 , predicted_pocket_99 
# predicted pocket number 100
select predicted_pocket_100, chain D and resi 80+216+252+255+81+256+213+259+209
set_color predicted_pk_100, [ 0, 255, 255 ] 
color predicted_pk_100 , predicted_pocket_100 
show spheres, predicted_pocket_100 
set sphere_scale , 0.3 , predicted_pocket_100 
set sphere_transparency , 0.1 , predicted_pocket_100 
# predicted pocket number 101
select predicted_pocket_101, chain C and resi 127+420+452+131+128+454+455+453+132
set_color predicted_pk_101, [ 0, 255, 255 ] 
color predicted_pk_101 , predicted_pocket_101 
show spheres, predicted_pocket_101 
set sphere_scale , 0.3 , predicted_pocket_101 
set sphere_transparency , 0.1 , predicted_pocket_101 
# predicted pocket number 102
select predicted_pocket_102, ( chain C and resi 206+77+187+80+194+202+193 )  or  ( chain D and resi 364+369 ) 
set_color predicted_pk_102, [ 0, 255, 255 ] 
color predicted_pk_102 , predicted_pocket_102 
show spheres, predicted_pocket_102 
set sphere_scale , 0.3 , predicted_pocket_102 
set sphere_transparency , 0.1 , predicted_pocket_102 
# predicted pocket number 103
select predicted_pocket_103, ( chain D and resi 161+163+160+167+162+218+171 )  or  ( chain E and resi 137+134+136+138 ) 
set_color predicted_pk_103, [ 0, 255, 255 ] 
color predicted_pk_103 , predicted_pocket_103 
show spheres, predicted_pocket_103 
set sphere_scale , 0.3 , predicted_pocket_103 
set sphere_transparency , 0.1 , predicted_pocket_103 
# predicted pocket number 104
select predicted_pocket_104, ( chain E and resi 132+165+128+125+166 )  or  ( chain D and resi 125+166+132+165+121+124+128 ) 
set_color predicted_pk_104, [ 0, 255, 255 ] 
color predicted_pk_104 , predicted_pocket_104 
show spheres, predicted_pocket_104 
set sphere_scale , 0.3 , predicted_pocket_104 
set sphere_transparency , 0.1 , predicted_pocket_104 
# predicted pocket number 105
select predicted_pocket_105, chain A and resi 35+8+36+9+28+19+31+32
set_color predicted_pk_105, [ 0, 255, 255 ] 
color predicted_pk_105 , predicted_pocket_105 
show spheres, predicted_pocket_105 
set sphere_scale , 0.3 , predicted_pocket_105 
set sphere_transparency , 0.1 , predicted_pocket_105 
# predicted pocket number 106
select predicted_pocket_106, chain F and resi 27+34+31+362+30+372+359+325
set_color predicted_pk_106, [ 0, 255, 255 ] 
color predicted_pk_106 , predicted_pocket_106 
show spheres, predicted_pocket_106 
set sphere_scale , 0.3 , predicted_pocket_106 
set sphere_transparency , 0.1 , predicted_pocket_106 
# predicted pocket number 107
select predicted_pocket_107, chain B and resi 292+289+377+285+288+286+313
set_color predicted_pk_107, [ 0, 255, 255 ] 
color predicted_pk_107 , predicted_pocket_107 
show spheres, predicted_pocket_107 
set sphere_scale , 0.3 , predicted_pocket_107 
set sphere_transparency , 0.1 , predicted_pocket_107 
# predicted pocket number 108
select predicted_pocket_108, chain B and resi 214+173+171+218+211+172+215
set_color predicted_pk_108, [ 0, 255, 255 ] 
color predicted_pk_108 , predicted_pocket_108 
show spheres, predicted_pocket_108 
set sphere_scale , 0.3 , predicted_pocket_108 
set sphere_transparency , 0.1 , predicted_pocket_108 
# predicted pocket number 109
select predicted_pocket_109, chain D and resi 70+331+72+332+75+74+69+354+87+330
set_color predicted_pk_109, [ 0, 255, 255 ] 
color predicted_pk_109 , predicted_pocket_109 
show spheres, predicted_pocket_109 
set sphere_scale , 0.3 , predicted_pocket_109 
set sphere_transparency , 0.1 , predicted_pocket_109 
# predicted pocket number 110
select predicted_pocket_110, ( chain D and resi 21+17+18+20+14+191+189 )  or  ( chain F and resi 383+381 ) 
set_color predicted_pk_110, [ 0, 255, 255 ] 
color predicted_pk_110 , predicted_pocket_110 
show spheres, predicted_pocket_110 
set sphere_scale , 0.3 , predicted_pocket_110 
set sphere_transparency , 0.1 , predicted_pocket_110 
# predicted pocket number 111
select predicted_pocket_111, chain A and resi 372+373+278+283+362+279+324+374+325+282+431
set_color predicted_pk_111, [ 0, 255, 255 ] 
color predicted_pk_111 , predicted_pocket_111 
show spheres, predicted_pocket_111 
set sphere_scale , 0.3 , predicted_pocket_111 
set sphere_transparency , 0.1 , predicted_pocket_111 
# predicted pocket number 112
select predicted_pocket_112, ( chain C and resi 34+31+35 )  or  ( chain B and resi 45+46+73+193 ) 
set_color predicted_pk_112, [ 0, 255, 255 ] 
color predicted_pk_112 , predicted_pocket_112 
show spheres, predicted_pocket_112 
set sphere_scale , 0.3 , predicted_pocket_112 
set sphere_transparency , 0.1 , predicted_pocket_112 
# predicted pocket number 113
select predicted_pocket_113, chain B and resi 187+202+77+184+183+205+80+206
set_color predicted_pk_113, [ 0, 255, 255 ] 
color predicted_pk_113 , predicted_pocket_113 
show spheres, predicted_pocket_113 
set sphere_scale , 0.3 , predicted_pocket_113 
set sphere_transparency , 0.1 , predicted_pocket_113 
# predicted pocket number 114
select predicted_pocket_114, chain D and resi 407+391+393+322+394+395+399+392+319+396+403+390
set_color predicted_pk_114, [ 0, 255, 255 ] 
color predicted_pk_114 , predicted_pocket_114 
show spheres, predicted_pocket_114 
set sphere_scale , 0.3 , predicted_pocket_114 
set sphere_transparency , 0.1 , predicted_pocket_114 
# predicted pocket number 115
select predicted_pocket_115, chain B and resi 22+21+186+190+189+23
set_color predicted_pk_115, [ 0, 255, 255 ] 
color predicted_pk_115 , predicted_pocket_115 
show spheres, predicted_pocket_115 
set sphere_scale , 0.3 , predicted_pocket_115 
set sphere_transparency , 0.1 , predicted_pocket_115 
# predicted pocket number 116
select predicted_pocket_116, ( chain D and resi 453+450+131+132+455+452+454+128 )  or  ( chain E and resi 161+121+458 ) 
set_color predicted_pk_116, [ 0, 255, 255 ] 
color predicted_pk_116 , predicted_pocket_116 
show spheres, predicted_pocket_116 
set sphere_scale , 0.3 , predicted_pocket_116 
set sphere_transparency , 0.1 , predicted_pocket_116 
# predicted pocket number 117
select predicted_pocket_117, chain C and resi 147+144+168+139+166+138+130+137+129+140+128+167+165+133+132+125+143
set_color predicted_pk_117, [ 0, 255, 255 ] 
color predicted_pk_117 , predicted_pocket_117 
show spheres, predicted_pocket_117 
set sphere_scale , 0.3 , predicted_pocket_117 
set sphere_transparency , 0.1 , predicted_pocket_117 
# predicted pocket number 118
select predicted_pocket_118, chain D and resi 391+382+386+379+389+388+387+319+385+383+403+390
set_color predicted_pk_118, [ 0, 255, 255 ] 
color predicted_pk_118 , predicted_pocket_118 
show spheres, predicted_pocket_118 
set sphere_scale , 0.3 , predicted_pocket_118 
set sphere_transparency , 0.1 , predicted_pocket_118 
# predicted pocket number 119
select predicted_pocket_119, ( chain E and resi 217+222+221+218+225+214 )  or  ( chain D and resi 136+135 ) 
set_color predicted_pk_119, [ 0, 255, 255 ] 
color predicted_pk_119 , predicted_pocket_119 
show spheres, predicted_pocket_119 
set sphere_scale , 0.3 , predicted_pocket_119 
set sphere_transparency , 0.1 , predicted_pocket_119 
# predicted pocket number 120
select predicted_pocket_120, ( chain C and resi 9+36+8+19+11+32+35 )  or  ( chain B and resi 79+90+76 ) 
set_color predicted_pk_120, [ 0, 255, 255 ] 
color predicted_pk_120 , predicted_pocket_120 
show spheres, predicted_pocket_120 
set sphere_scale , 0.3 , predicted_pocket_120 
set sphere_transparency , 0.1 , predicted_pocket_120 
# predicted pocket number 121
select predicted_pocket_121, ( chain C and resi 407+390+392+399+391+387+393+382+394+319+403 )  or  ( chain F and resi 369 ) 
set_color predicted_pk_121, [ 0, 255, 255 ] 
color predicted_pk_121 , predicted_pocket_121 
show spheres, predicted_pocket_121 
set sphere_scale , 0.3 , predicted_pocket_121 
set sphere_transparency , 0.1 , predicted_pocket_121 
# predicted pocket number 122
select predicted_pocket_122, chain F and resi 74+437+47+330+72+26+188+49+51+354+25+73+356+352+29
set_color predicted_pk_122, [ 0, 255, 255 ] 
color predicted_pk_122 , predicted_pocket_122 
show spheres, predicted_pocket_122 
set sphere_scale , 0.3 , predicted_pocket_122 
set sphere_transparency , 0.1 , predicted_pocket_122 
# predicted pocket number 123
select predicted_pocket_123, chain F and resi 222+158+223+219+226+229+227+160+159
set_color predicted_pk_123, [ 0, 255, 255 ] 
color predicted_pk_123 , predicted_pocket_123 
show spheres, predicted_pocket_123 
set sphere_scale , 0.3 , predicted_pocket_123 
set sphere_transparency , 0.1 , predicted_pocket_123 
# predicted pocket number 124
select predicted_pocket_124, chain A and resi 211+218+172+171+214+160+173+215+167
set_color predicted_pk_124, [ 0, 255, 255 ] 
color predicted_pk_124 , predicted_pocket_124 
show spheres, predicted_pocket_124 
set sphere_scale , 0.3 , predicted_pocket_124 
set sphere_transparency , 0.1 , predicted_pocket_124 
# predicted pocket number 125
select predicted_pocket_125, ( chain A and resi 396+399+390+393+394+322+391+407+403+392+319 )  or  ( chain D and resi 292 ) 
set_color predicted_pk_125, [ 0, 255, 255 ] 
color predicted_pk_125 , predicted_pocket_125 
show spheres, predicted_pocket_125 
set sphere_scale , 0.3 , predicted_pocket_125 
set sphere_transparency , 0.1 , predicted_pocket_125 
# predicted pocket number 126
select predicted_pocket_126, chain E and resi 255+216+209+206+259+213+80+81+256+252
set_color predicted_pk_126, [ 0, 255, 255 ] 
color predicted_pk_126 , predicted_pocket_126 
show spheres, predicted_pocket_126 
set sphere_scale , 0.3 , predicted_pocket_126 
set sphere_transparency , 0.1 , predicted_pocket_126 
# predicted pocket number 127
select predicted_pocket_127, ( chain F and resi 312+383+403+382+386+388+385+387+390+389 )  or  ( chain D and resi 192+195+13+11+14+198+191 ) 
set_color predicted_pk_127, [ 0, 255, 255 ] 
color predicted_pk_127 , predicted_pocket_127 
show spheres, predicted_pocket_127 
set sphere_scale , 0.3 , predicted_pocket_127 
set sphere_transparency , 0.1 , predicted_pocket_127 
# predicted pocket number 128
select predicted_pocket_128, ( chain C and resi 186+198+183+190+20+14+18+191+21+17+189+201+45 )  or  ( chain B and resi 337+349 ) 
set_color predicted_pk_128, [ 0, 255, 255 ] 
color predicted_pk_128 , predicted_pocket_128 
show spheres, predicted_pocket_128 
set sphere_scale , 0.3 , predicted_pocket_128 
set sphere_transparency , 0.1 , predicted_pocket_128 
# predicted pocket number 129
select predicted_pocket_129, chain D and resi 5+339+50+338+346+4+347+348+340+351
set_color predicted_pk_129, [ 0, 255, 255 ] 
color predicted_pk_129 , predicted_pocket_129 
show spheres, predicted_pocket_129 
set sphere_scale , 0.3 , predicted_pocket_129 
set sphere_transparency , 0.1 , predicted_pocket_129 
# predicted pocket number 130
select predicted_pocket_130, chain B and resi 452+454+450+455+453+131
set_color predicted_pk_130, [ 0, 255, 255 ] 
color predicted_pk_130 , predicted_pocket_130 
show spheres, predicted_pocket_130 
set sphere_scale , 0.3 , predicted_pocket_130 
set sphere_transparency , 0.1 , predicted_pocket_130 
# predicted pocket number 131
select predicted_pocket_131, chain A and resi 169+182+434+174+170+179+175+178
set_color predicted_pk_131, [ 0, 255, 255 ] 
color predicted_pk_131 , predicted_pocket_131 
show spheres, predicted_pocket_131 
set sphere_scale , 0.3 , predicted_pocket_131 
set sphere_transparency , 0.1 , predicted_pocket_131 
# predicted pocket number 132
select predicted_pocket_132, chain D and resi 41+5+50+353+6+346+345+341+39+4+347+40
set_color predicted_pk_132, [ 0, 255, 255 ] 
color predicted_pk_132 , predicted_pocket_132 
show spheres, predicted_pocket_132 
set sphere_scale , 0.3 , predicted_pocket_132 
set sphere_transparency , 0.1 , predicted_pocket_132 
# predicted pocket number 133
select predicted_pocket_133, chain A and resi 5+50+345+347+39+4+41+341+346+3
set_color predicted_pk_133, [ 0, 255, 255 ] 
color predicted_pk_133 , predicted_pocket_133 
show spheres, predicted_pocket_133 
set sphere_scale , 0.3 , predicted_pocket_133 
set sphere_transparency , 0.1 , predicted_pocket_133 
# predicted pocket number 134
select predicted_pocket_134, chain A and resi 367+382+390+391+387+386+379+388+389+385+319
set_color predicted_pk_134, [ 0, 255, 255 ] 
color predicted_pk_134 , predicted_pocket_134 
show spheres, predicted_pocket_134 
set sphere_scale , 0.3 , predicted_pocket_134 
set sphere_transparency , 0.1 , predicted_pocket_134 
# predicted pocket number 135
select predicted_pocket_135, chain D and resi 205+194+190+206+198+183+193+187+202
set_color predicted_pk_135, [ 0, 255, 255 ] 
color predicted_pk_135 , predicted_pocket_135 
show spheres, predicted_pocket_135 
set sphere_scale , 0.3 , predicted_pocket_135 
set sphere_transparency , 0.1 , predicted_pocket_135 
# predicted pocket number 136
select predicted_pocket_136, chain A and resi 378+367+366+365+375+386+384+381+385
set_color predicted_pk_136, [ 0, 255, 255 ] 
color predicted_pk_136 , predicted_pocket_136 
show spheres, predicted_pocket_136 
set sphere_scale , 0.3 , predicted_pocket_136 
set sphere_transparency , 0.1 , predicted_pocket_136 
# predicted pocket number 137
select predicted_pocket_137, ( chain D and resi 423+422+448+449+424+135+447 )  or  ( chain E and resi 226+225 ) 
set_color predicted_pk_137, [ 0, 255, 255 ] 
color predicted_pk_137 , predicted_pocket_137 
show spheres, predicted_pocket_137 
set sphere_scale , 0.3 , predicted_pocket_137 
set sphere_transparency , 0.1 , predicted_pocket_137 
# predicted pocket number 138
select predicted_pocket_138, chain A and resi 211+203+207+210+206+214
set_color predicted_pk_138, [ 0, 255, 255 ] 
color predicted_pk_138 , predicted_pocket_138 
show spheres, predicted_pocket_138 
set sphere_scale , 0.3 , predicted_pocket_138 
set sphere_transparency , 0.1 , predicted_pocket_138 
# predicted pocket number 139
select predicted_pocket_139, chain A and resi 457+121+125+166+120+155+117+159+118+458+128+124+161
set_color predicted_pk_139, [ 0, 255, 255 ] 
color predicted_pk_139 , predicted_pocket_139 
show spheres, predicted_pocket_139 
set sphere_scale , 0.3 , predicted_pocket_139 
set sphere_transparency , 0.1 , predicted_pocket_139 
# predicted pocket number 140
select predicted_pocket_140, chain A and resi 17+14+18+198+189+190+21
set_color predicted_pk_140, [ 0, 255, 255 ] 
color predicted_pk_140 , predicted_pocket_140 
show spheres, predicted_pocket_140 
set sphere_scale , 0.3 , predicted_pocket_140 
set sphere_transparency , 0.1 , predicted_pocket_140 
# predicted pocket number 141
select predicted_pocket_141, chain A and resi 347+50+339+338+348+346+340+351
set_color predicted_pk_141, [ 0, 255, 255 ] 
color predicted_pk_141 , predicted_pocket_141 
show spheres, predicted_pocket_141 
set sphere_scale , 0.3 , predicted_pocket_141 
set sphere_transparency , 0.1 , predicted_pocket_141 
# predicted pocket number 142
select predicted_pocket_142, chain A and resi 20+22+23+25+185+186+188+189+21
set_color predicted_pk_142, [ 0, 255, 255 ] 
color predicted_pk_142 , predicted_pocket_142 
show spheres, predicted_pocket_142 
set sphere_scale , 0.3 , predicted_pocket_142 
set sphere_transparency , 0.1 , predicted_pocket_142 
# predicted pocket number 143
select predicted_pocket_143, chain F and resi 35+36+19+9+8+32+7
set_color predicted_pk_143, [ 0, 255, 255 ] 
color predicted_pk_143 , predicted_pocket_143 
show spheres, predicted_pocket_143 
set sphere_scale , 0.3 , predicted_pocket_143 
set sphere_transparency , 0.1 , predicted_pocket_143 
# predicted pocket number 144
select predicted_pocket_144, chain A and resi 92+93+334+90+349
set_color predicted_pk_144, [ 0, 255, 255 ] 
color predicted_pk_144 , predicted_pocket_144 
show spheres, predicted_pocket_144 
set sphere_scale , 0.3 , predicted_pocket_144 
set sphere_transparency , 0.1 , predicted_pocket_144 
# predicted pocket number 145
select predicted_pocket_145, chain E and resi 378+367+384+385+381+366+386
set_color predicted_pk_145, [ 0, 255, 255 ] 
color predicted_pk_145 , predicted_pocket_145 
show spheres, predicted_pocket_145 
set sphere_scale , 0.3 , predicted_pocket_145 
set sphere_transparency , 0.1 , predicted_pocket_145 
# predicted pocket number 146
select predicted_pocket_146, chain F and resi 255+224+251+223+238+258+254+220+234
set_color predicted_pk_146, [ 0, 255, 255 ] 
color predicted_pk_146 , predicted_pocket_146 
show spheres, predicted_pocket_146 
set sphere_scale , 0.3 , predicted_pocket_146 
set sphere_transparency , 0.1 , predicted_pocket_146 
# predicted pocket number 147
select predicted_pocket_147, chain B and resi 129+128+165+125+132+166
set_color predicted_pk_147, [ 0, 255, 255 ] 
color predicted_pk_147 , predicted_pocket_147 
show spheres, predicted_pocket_147 
set sphere_scale , 0.3 , predicted_pocket_147 
set sphere_transparency , 0.1 , predicted_pocket_147 
# predicted pocket number 148
select predicted_pocket_148, chain F and resi 291+284+288+451+418+422+423+449+421+287
set_color predicted_pk_148, [ 0, 255, 255 ] 
color predicted_pk_148 , predicted_pocket_148 
show spheres, predicted_pocket_148 
set sphere_scale , 0.3 , predicted_pocket_148 
set sphere_transparency , 0.1 , predicted_pocket_148 
# predicted pocket number 149
select predicted_pocket_149, chain C and resi 385+366+368+378+367+386+384
set_color predicted_pk_149, [ 0, 255, 255 ] 
color predicted_pk_149 , predicted_pocket_149 
show spheres, predicted_pocket_149 
set sphere_scale , 0.3 , predicted_pocket_149 
set sphere_transparency , 0.1 , predicted_pocket_149 
# predicted pocket number 150
select predicted_pocket_150, chain E and resi 36+9+31+8+32+35
set_color predicted_pk_150, [ 0, 255, 255 ] 
color predicted_pk_150 , predicted_pocket_150 
show spheres, predicted_pocket_150 
set sphere_scale , 0.3 , predicted_pocket_150 
set sphere_transparency , 0.1 , predicted_pocket_150 
# predicted pocket number 151
select predicted_pocket_151, chain C and resi 385+390+391+386+389+387+382+388+319+379+403
set_color predicted_pk_151, [ 0, 255, 255 ] 
color predicted_pk_151 , predicted_pocket_151 
show spheres, predicted_pocket_151 
set sphere_scale , 0.3 , predicted_pocket_151 
set sphere_transparency , 0.1 , predicted_pocket_151 
# predicted pocket number 152
select predicted_pocket_152, chain A and resi 17+44+73+46+77+188+45+47+193+191+187
set_color predicted_pk_152, [ 0, 255, 255 ] 
color predicted_pk_152 , predicted_pocket_152 
show spheres, predicted_pocket_152 
set sphere_scale , 0.3 , predicted_pocket_152 
set sphere_transparency , 0.1 , predicted_pocket_152 
# predicted pocket number 153
select predicted_pocket_153, chain F and resi 125+165+166+128+132+129+133
set_color predicted_pk_153, [ 0, 255, 255 ] 
color predicted_pk_153 , predicted_pocket_153 
show spheres, predicted_pocket_153 
set sphere_scale , 0.3 , predicted_pocket_153 
set sphere_transparency , 0.1 , predicted_pocket_153 
# predicted pocket number 154
select predicted_pocket_154, ( chain D and resi 454+457+301+455+458+456 )  or  ( chain E and resi 457+458 ) 
set_color predicted_pk_154, [ 0, 255, 255 ] 
color predicted_pk_154 , predicted_pocket_154 
show spheres, predicted_pocket_154 
set sphere_scale , 0.3 , predicted_pocket_154 
set sphere_transparency , 0.1 , predicted_pocket_154 
# predicted pocket number 155
select predicted_pocket_155, chain F and resi 224+251+223+230+238+229+239+235+220
set_color predicted_pk_155, [ 0, 255, 255 ] 
color predicted_pk_155 , predicted_pocket_155 
show spheres, predicted_pocket_155 
set sphere_scale , 0.3 , predicted_pocket_155 
set sphere_transparency , 0.1 , predicted_pocket_155 
# predicted pocket number 156
select predicted_pocket_156, chain C and resi 451+287+418+281+284+423+421+291+280+425+422
set_color predicted_pk_156, [ 0, 255, 255 ] 
color predicted_pk_156 , predicted_pocket_156 
show spheres, predicted_pocket_156 
set sphere_scale , 0.3 , predicted_pocket_156 
set sphere_transparency , 0.1 , predicted_pocket_156 
# predicted pocket number 157
select predicted_pocket_157, chain E and resi 51+356+74+26+330+437+188+25+329+185+435+29+354
set_color predicted_pk_157, [ 0, 255, 255 ] 
color predicted_pk_157 , predicted_pocket_157 
show spheres, predicted_pocket_157 
set sphere_scale , 0.3 , predicted_pocket_157 
set sphere_transparency , 0.1 , predicted_pocket_157 
# predicted pocket number 158
select predicted_pocket_158, chain A and resi 212+259+81+213+209+80+252+255+256
set_color predicted_pk_158, [ 0, 255, 255 ] 
color predicted_pk_158 , predicted_pocket_158 
show spheres, predicted_pocket_158 
set sphere_scale , 0.3 , predicted_pocket_158 
set sphere_transparency , 0.1 , predicted_pocket_158 
# predicted pocket number 159
select predicted_pocket_159, chain B and resi 14+191+18+21+17+198+189+20
set_color predicted_pk_159, [ 0, 255, 255 ] 
color predicted_pk_159 , predicted_pocket_159 
show spheres, predicted_pocket_159 
set sphere_scale , 0.3 , predicted_pocket_159 
set sphere_transparency , 0.1 , predicted_pocket_159 
# predicted pocket number 160
select predicted_pocket_160, chain B and resi 378+366+367+384+375+385+386
set_color predicted_pk_160, [ 0, 255, 255 ] 
color predicted_pk_160 , predicted_pocket_160 
show spheres, predicted_pocket_160 
set sphere_scale , 0.3 , predicted_pocket_160 
set sphere_transparency , 0.1 , predicted_pocket_160 
# predicted pocket number 161
select predicted_pocket_161, ( chain C and resi 36+35 )  or  ( chain B and resi 194+187+191+73+45+188+77+190+17+44+47+80+193 ) 
set_color predicted_pk_161, [ 0, 255, 255 ] 
color predicted_pk_161 , predicted_pocket_161 
show spheres, predicted_pocket_161 
set sphere_scale , 0.3 , predicted_pocket_161 
set sphere_transparency , 0.1 , predicted_pocket_161 
# predicted pocket number 162
select predicted_pocket_162, ( chain B and resi 224+217+221+255+251+220 )  or  ( chain E and resi 226+224+225 ) 
set_color predicted_pk_162, [ 0, 255, 255 ] 
color predicted_pk_162 , predicted_pocket_162 
show spheres, predicted_pocket_162 
set sphere_scale , 0.3 , predicted_pocket_162 
set sphere_transparency , 0.1 , predicted_pocket_162 
# predicted pocket number 163
select predicted_pocket_163, chain A and resi 133+125+166+129+128+132+165
set_color predicted_pk_163, [ 0, 255, 255 ] 
color predicted_pk_163 , predicted_pocket_163 
show spheres, predicted_pocket_163 
set sphere_scale , 0.3 , predicted_pocket_163 
set sphere_transparency , 0.1 , predicted_pocket_163 
# predicted pocket number 164
select predicted_pocket_164, ( chain D and resi 451+291+453+418+419+298+295 )  or  ( chain A and resi 387 ) 
set_color predicted_pk_164, [ 0, 255, 255 ] 
color predicted_pk_164 , predicted_pocket_164 
show spheres, predicted_pocket_164 
set sphere_scale , 0.3 , predicted_pocket_164 
set sphere_transparency , 0.1 , predicted_pocket_164 
# predicted pocket number 165
select predicted_pocket_165, ( chain F and resi 403+404+319+382+385+407+379+390 )  or  ( chain D and resi 195+197 ) 
set_color predicted_pk_165, [ 0, 255, 255 ] 
color predicted_pk_165 , predicted_pocket_165 
show spheres, predicted_pocket_165 
set sphere_scale , 0.3 , predicted_pocket_165 
set sphere_transparency , 0.1 , predicted_pocket_165 
# predicted pocket number 166
select predicted_pocket_166, chain C and resi 49+42+47+20+188+185+29+51+17+189+25
set_color predicted_pk_166, [ 0, 255, 255 ] 
color predicted_pk_166 , predicted_pocket_166 
show spheres, predicted_pocket_166 
set sphere_scale , 0.3 , predicted_pocket_166 
set sphere_transparency , 0.1 , predicted_pocket_166 
# predicted pocket number 167
select predicted_pocket_167, chain B and resi 104+403+404+401+107+407+400
set_color predicted_pk_167, [ 0, 255, 255 ] 
color predicted_pk_167 , predicted_pocket_167 
show spheres, predicted_pocket_167 
set sphere_scale , 0.3 , predicted_pocket_167 
set sphere_transparency , 0.1 , predicted_pocket_167 
select TP, true_pocket* and predicted_pocket*
color green, TP
