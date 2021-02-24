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
select true_pocket_0, chain A and resi 330+20+51+329+47+87+188+437+26+29+264
set_color true_pk_0, [ 0, 0, 255 ] 
color true_pk_0 , true_pocket_0 
show spheres, true_pocket_0 
set sphere_scale , 0.3 , true_pocket_0 
set sphere_transparency , 0.1 , true_pocket_0 
# true pocket number 1
select true_pocket_1, chain B and resi 87+51+29+188+438+330+49+437+264+42+263+47
set_color true_pk_1, [ 0, 0, 255 ] 
color true_pk_1 , true_pocket_1 
show spheres, true_pocket_1 
set sphere_scale , 0.3 , true_pocket_1 
set sphere_transparency , 0.1 , true_pocket_1 
# true pocket number 2
select true_pocket_2, chain C and resi 188+329+26+82+47+20+87+438+51+437+75
set_color true_pk_2, [ 0, 0, 255 ] 
color true_pk_2 , true_pocket_2 
show spheres, true_pocket_2 
set sphere_scale , 0.3 , true_pocket_2 
set sphere_transparency , 0.1 , true_pocket_2 
# true pocket number 3
select true_pocket_3, chain D and resi 20+329+29+188+328+51+26+87+438+330+47+264
set_color true_pk_3, [ 0, 0, 255 ] 
color true_pk_3 , true_pocket_3 
show spheres, true_pocket_3 
set sphere_scale , 0.3 , true_pocket_3 
set sphere_transparency , 0.1 , true_pocket_3 
# true pocket number 4
select true_pocket_4, chain E and resi 264+26+329+75+49+51+47+437+330+87+188+42
set_color true_pk_4, [ 0, 0, 255 ] 
color true_pk_4 , true_pocket_4 
show spheres, true_pocket_4 
set sphere_scale , 0.3 , true_pocket_4 
set sphere_transparency , 0.1 , true_pocket_4 
# true pocket number 5
select true_pocket_5, chain F and resi 437+51+438+20+26+329+25+82+268+264+263+330
set_color true_pk_5, [ 0, 0, 255 ] 
color true_pk_5 , true_pocket_5 
show spheres, true_pocket_5 
set sphere_scale , 0.3 , true_pocket_5 
set sphere_transparency , 0.1 , true_pocket_5 
# predicted pocket number 0
select predicted_pocket_0, ( chain F and resi 386+385+381+56+384+370+377+380+369+289+383+387+368+59+365+378+375+367+366+364+55 )  or  ( chain C and resi 333+82+69+94+153+399+401+88+25+77+436+326+337+406+29+91+51+339+349+188+400+435+328+352+67+68+65+74+393+66+260+398+336+250+272+242+437+335+72+90+357+350+95+243+87+407+394+354+405+185+93+98+396+104+403+70+73+267+329+78+244+330+261+409+397+263+392+80+84+76+46+64+391+402+327+265+268+322+247+252+338+101+264+395+26+331+438+75+100+332+89+71+107+181+86+97+20+96+92+269+79+334 )  or  ( chain D and resi 21+36+42+11+31+3+8+28+9+372+12+10+4+35+5+32+7+18+20+34+6+364+19 ) 
set_color predicted_pk_0, [ 0, 255, 255 ] 
color predicted_pk_0 , predicted_pocket_0 
show spheres, predicted_pocket_0 
set sphere_scale , 0.3 , predicted_pocket_0 
set sphere_transparency , 0.1 , predicted_pocket_0 
# predicted pocket number 1
select predicted_pocket_1, ( chain B and resi 29+326+332+156+44+115+106+405+329+62+336+438+330+69+82+64+272+399+333+86+47+185+100+68+400+401+406+49+437+264+260+87+354+92+395+97+96+257+435+394+397+268+72+88+409+78+26+101+189+74+322+393+51+188+356+20+42+436+181+107+67+65+233+263+75+157+25+396+265+267+402+392+91+261+17+70+398+331+269+61+184+327+328+153+244+104+357 )  or  ( chain A and resi 306+380+292+312+297+310+309+316+289+307+293+313+296+299 ) 
set_color predicted_pk_1, [ 0, 255, 255 ] 
color predicted_pk_1 , predicted_pocket_1 
show spheres, predicted_pocket_1 
set sphere_scale , 0.3 , predicted_pocket_1 
set sphere_transparency , 0.1 , predicted_pocket_1 
# predicted pocket number 2
select predicted_pocket_2, ( chain A and resi 387+322+403+328+264+396+115+354+75+263+399+69+327+29+65+407+82+336+233+25+51+329+88+405+326+96+272+269+395+357+70+404+157+392+97+100+331+409+78+435+402+261+260+393+437+62+330+68+104+397+86+394+153+181+26+406+333+401+398+438+101+87+63+400+20+185+156+267+59+265+332+67+268+74+391+388+72+188+107+64 )  or  ( chain D and resi 299+312+296+316+297+292+295+313+380+289+293+310 ) 
set_color predicted_pk_2, [ 0, 255, 255 ] 
color predicted_pk_2 , predicted_pocket_2 
show spheres, predicted_pocket_2 
set sphere_scale , 0.3 , predicted_pocket_2 
set sphere_transparency , 0.1 , predicted_pocket_2 
# predicted pocket number 3
select predicted_pocket_3, chain F and resi 399+354+74+153+75+331+405+70+397+265+82+263+268+326+91+400+269+233+330+96+322+64+157+437+436+68+26+328+333+87+261+403+264+392+406+72+332+395+177+260+181+401+267+69+329+100+394+357+272+107+67+402+88+78+438+327+115+409+156+398+407+86+393
set_color predicted_pk_3, [ 0, 255, 255 ] 
color predicted_pk_3 , predicted_pocket_3 
show spheres, predicted_pocket_3 
set sphere_scale , 0.3 , predicted_pocket_3 
set sphere_transparency , 0.1 , predicted_pocket_3 
# predicted pocket number 4
select predicted_pocket_4, chain E and resi 269+26+394+75+68+399+86+397+100+357+403+181+268+87+260+61+69+328+72+115+267+393+406+78+272+437+392+156+74+409+233+264+106+333+82+261+157+322+401+327+407+263+395+265+405+402+398+62+153+332+96+329+64+354+67+400+107+331+330+70+436+438
set_color predicted_pk_4, [ 0, 255, 255 ] 
color predicted_pk_4 , predicted_pocket_4 
show spheres, predicted_pocket_4 
set sphere_scale , 0.3 , predicted_pocket_4 
set sphere_transparency , 0.1 , predicted_pocket_4 
# predicted pocket number 5
select predicted_pocket_5, chain D and resi 20+96+267+327+263+392+233+153+328+188+51+86+357+82+322+88+181+100+402+75+29+437+397+407+269+78+409+74+87+26+330+394+406+69+265+272+401+393+396+115+268+156+157+436+104+405+329+398+107+72+25+354+261+399+106+260+400+331+326+438+264
set_color predicted_pk_5, [ 0, 255, 255 ] 
color predicted_pk_5 , predicted_pocket_5 
show spheres, predicted_pocket_5 
set sphere_scale , 0.3 , predicted_pocket_5 
set sphere_transparency , 0.1 , predicted_pocket_5 
# predicted pocket number 6
select predicted_pocket_6, ( chain B and resi 46+352+68+348+44+45+13+76+48+349+91+70+43+15+334+350+351+90+50+92+93+12+47 )  or  ( chain C and resi 30+431+371+34+22+372+369+31+325+28+21+364+19+24+18+11+430+370+362+27+14+23+373 ) 
set_color predicted_pk_6, [ 0, 255, 255 ] 
color predicted_pk_6 , predicted_pocket_6 
show spheres, predicted_pocket_6 
set sphere_scale , 0.3 , predicted_pocket_6 
set sphere_transparency , 0.1 , predicted_pocket_6 
# predicted pocket number 7
select predicted_pocket_7, ( chain D and resi 429+281+427+285+278+425+284+428+282+431+430 )  or  ( chain C and resi 46+7+9+41+15+48+43+13+44+11+10+47+12 )  or  ( chain B and resi 84+95+247+94+245+244+92+93 ) 
set_color predicted_pk_7, [ 0, 255, 255 ] 
color predicted_pk_7 , predicted_pocket_7 
show spheres, predicted_pocket_7 
set sphere_scale , 0.3 , predicted_pocket_7 
set sphere_transparency , 0.1 , predicted_pocket_7 
# predicted pocket number 8
select predicted_pocket_8, ( chain F and resi 292+288+370+377+376+284+374+286+283+373+375+285+289+313 )  or  ( chain C and resi 2+388+60+343+63+340+339+59+66+387 ) 
set_color predicted_pk_8, [ 0, 255, 255 ] 
color predicted_pk_8 , predicted_pocket_8 
show spheres, predicted_pocket_8 
set sphere_scale , 0.3 , predicted_pocket_8 
set sphere_transparency , 0.1 , predicted_pocket_8 
# predicted pocket number 9
select predicted_pocket_9, chain C and resi 140+442+178+167+169+434+142+440+267+146+177+168+174+436+439+164+438+170+441+443+181+150+143+147+171
set_color predicted_pk_9, [ 0, 255, 255 ] 
color predicted_pk_9 , predicted_pocket_9 
show spheres, predicted_pocket_9 
set sphere_scale , 0.3 , predicted_pocket_9 
set sphere_transparency , 0.1 , predicted_pocket_9 
# predicted pocket number 10
select predicted_pocket_10, ( chain D and resi 421+450+448+134+446+132+135+452+139+138+447+130+449+133+137+131 )  or  ( chain E and resi 227+222+228+161+159 ) 
set_color predicted_pk_10, [ 0, 255, 255 ] 
color predicted_pk_10 , predicted_pocket_10 
show spheres, predicted_pocket_10 
set sphere_scale , 0.3 , predicted_pocket_10 
set sphere_transparency , 0.1 , predicted_pocket_10 
# predicted pocket number 11
select predicted_pocket_11, chain D and resi 170+171+267+147+140+146+169+142+440+164+150+167+178+168+174+143+177
set_color predicted_pk_11, [ 0, 255, 255 ] 
color predicted_pk_11 , predicted_pocket_11 
show spheres, predicted_pocket_11 
set sphere_scale , 0.3 , predicted_pocket_11 
set sphere_transparency , 0.1 , predicted_pocket_11 
# predicted pocket number 12
select predicted_pocket_12, ( chain A and resi 381+384+380+377+312+375+378 )  or  ( chain B and resi 240+105+231+241+235+243+242+102+236+239+101 ) 
set_color predicted_pk_12, [ 0, 255, 255 ] 
color predicted_pk_12 , predicted_pocket_12 
show spheres, predicted_pocket_12 
set sphere_scale , 0.3 , predicted_pocket_12 
set sphere_transparency , 0.1 , predicted_pocket_12 
# predicted pocket number 13
select predicted_pocket_13, chain C and resi 362+364+359+37+38+54+372+53+33+371+34+365+363
set_color predicted_pk_13, [ 0, 255, 255 ] 
color predicted_pk_13 , predicted_pocket_13 
show spheres, predicted_pocket_13 
set sphere_scale , 0.3 , predicted_pocket_13 
set sphere_transparency , 0.1 , predicted_pocket_13 
# predicted pocket number 14
select predicted_pocket_14, chain F and resi 169+150+174+140+167+442+171+142+178+164+443+143+168+440+434+441+146+147+170
set_color predicted_pk_14, [ 0, 255, 255 ] 
color predicted_pk_14 , predicted_pocket_14 
show spheres, predicted_pocket_14 
set sphere_scale , 0.3 , predicted_pocket_14 
set sphere_transparency , 0.1 , predicted_pocket_14 
# predicted pocket number 15
select predicted_pocket_15, chain A and resi 178+143+171+140+146+150+170+168+174+442+142+440+167+169+147+164+434
set_color predicted_pk_15, [ 0, 255, 255 ] 
color predicted_pk_15 , predicted_pocket_15 
show spheres, predicted_pocket_15 
set sphere_scale , 0.3 , predicted_pocket_15 
set sphere_transparency , 0.1 , predicted_pocket_15 
# predicted pocket number 16
select predicted_pocket_16, ( chain D and resi 10+9+8 )  or  ( chain C and resi 98+247+244+97+242+245+101+94 ) 
set_color predicted_pk_16, [ 0, 255, 255 ] 
color predicted_pk_16 , predicted_pocket_16 
show spheres, predicted_pocket_16 
set sphere_scale , 0.3 , predicted_pocket_16 
set sphere_transparency , 0.1 , predicted_pocket_16 
# predicted pocket number 17
select predicted_pocket_17, ( chain C and resi 185+435+432+186+442+24+23+182+434+433 )  or  ( chain B and resi 338+348 ) 
set_color predicted_pk_17, [ 0, 255, 255 ] 
color predicted_pk_17 , predicted_pocket_17 
show spheres, predicted_pocket_17 
set sphere_scale , 0.3 , predicted_pocket_17 
set sphere_transparency , 0.1 , predicted_pocket_17 
# predicted pocket number 18
select predicted_pocket_18, chain E and resi 169+146+445+147+167+440+171+178+142+174+434+443+168+442+441+164+143+444+140+170+150
set_color predicted_pk_18, [ 0, 255, 255 ] 
color predicted_pk_18 , predicted_pocket_18 
show spheres, predicted_pocket_18 
set sphere_scale , 0.3 , predicted_pocket_18 
set sphere_transparency , 0.1 , predicted_pocket_18 
# predicted pocket number 19
select predicted_pocket_19, chain E and resi 364+33+362+38+359+34+53+54+365+37+363
set_color predicted_pk_19, [ 0, 255, 255 ] 
color predicted_pk_19 , predicted_pocket_19 
show spheres, predicted_pocket_19 
set sphere_scale , 0.3 , predicted_pocket_19 
set sphere_transparency , 0.1 , predicted_pocket_19 
# predicted pocket number 20
select predicted_pocket_20, ( chain B and resi 404+105+108+109+110+104+107 )  or  ( chain A and resi 370+289+283+284+373+313+374+377+282+375+376+285+380+286 ) 
set_color predicted_pk_20, [ 0, 255, 255 ] 
color predicted_pk_20 , predicted_pocket_20 
show spheres, predicted_pocket_20 
set sphere_scale , 0.3 , predicted_pocket_20 
set sphere_transparency , 0.1 , predicted_pocket_20 
# predicted pocket number 21
select predicted_pocket_21, chain F and resi 38+364+33+54+34+37+363+365+53+359+362
set_color predicted_pk_21, [ 0, 255, 255 ] 
color predicted_pk_21 , predicted_pocket_21 
show spheres, predicted_pocket_21 
set sphere_scale , 0.3 , predicted_pocket_21 
set sphere_transparency , 0.1 , predicted_pocket_21 
# predicted pocket number 22
select predicted_pocket_22, ( chain B and resi 94+248+247+250 )  or  ( chain D and resi 426+284+423+425+449+428+281+424 ) 
set_color predicted_pk_22, [ 0, 255, 255 ] 
color predicted_pk_22 , predicted_pocket_22 
show spheres, predicted_pocket_22 
set sphere_scale , 0.3 , predicted_pocket_22 
set sphere_transparency , 0.1 , predicted_pocket_22 
# predicted pocket number 23
select predicted_pocket_23, chain D and resi 363+359+365+34+37+33+364+38+53+54+362
set_color predicted_pk_23, [ 0, 255, 255 ] 
color predicted_pk_23 , predicted_pocket_23 
show spheres, predicted_pocket_23 
set sphere_scale , 0.3 , predicted_pocket_23 
set sphere_transparency , 0.1 , predicted_pocket_23 
# predicted pocket number 24
select predicted_pocket_24, ( chain A and resi 91+244+93+68+96+336+397+92+97+94 )  or  ( chain D and resi 310 ) 
set_color predicted_pk_24, [ 0, 255, 255 ] 
color predicted_pk_24 , predicted_pocket_24 
show spheres, predicted_pocket_24 
set sphere_scale , 0.3 , predicted_pocket_24 
set sphere_transparency , 0.1 , predicted_pocket_24 
# predicted pocket number 25
select predicted_pocket_25, chain B and resi 364+54+33+53+38+365+362+37+34+363+359
set_color predicted_pk_25, [ 0, 255, 255 ] 
color predicted_pk_25 , predicted_pocket_25 
show spheres, predicted_pocket_25 
set sphere_scale , 0.3 , predicted_pocket_25 
set sphere_transparency , 0.1 , predicted_pocket_25 
# predicted pocket number 26
select predicted_pocket_26, ( chain C and resi 46+193+194+73+77+196+13+192+191+14+45+195 )  or  ( chain A and resi 110+113 )  or  ( chain D and resi 370+375+373+372+364+371+369 ) 
set_color predicted_pk_26, [ 0, 255, 255 ] 
color predicted_pk_26 , predicted_pocket_26 
show spheres, predicted_pocket_26 
set sphere_scale , 0.3 , predicted_pocket_26 
set sphere_transparency , 0.1 , predicted_pocket_26 
# predicted pocket number 27
select predicted_pocket_27, chain B and resi 137+448+452+134+421+131+424+450+133+449+135+130+422+447
set_color predicted_pk_27, [ 0, 255, 255 ] 
color predicted_pk_27 , predicted_pocket_27 
show spheres, predicted_pocket_27 
set sphere_scale , 0.3 , predicted_pocket_27 
set sphere_transparency , 0.1 , predicted_pocket_27 
# predicted pocket number 28
select predicted_pocket_28, chain A and resi 38+362+33+364+53+359+34+37+54+365+363
set_color predicted_pk_28, [ 0, 255, 255 ] 
color predicted_pk_28 , predicted_pocket_28 
show spheres, predicted_pocket_28 
set sphere_scale , 0.3 , predicted_pocket_28 
set sphere_transparency , 0.1 , predicted_pocket_28 
# predicted pocket number 29
select predicted_pocket_29, chain D and resi 398+67+332+91+397+331+333+64+395+61+68+62+394+69
set_color predicted_pk_29, [ 0, 255, 255 ] 
color predicted_pk_29 , predicted_pocket_29 
show spheres, predicted_pocket_29 
set sphere_scale , 0.3 , predicted_pocket_29 
set sphere_transparency , 0.1 , predicted_pocket_29 
# predicted pocket number 30
select predicted_pocket_30, chain F and resi 433+24+435+442+185+432+182+186+434+23
set_color predicted_pk_30, [ 0, 255, 255 ] 
color predicted_pk_30 , predicted_pocket_30 
show spheres, predicted_pocket_30 
set sphere_scale , 0.3 , predicted_pocket_30 
set sphere_transparency , 0.1 , predicted_pocket_30 
# predicted pocket number 31
select predicted_pocket_31, chain C and resi 137+424+138+133+449+446+135+448+130+139+134+447+422
set_color predicted_pk_31, [ 0, 255, 255 ] 
color predicted_pk_31 , predicted_pocket_31 
show spheres, predicted_pocket_31 
set sphere_scale , 0.3 , predicted_pocket_31 
set sphere_transparency , 0.1 , predicted_pocket_31 
# predicted pocket number 32
select predicted_pocket_32, ( chain D and resi 380+378+367+375+385+377+381+384+366+386 )  or  ( chain A and resi 236+101+243+241+239+242+105+102+231+235+240 ) 
set_color predicted_pk_32, [ 0, 255, 255 ] 
color predicted_pk_32 , predicted_pocket_32 
show spheres, predicted_pocket_32 
set sphere_scale , 0.3 , predicted_pocket_32 
set sphere_transparency , 0.1 , predicted_pocket_32 
# predicted pocket number 33
select predicted_pocket_33, ( chain F and resi 370+364+375+369 )  or  ( chain C and resi 388+395+399+396+62+391+64+394+403+387 ) 
set_color predicted_pk_33, [ 0, 255, 255 ] 
color predicted_pk_33 , predicted_pocket_33 
show spheres, predicted_pocket_33 
set sphere_scale , 0.3 , predicted_pocket_33 
set sphere_transparency , 0.1 , predicted_pocket_33 
# predicted pocket number 34
select predicted_pocket_34, ( chain E and resi 135+133+131+450+130+449+452+448 )  or  ( chain D and resi 226+228+227 ) 
set_color predicted_pk_34, [ 0, 255, 255 ] 
color predicted_pk_34 , predicted_pocket_34 
show spheres, predicted_pocket_34 
set sphere_scale , 0.3 , predicted_pocket_34 
set sphere_transparency , 0.1 , predicted_pocket_34 
# predicted pocket number 35
select predicted_pocket_35, ( chain C and resi 348+337+338+349 )  or  ( chain D and resi 442+24+23+432+22 )  or  ( chain F and resi 312+292+380+296+293+316+313+289 ) 
set_color predicted_pk_35, [ 0, 255, 255 ] 
color predicted_pk_35 , predicted_pocket_35 
show spheres, predicted_pocket_35 
set sphere_scale , 0.3 , predicted_pocket_35 
set sphere_transparency , 0.1 , predicted_pocket_35 
# predicted pocket number 36
select predicted_pocket_36, chain B and resi 147+439+146+436+170+177+438+164+174+171+181+440+143+169+167+267+434+142+178+150
set_color predicted_pk_36, [ 0, 255, 255 ] 
color predicted_pk_36 , predicted_pocket_36 
show spheres, predicted_pocket_36 
set sphere_scale , 0.3 , predicted_pocket_36 
set sphere_transparency , 0.1 , predicted_pocket_36 
# predicted pocket number 37
select predicted_pocket_37, chain E and resi 434+24+23+433+435+442+185+182+186+432
set_color predicted_pk_37, [ 0, 255, 255 ] 
color predicted_pk_37 , predicted_pocket_37 
show spheres, predicted_pocket_37 
set sphere_scale , 0.3 , predicted_pocket_37 
set sphere_transparency , 0.1 , predicted_pocket_37 
# predicted pocket number 38
select predicted_pocket_38, ( chain D and resi 36+34+37+35 )  or  ( chain C and resi 93+256+84+252+83+79 ) 
set_color predicted_pk_38, [ 0, 255, 255 ] 
color predicted_pk_38 , predicted_pocket_38 
show spheres, predicted_pocket_38 
set sphere_scale , 0.3 , predicted_pocket_38 
set sphere_transparency , 0.1 , predicted_pocket_38 
# predicted pocket number 39
select predicted_pocket_39, chain A and resi 143+129+147+139+133+138+168+130+137+140+144+136
set_color predicted_pk_39, [ 0, 255, 255 ] 
color predicted_pk_39 , predicted_pocket_39 
show spheres, predicted_pocket_39 
set sphere_scale , 0.3 , predicted_pocket_39 
set sphere_transparency , 0.1 , predicted_pocket_39 
# predicted pocket number 40
select predicted_pocket_40, ( chain D and resi 124+457+117+120+121+302+456+161 )  or  ( chain E and resi 455+454+453+128+132+131+452 ) 
set_color predicted_pk_40, [ 0, 255, 255 ] 
color predicted_pk_40 , predicted_pocket_40 
show spheres, predicted_pocket_40 
set sphere_scale , 0.3 , predicted_pocket_40 
set sphere_transparency , 0.1 , predicted_pocket_40 
# predicted pocket number 41
select predicted_pocket_41, ( chain B and resi 387+62+65+388+64+63 )  or  ( chain A and resi 292+296+299+295 ) 
set_color predicted_pk_41, [ 0, 255, 255 ] 
color predicted_pk_41 , predicted_pocket_41 
show spheres, predicted_pocket_41 
set sphere_scale , 0.3 , predicted_pocket_41 
set sphere_transparency , 0.1 , predicted_pocket_41 
# predicted pocket number 42
select predicted_pocket_42, ( chain D and resi 218+167+166+163 )  or  ( chain E and resi 133+169+137+138+168+140+129+132+167 ) 
set_color predicted_pk_42, [ 0, 255, 255 ] 
color predicted_pk_42 , predicted_pocket_42 
show spheres, predicted_pocket_42 
set sphere_scale , 0.3 , predicted_pocket_42 
set sphere_transparency , 0.1 , predicted_pocket_42 
# predicted pocket number 43
select predicted_pocket_43, chain B and resi 442+23+24+432+185+182+434+435+186+433
set_color predicted_pk_43, [ 0, 255, 255 ] 
color predicted_pk_43 , predicted_pocket_43 
show spheres, predicted_pocket_43 
set sphere_scale , 0.3 , predicted_pocket_43 
set sphere_transparency , 0.1 , predicted_pocket_43 
# predicted pocket number 44
select predicted_pocket_44, chain C and resi 382+319+315+309+312+408+407+411+404+308+311
set_color predicted_pk_44, [ 0, 255, 255 ] 
color predicted_pk_44 , predicted_pocket_44 
show spheres, predicted_pocket_44 
set sphere_scale , 0.3 , predicted_pocket_44 
set sphere_transparency , 0.1 , predicted_pocket_44 
# predicted pocket number 45
select predicted_pocket_45, chain D and resi 70+352+350+92+76+334+90
set_color predicted_pk_45, [ 0, 255, 255 ] 
color predicted_pk_45 , predicted_pocket_45 
show spheres, predicted_pocket_45 
set sphere_scale , 0.3 , predicted_pocket_45 
set sphere_transparency , 0.1 , predicted_pocket_45 
# predicted pocket number 46
select predicted_pocket_46, ( chain D and resi 147+140+129+138+167+137+168+165+133+136 )  or  ( chain E and resi 163+218+166+167 ) 
set_color predicted_pk_46, [ 0, 255, 255 ] 
color predicted_pk_46 , predicted_pocket_46 
show spheres, predicted_pocket_46 
set sphere_scale , 0.3 , predicted_pocket_46 
set sphere_transparency , 0.1 , predicted_pocket_46 
# predicted pocket number 47
select predicted_pocket_47, chain B and resi 457+124+121+125+302+117+456+128+303+118+458+116+120
set_color predicted_pk_47, [ 0, 255, 255 ] 
color predicted_pk_47 , predicted_pocket_47 
show spheres, predicted_pocket_47 
set sphere_scale , 0.3 , predicted_pocket_47 
set sphere_transparency , 0.1 , predicted_pocket_47 
# predicted pocket number 48
select predicted_pocket_48, chain F and resi 65+62+59+391+66+387+63+395+64+388+60+396
set_color predicted_pk_48, [ 0, 255, 255 ] 
color predicted_pk_48 , predicted_pocket_48 
show spheres, predicted_pocket_48 
set sphere_scale , 0.3 , predicted_pocket_48 
set sphere_transparency , 0.1 , predicted_pocket_48 
# predicted pocket number 49
select predicted_pocket_49, chain E and resi 309+404+308+315+411+407+311+408+312+112+319+109
set_color predicted_pk_49, [ 0, 255, 255 ] 
color predicted_pk_49 , predicted_pocket_49 
show spheres, predicted_pocket_49 
set sphere_scale , 0.3 , predicted_pocket_49 
set sphere_transparency , 0.1 , predicted_pocket_49 
# predicted pocket number 50
select predicted_pocket_50, chain F and resi 446+130+424+449+133+423+421+139+134+422+447+448+137+135+138
set_color predicted_pk_50, [ 0, 255, 255 ] 
color predicted_pk_50 , predicted_pocket_50 
show spheres, predicted_pocket_50 
set sphere_scale , 0.3 , predicted_pocket_50 
set sphere_transparency , 0.1 , predicted_pocket_50 
# predicted pocket number 51
select predicted_pocket_51, ( chain D and resi 308+382+407+411+316+404+319+318+312+408+309+379+315+311 )  or  ( chain A and resi 244+243 ) 
set_color predicted_pk_51, [ 0, 255, 255 ] 
color predicted_pk_51 , predicted_pocket_51 
show spheres, predicted_pocket_51 
set sphere_scale , 0.3 , predicted_pocket_51 
set sphere_transparency , 0.1 , predicted_pocket_51 
# predicted pocket number 52
select predicted_pocket_52, chain C and resi 111+118+236+114+110+231+156+115+108+105+232+106
set_color predicted_pk_52, [ 0, 255, 255 ] 
color predicted_pk_52 , predicted_pocket_52 
show spheres, predicted_pocket_52 
set sphere_scale , 0.3 , predicted_pocket_52 
set sphere_transparency , 0.1 , predicted_pocket_52 
# predicted pocket number 53
select predicted_pocket_53, ( chain A and resi 304+458+305+117+116+306+113 )  or  ( chain C and resi 196+195+197 ) 
set_color predicted_pk_53, [ 0, 255, 255 ] 
color predicted_pk_53 , predicted_pocket_53 
show spheres, predicted_pocket_53 
set sphere_scale , 0.3 , predicted_pocket_53 
set sphere_transparency , 0.1 , predicted_pocket_53 
# predicted pocket number 54
select predicted_pocket_54, ( chain C and resi 427+432+442+429+428+443+430 )  or  ( chain B and resi 2+3+4 ) 
set_color predicted_pk_54, [ 0, 255, 255 ] 
color predicted_pk_54 , predicted_pocket_54 
show spheres, predicted_pocket_54 
set sphere_scale , 0.3 , predicted_pocket_54 
set sphere_transparency , 0.1 , predicted_pocket_54 
# predicted pocket number 55
select predicted_pocket_55, ( chain D and resi 430+24+31+431+28+432+325+30+433+22+27 )  or  ( chain C and resi 351+350+349 ) 
set_color predicted_pk_55, [ 0, 255, 255 ] 
color predicted_pk_55 , predicted_pocket_55 
show spheres, predicted_pocket_55 
set sphere_scale , 0.3 , predicted_pocket_55 
set sphere_transparency , 0.1 , predicted_pocket_55 
# predicted pocket number 56
select predicted_pocket_56, ( chain B and resi 97+96+397+244+92+91 )  or  ( chain A and resi 310+296+297 ) 
set_color predicted_pk_56, [ 0, 255, 255 ] 
color predicted_pk_56 , predicted_pocket_56 
show spheres, predicted_pocket_56 
set sphere_scale , 0.3 , predicted_pocket_56 
set sphere_transparency , 0.1 , predicted_pocket_56 
# predicted pocket number 57
select predicted_pocket_57, chain D and resi 20+332+352+72+354+42+188+74+73+51+44+49+48+47
set_color predicted_pk_57, [ 0, 255, 255 ] 
color predicted_pk_57 , predicted_pocket_57 
show spheres, predicted_pocket_57 
set sphere_scale , 0.3 , predicted_pocket_57 
set sphere_transparency , 0.1 , predicted_pocket_57 
# predicted pocket number 58
select predicted_pocket_58, ( chain B and resi 241+245+246+248+247 )  or  ( chain D and resi 284+422+423+288+449 ) 
set_color predicted_pk_58, [ 0, 255, 255 ] 
color predicted_pk_58 , predicted_pocket_58 
show spheres, predicted_pocket_58 
set sphere_scale , 0.3 , predicted_pocket_58 
set sphere_transparency , 0.1 , predicted_pocket_58 
# predicted pocket number 59
select predicted_pocket_59, chain B and resi 147+137+138+168+139+144+133+130+129+140
set_color predicted_pk_59, [ 0, 255, 255 ] 
color predicted_pk_59 , predicted_pocket_59 
show spheres, predicted_pocket_59 
set sphere_scale , 0.3 , predicted_pocket_59 
set sphere_transparency , 0.1 , predicted_pocket_59 
# predicted pocket number 60
select predicted_pocket_60, chain D and resi 232+111+231+114+118+228+159+115+229+230+156+155
set_color predicted_pk_60, [ 0, 255, 255 ] 
color predicted_pk_60 , predicted_pocket_60 
show spheres, predicted_pocket_60 
set sphere_scale , 0.3 , predicted_pocket_60 
set sphere_transparency , 0.1 , predicted_pocket_60 
# predicted pocket number 61
select predicted_pocket_61, chain F and resi 120+457+458+303+300+116+302+117+304
set_color predicted_pk_61, [ 0, 255, 255 ] 
color predicted_pk_61 , predicted_pocket_61 
show spheres, predicted_pocket_61 
set sphere_scale , 0.3 , predicted_pocket_61 
set sphere_transparency , 0.1 , predicted_pocket_61 
# predicted pocket number 62
select predicted_pocket_62, chain B and resi 70+354+74+51+188+48+49+47+352+72+332+73+44+42
set_color predicted_pk_62, [ 0, 255, 255 ] 
color predicted_pk_62 , predicted_pocket_62 
show spheres, predicted_pocket_62 
set sphere_scale , 0.3 , predicted_pocket_62 
set sphere_transparency , 0.1 , predicted_pocket_62 
# predicted pocket number 63
select predicted_pocket_63, chain A and resi 230+158+223+222+219+228+226+159+229
set_color predicted_pk_63, [ 0, 255, 255 ] 
color predicted_pk_63 , predicted_pocket_63 
show spheres, predicted_pocket_63 
set sphere_scale , 0.3 , predicted_pocket_63 
set sphere_transparency , 0.1 , predicted_pocket_63 
# predicted pocket number 64
select predicted_pocket_64, chain E and resi 303+117+457+305+113+458+304+302+116+120+300
set_color predicted_pk_64, [ 0, 255, 255 ] 
color predicted_pk_64 , predicted_pocket_64 
show spheres, predicted_pocket_64 
set sphere_scale , 0.3 , predicted_pocket_64 
set sphere_transparency , 0.1 , predicted_pocket_64 
# predicted pocket number 65
select predicted_pocket_65, chain A and resi 135+449+139+133+447+138+422+130+423+424+137+448+134
set_color predicted_pk_65, [ 0, 255, 255 ] 
color predicted_pk_65 , predicted_pocket_65 
show spheres, predicted_pocket_65 
set sphere_scale , 0.3 , predicted_pocket_65 
set sphere_transparency , 0.1 , predicted_pocket_65 
# predicted pocket number 66
select predicted_pocket_66, ( chain D and resi 222+226+160+159+228+161+155 )  or  ( chain E and resi 133+135+134+132+131 ) 
set_color predicted_pk_66, [ 0, 255, 255 ] 
color predicted_pk_66 , predicted_pocket_66 
show spheres, predicted_pocket_66 
set sphere_scale , 0.3 , predicted_pocket_66 
set sphere_transparency , 0.1 , predicted_pocket_66 
# predicted pocket number 67
select predicted_pocket_67, ( chain B and resi 2+4+3+5+346+345+348+41 )  or  ( chain C and resi 432+430 ) 
set_color predicted_pk_67, [ 0, 255, 255 ] 
color predicted_pk_67 , predicted_pocket_67 
show spheres, predicted_pocket_67 
set sphere_scale , 0.3 , predicted_pocket_67 
set sphere_transparency , 0.1 , predicted_pocket_67 
# predicted pocket number 68
select predicted_pocket_68, ( chain A and resi 311+312+408+407+308+316+315+319+382+404+318+379+309+411 )  or  ( chain B and resi 244+243 ) 
set_color predicted_pk_68, [ 0, 255, 255 ] 
color predicted_pk_68 , predicted_pocket_68 
show spheres, predicted_pocket_68 
set sphere_scale , 0.3 , predicted_pocket_68 
set sphere_transparency , 0.1 , predicted_pocket_68 
# predicted pocket number 69
select predicted_pocket_69, ( chain E and resi 160+171+214+211+172+218+173+215+167 )  or  ( chain D and resi 137 ) 
set_color predicted_pk_69, [ 0, 255, 255 ] 
color predicted_pk_69 , predicted_pocket_69 
show spheres, predicted_pocket_69 
set sphere_scale , 0.3 , predicted_pocket_69 
set sphere_transparency , 0.1 , predicted_pocket_69 
# predicted pocket number 70
select predicted_pocket_70, chain E and resi 72+44+332+49+73+352+354+51+47+74+48+188+42
set_color predicted_pk_70, [ 0, 255, 255 ] 
color predicted_pk_70 , predicted_pocket_70 
show spheres, predicted_pocket_70 
set sphere_scale , 0.3 , predicted_pocket_70 
set sphere_transparency , 0.1 , predicted_pocket_70 
# predicted pocket number 71
select predicted_pocket_71, chain E and resi 106+110+115+232+108+111+105+231+114+236
set_color predicted_pk_71, [ 0, 255, 255 ] 
color predicted_pk_71 , predicted_pocket_71 
show spheres, predicted_pocket_71 
set sphere_scale , 0.3 , predicted_pocket_71 
set sphere_transparency , 0.1 , predicted_pocket_71 
# predicted pocket number 72
select predicted_pocket_72, chain E and resi 84+80+83+256+76+79+252+93
set_color predicted_pk_72, [ 0, 255, 255 ] 
color predicted_pk_72 , predicted_pocket_72 
show spheres, predicted_pocket_72 
set sphere_scale , 0.3 , predicted_pocket_72 
set sphere_transparency , 0.1 , predicted_pocket_72 
# predicted pocket number 73
select predicted_pocket_73, chain E and resi 2+1+346+344+343+340
set_color predicted_pk_73, [ 0, 255, 255 ] 
color predicted_pk_73 , predicted_pocket_73 
show spheres, predicted_pocket_73 
set sphere_scale , 0.3 , predicted_pocket_73 
set sphere_transparency , 0.1 , predicted_pocket_73 
# predicted pocket number 74
select predicted_pocket_74, chain C and resi 188+72+42+352+49+47+48+44+51+332+74+354+73
set_color predicted_pk_74, [ 0, 255, 255 ] 
color predicted_pk_74 , predicted_pocket_74 
show spheres, predicted_pocket_74 
set sphere_scale , 0.3 , predicted_pocket_74 
set sphere_transparency , 0.1 , predicted_pocket_74 
# predicted pocket number 75
select predicted_pocket_75, chain E and resi 135+133+447+139+134+137+138+130+449+448
set_color predicted_pk_75, [ 0, 255, 255 ] 
color predicted_pk_75 , predicted_pocket_75 
show spheres, predicted_pocket_75 
set sphere_scale , 0.3 , predicted_pocket_75 
set sphere_transparency , 0.1 , predicted_pocket_75 
# predicted pocket number 76
select predicted_pocket_76, chain B and resi 404+408+316+312+318+315+379+309+407+311+319+308+411+381+382
set_color predicted_pk_76, [ 0, 255, 255 ] 
color predicted_pk_76 , predicted_pocket_76 
show spheres, predicted_pocket_76 
set sphere_scale , 0.3 , predicted_pocket_76 
set sphere_transparency , 0.1 , predicted_pocket_76 
# predicted pocket number 77
select predicted_pocket_77, chain D and resi 205+190+182+204+208+183+186+201+179
set_color predicted_pk_77, [ 0, 255, 255 ] 
color predicted_pk_77 , predicted_pocket_77 
show spheres, predicted_pocket_77 
set sphere_scale , 0.3 , predicted_pocket_77 
set sphere_transparency , 0.1 , predicted_pocket_77 
# predicted pocket number 78
select predicted_pocket_78, chain A and resi 183+204+205+208+201+179+182
set_color predicted_pk_78, [ 0, 255, 255 ] 
color predicted_pk_78 , predicted_pocket_78 
show spheres, predicted_pocket_78 
set sphere_scale , 0.3 , predicted_pocket_78 
set sphere_transparency , 0.1 , predicted_pocket_78 
# predicted pocket number 79
select predicted_pocket_79, chain A and resi 230+111+118+115+110+155+232+156+114+159+231
set_color predicted_pk_79, [ 0, 255, 255 ] 
color predicted_pk_79 , predicted_pocket_79 
show spheres, predicted_pocket_79 
set sphere_scale , 0.3 , predicted_pocket_79 
set sphere_transparency , 0.1 , predicted_pocket_79 
# predicted pocket number 80
select predicted_pocket_80, chain D and resi 241+101+102+105+98+242+97+243+245+247+236+244+94+240
set_color predicted_pk_80, [ 0, 255, 255 ] 
color predicted_pk_80 , predicted_pocket_80 
show spheres, predicted_pocket_80 
set sphere_scale , 0.3 , predicted_pocket_80 
set sphere_transparency , 0.1 , predicted_pocket_80 
# predicted pocket number 81
select predicted_pocket_81, chain C and resi 186+208+183+182+204+179+201+205
set_color predicted_pk_81, [ 0, 255, 255 ] 
color predicted_pk_81 , predicted_pocket_81 
show spheres, predicted_pocket_81 
set sphere_scale , 0.3 , predicted_pocket_81 
set sphere_transparency , 0.1 , predicted_pocket_81 
# predicted pocket number 82
select predicted_pocket_82, chain F and resi 205+183+182+208+180+201+204+179
set_color predicted_pk_82, [ 0, 255, 255 ] 
color predicted_pk_82 , predicted_pocket_82 
show spheres, predicted_pocket_82 
set sphere_scale , 0.3 , predicted_pocket_82 
set sphere_transparency , 0.1 , predicted_pocket_82 
# predicted pocket number 83
select predicted_pocket_83, chain C and resi 316+293+296+380+313+292+289+312+310+377
set_color predicted_pk_83, [ 0, 255, 255 ] 
color predicted_pk_83 , predicted_pocket_83 
show spheres, predicted_pocket_83 
set sphere_scale , 0.3 , predicted_pocket_83 
set sphere_transparency , 0.1 , predicted_pocket_83 
# predicted pocket number 84
select predicted_pocket_84, chain C and resi 419+301+302+420+298+303+416+307+300
set_color predicted_pk_84, [ 0, 255, 255 ] 
color predicted_pk_84 , predicted_pocket_84 
show spheres, predicted_pocket_84 
set sphere_scale , 0.3 , predicted_pocket_84 
set sphere_transparency , 0.1 , predicted_pocket_84 
# predicted pocket number 85
select predicted_pocket_85, ( chain D and resi 218+214+171+173+215+160+211+172+167 )  or  ( chain E and resi 137 ) 
set_color predicted_pk_85, [ 0, 255, 255 ] 
color predicted_pk_85 , predicted_pocket_85 
show spheres, predicted_pocket_85 
set sphere_scale , 0.3 , predicted_pocket_85 
set sphere_transparency , 0.1 , predicted_pocket_85 
# predicted pocket number 86
select predicted_pocket_86, chain F and resi 456+131+455+420+453+127+452+128+454+132
set_color predicted_pk_86, [ 0, 255, 255 ] 
color predicted_pk_86 , predicted_pocket_86 
show spheres, predicted_pocket_86 
set sphere_scale , 0.3 , predicted_pocket_86 
set sphere_transparency , 0.1 , predicted_pocket_86 
# predicted pocket number 87
select predicted_pocket_87, chain C and resi 190+183+187+198+201+193+202+205
set_color predicted_pk_87, [ 0, 255, 255 ] 
color predicted_pk_87 , predicted_pocket_87 
show spheres, predicted_pocket_87 
set sphere_scale , 0.3 , predicted_pocket_87 
set sphere_transparency , 0.1 , predicted_pocket_87 
# predicted pocket number 88
select predicted_pocket_88, chain C and resi 211+167+172+160+214+218+215+171
set_color predicted_pk_88, [ 0, 255, 255 ] 
color predicted_pk_88 , predicted_pocket_88 
show spheres, predicted_pocket_88 
set sphere_scale , 0.3 , predicted_pocket_88 
set sphere_transparency , 0.1 , predicted_pocket_88 
# predicted pocket number 89
select predicted_pocket_89, ( chain F and resi 408+411+315+404+112+308+109+407+309+311 )  or  ( chain D and resi 197 ) 
set_color predicted_pk_89, [ 0, 255, 255 ] 
color predicted_pk_89 , predicted_pocket_89 
show spheres, predicted_pocket_89 
set sphere_scale , 0.3 , predicted_pocket_89 
set sphere_transparency , 0.1 , predicted_pocket_89 
# predicted pocket number 90
select predicted_pocket_90, chain B and resi 31+27+325+34+362+30+359+372
set_color predicted_pk_90, [ 0, 255, 255 ] 
color predicted_pk_90 , predicted_pocket_90 
show spheres, predicted_pocket_90 
set sphere_scale , 0.3 , predicted_pocket_90 
set sphere_transparency , 0.1 , predicted_pocket_90 
# predicted pocket number 91
select predicted_pocket_91, ( chain D and resi 380+292+285+289+377 )  or  ( chain A and resi 104+109+107+404+108 ) 
set_color predicted_pk_91, [ 0, 255, 255 ] 
color predicted_pk_91 , predicted_pocket_91 
show spheres, predicted_pocket_91 
set sphere_scale , 0.3 , predicted_pocket_91 
set sphere_transparency , 0.1 , predicted_pocket_91 
# predicted pocket number 92
select predicted_pocket_92, ( chain F and resi 305+310+307+306+297+296+113+109+309 )  or  ( chain D and resi 196+200+201+197+199 ) 
set_color predicted_pk_92, [ 0, 255, 255 ] 
color predicted_pk_92 , predicted_pocket_92 
show spheres, predicted_pocket_92 
set sphere_scale , 0.3 , predicted_pocket_92 
set sphere_transparency , 0.1 , predicted_pocket_92 
# predicted pocket number 93
select predicted_pocket_93, chain A and resi 350+46+51+49+47+74+354+70+76+72+352+188+73+71+48
set_color predicted_pk_93, [ 0, 255, 255 ] 
color predicted_pk_93 , predicted_pocket_93 
show spheres, predicted_pocket_93 
set sphere_scale , 0.3 , predicted_pocket_93 
set sphere_transparency , 0.1 , predicted_pocket_93 
# predicted pocket number 94
select predicted_pocket_94, ( chain C and resi 364+35+34 )  or  ( chain B and resi 194+191+192+193+45 ) 
set_color predicted_pk_94, [ 0, 255, 255 ] 
color predicted_pk_94 , predicted_pocket_94 
show spheres, predicted_pocket_94 
set sphere_scale , 0.3 , predicted_pocket_94 
set sphere_transparency , 0.1 , predicted_pocket_94 
# predicted pocket number 95
select predicted_pocket_95, chain A and resi 202+190+183+198+193+187+205+201
set_color predicted_pk_95, [ 0, 255, 255 ] 
color predicted_pk_95 , predicted_pocket_95 
show spheres, predicted_pocket_95 
set sphere_scale , 0.3 , predicted_pocket_95 
set sphere_transparency , 0.1 , predicted_pocket_95 
# predicted pocket number 96
select predicted_pocket_96, chain B and resi 284+375+373+283+285+286+374+370+377+282
set_color predicted_pk_96, [ 0, 255, 255 ] 
color predicted_pk_96 , predicted_pocket_96 
show spheres, predicted_pocket_96 
set sphere_scale , 0.3 , predicted_pocket_96 
set sphere_transparency , 0.1 , predicted_pocket_96 
# predicted pocket number 97
select predicted_pocket_97, chain E and resi 190+200+180+179+201+183+208+205+182+186+204
set_color predicted_pk_97, [ 0, 255, 255 ] 
color predicted_pk_97 , predicted_pocket_97 
show spheres, predicted_pocket_97 
set sphere_scale , 0.3 , predicted_pocket_97 
set sphere_transparency , 0.1 , predicted_pocket_97 
# predicted pocket number 98
select predicted_pocket_98, ( chain A and resi 244+97 )  or  ( chain D and resi 312+306+309+310 ) 
set_color predicted_pk_98, [ 0, 255, 255 ] 
color predicted_pk_98 , predicted_pocket_98 
show spheres, predicted_pocket_98 
set sphere_scale , 0.3 , predicted_pocket_98 
set sphere_transparency , 0.1 , predicted_pocket_98 
# predicted pocket number 99
select predicted_pocket_99, chain D and resi 222+224+226+158+160+223+239+234+228+219+235+159+238+230+220
set_color predicted_pk_99, [ 0, 255, 255 ] 
color predicted_pk_99 , predicted_pocket_99 
show spheres, predicted_pocket_99 
set sphere_scale , 0.3 , predicted_pocket_99 
set sphere_transparency , 0.1 , predicted_pocket_99 
# predicted pocket number 100
select predicted_pocket_100, chain D and resi 216+209+255+213+252+81+259+256+80
set_color predicted_pk_100, [ 0, 255, 255 ] 
color predicted_pk_100 , predicted_pocket_100 
show spheres, predicted_pocket_100 
set sphere_scale , 0.3 , predicted_pocket_100 
set sphere_transparency , 0.1 , predicted_pocket_100 
# predicted pocket number 101
select predicted_pocket_101, chain C and resi 420+131+455+454+132+128+453+452+127
set_color predicted_pk_101, [ 0, 255, 255 ] 
color predicted_pk_101 , predicted_pocket_101 
show spheres, predicted_pocket_101 
set sphere_scale , 0.3 , predicted_pocket_101 
set sphere_transparency , 0.1 , predicted_pocket_101 
# predicted pocket number 102
select predicted_pocket_102, ( chain D and resi 369+364 )  or  ( chain C and resi 80+193+187+77+194+206+202 ) 
set_color predicted_pk_102, [ 0, 255, 255 ] 
color predicted_pk_102 , predicted_pocket_102 
show spheres, predicted_pocket_102 
set sphere_scale , 0.3 , predicted_pocket_102 
set sphere_transparency , 0.1 , predicted_pocket_102 
# predicted pocket number 103
select predicted_pocket_103, ( chain D and resi 218+171+160+162+167+163+161 )  or  ( chain E and resi 134+136+137+138 ) 
set_color predicted_pk_103, [ 0, 255, 255 ] 
color predicted_pk_103 , predicted_pocket_103 
show spheres, predicted_pocket_103 
set sphere_scale , 0.3 , predicted_pocket_103 
set sphere_transparency , 0.1 , predicted_pocket_103 
# predicted pocket number 104
select predicted_pocket_104, ( chain D and resi 124+121+125+128+166+165+132 )  or  ( chain E and resi 128+125+166+165+132 ) 
set_color predicted_pk_104, [ 0, 255, 255 ] 
color predicted_pk_104 , predicted_pocket_104 
show spheres, predicted_pocket_104 
set sphere_scale , 0.3 , predicted_pocket_104 
set sphere_transparency , 0.1 , predicted_pocket_104 
# predicted pocket number 105
select predicted_pocket_105, chain A and resi 28+35+19+31+32+36+8+9
set_color predicted_pk_105, [ 0, 255, 255 ] 
color predicted_pk_105 , predicted_pocket_105 
show spheres, predicted_pocket_105 
set sphere_scale , 0.3 , predicted_pocket_105 
set sphere_transparency , 0.1 , predicted_pocket_105 
# predicted pocket number 106
select predicted_pocket_106, chain F and resi 372+34+31+325+27+359+362+30
set_color predicted_pk_106, [ 0, 255, 255 ] 
color predicted_pk_106 , predicted_pocket_106 
show spheres, predicted_pocket_106 
set sphere_scale , 0.3 , predicted_pocket_106 
set sphere_transparency , 0.1 , predicted_pocket_106 
# predicted pocket number 107
select predicted_pocket_107, chain B and resi 313+292+288+285+286+377+289
set_color predicted_pk_107, [ 0, 255, 255 ] 
color predicted_pk_107 , predicted_pocket_107 
show spheres, predicted_pocket_107 
set sphere_scale , 0.3 , predicted_pocket_107 
set sphere_transparency , 0.1 , predicted_pocket_107 
# predicted pocket number 108
select predicted_pocket_108, chain B and resi 172+218+171+173+214+211+215
set_color predicted_pk_108, [ 0, 255, 255 ] 
color predicted_pk_108 , predicted_pocket_108 
show spheres, predicted_pocket_108 
set sphere_scale , 0.3 , predicted_pocket_108 
set sphere_transparency , 0.1 , predicted_pocket_108 
# predicted pocket number 109
select predicted_pocket_109, chain D and resi 70+332+72+354+75+74+331+87+330+69
set_color predicted_pk_109, [ 0, 255, 255 ] 
color predicted_pk_109 , predicted_pocket_109 
show spheres, predicted_pocket_109 
set sphere_scale , 0.3 , predicted_pocket_109 
set sphere_transparency , 0.1 , predicted_pocket_109 
# predicted pocket number 110
select predicted_pocket_110, ( chain D and resi 20+21+18+191+17+189+14 )  or  ( chain F and resi 381+383 ) 
set_color predicted_pk_110, [ 0, 255, 255 ] 
color predicted_pk_110 , predicted_pocket_110 
show spheres, predicted_pocket_110 
set sphere_scale , 0.3 , predicted_pocket_110 
set sphere_transparency , 0.1 , predicted_pocket_110 
# predicted pocket number 111
select predicted_pocket_111, chain A and resi 279+325+373+372+374+282+278+324+283+431+362
set_color predicted_pk_111, [ 0, 255, 255 ] 
color predicted_pk_111 , predicted_pocket_111 
show spheres, predicted_pocket_111 
set sphere_scale , 0.3 , predicted_pocket_111 
set sphere_transparency , 0.1 , predicted_pocket_111 
# predicted pocket number 112
select predicted_pocket_112, ( chain B and resi 46+73+193+45 )  or  ( chain C and resi 31+35+34 ) 
set_color predicted_pk_112, [ 0, 255, 255 ] 
color predicted_pk_112 , predicted_pocket_112 
show spheres, predicted_pocket_112 
set sphere_scale , 0.3 , predicted_pocket_112 
set sphere_transparency , 0.1 , predicted_pocket_112 
# predicted pocket number 113
select predicted_pocket_113, chain B and resi 183+184+77+80+187+202+205+206
set_color predicted_pk_113, [ 0, 255, 255 ] 
color predicted_pk_113 , predicted_pocket_113 
show spheres, predicted_pocket_113 
set sphere_scale , 0.3 , predicted_pocket_113 
set sphere_transparency , 0.1 , predicted_pocket_113 
# predicted pocket number 114
select predicted_pocket_114, chain D and resi 407+390+399+392+319+403+393+396+395+394+322+391
set_color predicted_pk_114, [ 0, 255, 255 ] 
color predicted_pk_114 , predicted_pocket_114 
show spheres, predicted_pocket_114 
set sphere_scale , 0.3 , predicted_pocket_114 
set sphere_transparency , 0.1 , predicted_pocket_114 
# predicted pocket number 115
select predicted_pocket_115, chain B and resi 21+23+189+22+190+186
set_color predicted_pk_115, [ 0, 255, 255 ] 
color predicted_pk_115 , predicted_pocket_115 
show spheres, predicted_pocket_115 
set sphere_scale , 0.3 , predicted_pocket_115 
set sphere_transparency , 0.1 , predicted_pocket_115 
# predicted pocket number 116
select predicted_pocket_116, ( chain D and resi 455+452+454+450+128+132+453+131 )  or  ( chain E and resi 121+458+161 ) 
set_color predicted_pk_116, [ 0, 255, 255 ] 
color predicted_pk_116 , predicted_pocket_116 
show spheres, predicted_pocket_116 
set sphere_scale , 0.3 , predicted_pocket_116 
set sphere_transparency , 0.1 , predicted_pocket_116 
# predicted pocket number 117
select predicted_pocket_117, chain C and resi 137+140+125+138+167+133+143+128+132+144+129+130+147+165+139+166+168
set_color predicted_pk_117, [ 0, 255, 255 ] 
color predicted_pk_117 , predicted_pocket_117 
show spheres, predicted_pocket_117 
set sphere_scale , 0.3 , predicted_pocket_117 
set sphere_transparency , 0.1 , predicted_pocket_117 
# predicted pocket number 118
select predicted_pocket_118, chain D and resi 388+382+387+390+385+319+389+403+379+383+386+391
set_color predicted_pk_118, [ 0, 255, 255 ] 
color predicted_pk_118 , predicted_pocket_118 
show spheres, predicted_pocket_118 
set sphere_scale , 0.3 , predicted_pocket_118 
set sphere_transparency , 0.1 , predicted_pocket_118 
# predicted pocket number 119
select predicted_pocket_119, ( chain D and resi 135+136 )  or  ( chain E and resi 222+225+214+218+217+221 ) 
set_color predicted_pk_119, [ 0, 255, 255 ] 
color predicted_pk_119 , predicted_pocket_119 
show spheres, predicted_pocket_119 
set sphere_scale , 0.3 , predicted_pocket_119 
set sphere_transparency , 0.1 , predicted_pocket_119 
# predicted pocket number 120
select predicted_pocket_120, ( chain C and resi 9+36+19+11+35+8+32 )  or  ( chain B and resi 90+79+76 ) 
set_color predicted_pk_120, [ 0, 255, 255 ] 
color predicted_pk_120 , predicted_pocket_120 
show spheres, predicted_pocket_120 
set sphere_scale , 0.3 , predicted_pocket_120 
set sphere_transparency , 0.1 , predicted_pocket_120 
# predicted pocket number 121
select predicted_pocket_121, ( chain C and resi 392+382+399+393+319+390+407+391+394+403+387 )  or  ( chain F and resi 369 ) 
set_color predicted_pk_121, [ 0, 255, 255 ] 
color predicted_pk_121 , predicted_pocket_121 
show spheres, predicted_pocket_121 
set sphere_scale , 0.3 , predicted_pocket_121 
set sphere_transparency , 0.1 , predicted_pocket_121 
# predicted pocket number 122
select predicted_pocket_122, chain F and resi 73+354+51+356+188+74+352+26+47+437+29+25+72+330+49
set_color predicted_pk_122, [ 0, 255, 255 ] 
color predicted_pk_122 , predicted_pocket_122 
show spheres, predicted_pocket_122 
set sphere_scale , 0.3 , predicted_pocket_122 
set sphere_transparency , 0.1 , predicted_pocket_122 
# predicted pocket number 123
select predicted_pocket_123, chain F and resi 227+223+159+160+229+219+226+222+158
set_color predicted_pk_123, [ 0, 255, 255 ] 
color predicted_pk_123 , predicted_pocket_123 
show spheres, predicted_pocket_123 
set sphere_scale , 0.3 , predicted_pocket_123 
set sphere_transparency , 0.1 , predicted_pocket_123 
# predicted pocket number 124
select predicted_pocket_124, chain A and resi 160+214+215+171+211+172+173+218+167
set_color predicted_pk_124, [ 0, 255, 255 ] 
color predicted_pk_124 , predicted_pocket_124 
show spheres, predicted_pocket_124 
set sphere_scale , 0.3 , predicted_pocket_124 
set sphere_transparency , 0.1 , predicted_pocket_124 
# predicted pocket number 125
select predicted_pocket_125, ( chain A and resi 396+407+390+322+391+392+393+394+319+399+403 )  or  ( chain D and resi 292 ) 
set_color predicted_pk_125, [ 0, 255, 255 ] 
color predicted_pk_125 , predicted_pocket_125 
show spheres, predicted_pocket_125 
set sphere_scale , 0.3 , predicted_pocket_125 
set sphere_transparency , 0.1 , predicted_pocket_125 
# predicted pocket number 126
select predicted_pocket_126, chain E and resi 81+80+206+216+209+256+252+259+255+213
set_color predicted_pk_126, [ 0, 255, 255 ] 
color predicted_pk_126 , predicted_pocket_126 
show spheres, predicted_pocket_126 
set sphere_scale , 0.3 , predicted_pocket_126 
set sphere_transparency , 0.1 , predicted_pocket_126 
# predicted pocket number 127
select predicted_pocket_127, ( chain F and resi 386+385+390+312+403+383+387+389+382+388 )  or  ( chain D and resi 198+11+195+191+13+14+192 ) 
set_color predicted_pk_127, [ 0, 255, 255 ] 
color predicted_pk_127 , predicted_pocket_127 
show spheres, predicted_pocket_127 
set sphere_scale , 0.3 , predicted_pocket_127 
set sphere_transparency , 0.1 , predicted_pocket_127 
# predicted pocket number 128
select predicted_pocket_128, ( chain C and resi 190+14+17+186+45+21+183+20+189+18+191+198+201 )  or  ( chain B and resi 337+349 ) 
set_color predicted_pk_128, [ 0, 255, 255 ] 
color predicted_pk_128 , predicted_pocket_128 
show spheres, predicted_pocket_128 
set sphere_scale , 0.3 , predicted_pocket_128 
set sphere_transparency , 0.1 , predicted_pocket_128 
# predicted pocket number 129
select predicted_pocket_129, chain D and resi 4+338+347+339+351+348+346+340+50+5
set_color predicted_pk_129, [ 0, 255, 255 ] 
color predicted_pk_129 , predicted_pocket_129 
show spheres, predicted_pocket_129 
set sphere_scale , 0.3 , predicted_pocket_129 
set sphere_transparency , 0.1 , predicted_pocket_129 
# predicted pocket number 130
select predicted_pocket_130, chain B and resi 454+452+455+131+450+453
set_color predicted_pk_130, [ 0, 255, 255 ] 
color predicted_pk_130 , predicted_pocket_130 
show spheres, predicted_pocket_130 
set sphere_scale , 0.3 , predicted_pocket_130 
set sphere_transparency , 0.1 , predicted_pocket_130 
# predicted pocket number 131
select predicted_pocket_131, chain A and resi 178+170+174+175+169+434+179+182
set_color predicted_pk_131, [ 0, 255, 255 ] 
color predicted_pk_131 , predicted_pocket_131 
show spheres, predicted_pocket_131 
set sphere_scale , 0.3 , predicted_pocket_131 
set sphere_transparency , 0.1 , predicted_pocket_131 
# predicted pocket number 132
select predicted_pocket_132, chain D and resi 345+353+40+41+4+347+6+341+39+346+50+5
set_color predicted_pk_132, [ 0, 255, 255 ] 
color predicted_pk_132 , predicted_pocket_132 
show spheres, predicted_pocket_132 
set sphere_scale , 0.3 , predicted_pocket_132 
set sphere_transparency , 0.1 , predicted_pocket_132 
# predicted pocket number 133
select predicted_pocket_133, chain A and resi 5+39+50+346+341+3+41+4+345+347
set_color predicted_pk_133, [ 0, 255, 255 ] 
color predicted_pk_133 , predicted_pocket_133 
show spheres, predicted_pocket_133 
set sphere_scale , 0.3 , predicted_pocket_133 
set sphere_transparency , 0.1 , predicted_pocket_133 
# predicted pocket number 134
select predicted_pocket_134, chain A and resi 387+386+390+389+391+382+385+319+388+379+367
set_color predicted_pk_134, [ 0, 255, 255 ] 
color predicted_pk_134 , predicted_pocket_134 
show spheres, predicted_pocket_134 
set sphere_scale , 0.3 , predicted_pocket_134 
set sphere_transparency , 0.1 , predicted_pocket_134 
# predicted pocket number 135
select predicted_pocket_135, chain D and resi 206+193+205+202+190+183+187+198+194
set_color predicted_pk_135, [ 0, 255, 255 ] 
color predicted_pk_135 , predicted_pocket_135 
show spheres, predicted_pocket_135 
set sphere_scale , 0.3 , predicted_pocket_135 
set sphere_transparency , 0.1 , predicted_pocket_135 
# predicted pocket number 136
select predicted_pocket_136, chain A and resi 381+384+386+375+378+385+365+366+367
set_color predicted_pk_136, [ 0, 255, 255 ] 
color predicted_pk_136 , predicted_pocket_136 
show spheres, predicted_pocket_136 
set sphere_scale , 0.3 , predicted_pocket_136 
set sphere_transparency , 0.1 , predicted_pocket_136 
# predicted pocket number 137
select predicted_pocket_137, ( chain D and resi 448+135+422+423+447+449+424 )  or  ( chain E and resi 225+226 ) 
set_color predicted_pk_137, [ 0, 255, 255 ] 
color predicted_pk_137 , predicted_pocket_137 
show spheres, predicted_pocket_137 
set sphere_scale , 0.3 , predicted_pocket_137 
set sphere_transparency , 0.1 , predicted_pocket_137 
# predicted pocket number 138
select predicted_pocket_138, chain A and resi 214+211+210+207+206+203
set_color predicted_pk_138, [ 0, 255, 255 ] 
color predicted_pk_138 , predicted_pocket_138 
show spheres, predicted_pocket_138 
set sphere_scale , 0.3 , predicted_pocket_138 
set sphere_transparency , 0.1 , predicted_pocket_138 
# predicted pocket number 139
select predicted_pocket_139, chain A and resi 121+458+118+128+161+117+155+124+125+166+120+159+457
set_color predicted_pk_139, [ 0, 255, 255 ] 
color predicted_pk_139 , predicted_pocket_139 
show spheres, predicted_pocket_139 
set sphere_scale , 0.3 , predicted_pocket_139 
set sphere_transparency , 0.1 , predicted_pocket_139 
# predicted pocket number 140
select predicted_pocket_140, chain A and resi 21+190+198+189+14+18+17
set_color predicted_pk_140, [ 0, 255, 255 ] 
color predicted_pk_140 , predicted_pocket_140 
show spheres, predicted_pocket_140 
set sphere_scale , 0.3 , predicted_pocket_140 
set sphere_transparency , 0.1 , predicted_pocket_140 
# predicted pocket number 141
select predicted_pocket_141, chain A and resi 348+50+346+338+340+339+351+347
set_color predicted_pk_141, [ 0, 255, 255 ] 
color predicted_pk_141 , predicted_pocket_141 
show spheres, predicted_pocket_141 
set sphere_scale , 0.3 , predicted_pocket_141 
set sphere_transparency , 0.1 , predicted_pocket_141 
# predicted pocket number 142
select predicted_pocket_142, chain A and resi 186+21+23+25+20+189+185+188+22
set_color predicted_pk_142, [ 0, 255, 255 ] 
color predicted_pk_142 , predicted_pocket_142 
show spheres, predicted_pocket_142 
set sphere_scale , 0.3 , predicted_pocket_142 
set sphere_transparency , 0.1 , predicted_pocket_142 
# predicted pocket number 143
select predicted_pocket_143, chain F and resi 35+36+7+9+32+8+19
set_color predicted_pk_143, [ 0, 255, 255 ] 
color predicted_pk_143 , predicted_pocket_143 
show spheres, predicted_pocket_143 
set sphere_scale , 0.3 , predicted_pocket_143 
set sphere_transparency , 0.1 , predicted_pocket_143 
# predicted pocket number 144
select predicted_pocket_144, chain A and resi 93+334+92+90+349
set_color predicted_pk_144, [ 0, 255, 255 ] 
color predicted_pk_144 , predicted_pocket_144 
show spheres, predicted_pocket_144 
set sphere_scale , 0.3 , predicted_pocket_144 
set sphere_transparency , 0.1 , predicted_pocket_144 
# predicted pocket number 145
select predicted_pocket_145, chain E and resi 384+386+367+366+381+385+378
set_color predicted_pk_145, [ 0, 255, 255 ] 
color predicted_pk_145 , predicted_pocket_145 
show spheres, predicted_pocket_145 
set sphere_scale , 0.3 , predicted_pocket_145 
set sphere_transparency , 0.1 , predicted_pocket_145 
# predicted pocket number 146
select predicted_pocket_146, chain F and resi 234+223+255+238+220+254+251+224+258
set_color predicted_pk_146, [ 0, 255, 255 ] 
color predicted_pk_146 , predicted_pocket_146 
show spheres, predicted_pocket_146 
set sphere_scale , 0.3 , predicted_pocket_146 
set sphere_transparency , 0.1 , predicted_pocket_146 
# predicted pocket number 147
select predicted_pocket_147, chain B and resi 132+125+165+128+166+129
set_color predicted_pk_147, [ 0, 255, 255 ] 
color predicted_pk_147 , predicted_pocket_147 
show spheres, predicted_pocket_147 
set sphere_scale , 0.3 , predicted_pocket_147 
set sphere_transparency , 0.1 , predicted_pocket_147 
# predicted pocket number 148
select predicted_pocket_148, chain F and resi 449+288+423+421+284+422+418+287+291+451
set_color predicted_pk_148, [ 0, 255, 255 ] 
color predicted_pk_148 , predicted_pocket_148 
show spheres, predicted_pocket_148 
set sphere_scale , 0.3 , predicted_pocket_148 
set sphere_transparency , 0.1 , predicted_pocket_148 
# predicted pocket number 149
select predicted_pocket_149, chain C and resi 385+378+384+367+386+368+366
set_color predicted_pk_149, [ 0, 255, 255 ] 
color predicted_pk_149 , predicted_pocket_149 
show spheres, predicted_pocket_149 
set sphere_scale , 0.3 , predicted_pocket_149 
set sphere_transparency , 0.1 , predicted_pocket_149 
# predicted pocket number 150
select predicted_pocket_150, chain E and resi 31+36+8+9+35+32
set_color predicted_pk_150, [ 0, 255, 255 ] 
color predicted_pk_150 , predicted_pocket_150 
show spheres, predicted_pocket_150 
set sphere_scale , 0.3 , predicted_pocket_150 
set sphere_transparency , 0.1 , predicted_pocket_150 
# predicted pocket number 151
select predicted_pocket_151, chain C and resi 385+382+319+390+386+391+388+403+387+389+379
set_color predicted_pk_151, [ 0, 255, 255 ] 
color predicted_pk_151 , predicted_pocket_151 
show spheres, predicted_pocket_151 
set sphere_scale , 0.3 , predicted_pocket_151 
set sphere_transparency , 0.1 , predicted_pocket_151 
# predicted pocket number 152
select predicted_pocket_152, chain A and resi 77+46+191+45+47+193+44+187+188+73+17
set_color predicted_pk_152, [ 0, 255, 255 ] 
color predicted_pk_152 , predicted_pocket_152 
show spheres, predicted_pocket_152 
set sphere_scale , 0.3 , predicted_pocket_152 
set sphere_transparency , 0.1 , predicted_pocket_152 
# predicted pocket number 153
select predicted_pocket_153, chain F and resi 133+128+125+166+129+132+165
set_color predicted_pk_153, [ 0, 255, 255 ] 
color predicted_pk_153 , predicted_pocket_153 
show spheres, predicted_pocket_153 
set sphere_scale , 0.3 , predicted_pocket_153 
set sphere_transparency , 0.1 , predicted_pocket_153 
# predicted pocket number 154
select predicted_pocket_154, ( chain D and resi 458+455+457+454+301+456 )  or  ( chain E and resi 457+458 ) 
set_color predicted_pk_154, [ 0, 255, 255 ] 
color predicted_pk_154 , predicted_pocket_154 
show spheres, predicted_pocket_154 
set sphere_scale , 0.3 , predicted_pocket_154 
set sphere_transparency , 0.1 , predicted_pocket_154 
# predicted pocket number 155
select predicted_pocket_155, chain F and resi 223+230+239+229+238+220+235+251+224
set_color predicted_pk_155, [ 0, 255, 255 ] 
color predicted_pk_155 , predicted_pocket_155 
show spheres, predicted_pocket_155 
set sphere_scale , 0.3 , predicted_pocket_155 
set sphere_transparency , 0.1 , predicted_pocket_155 
# predicted pocket number 156
select predicted_pocket_156, chain C and resi 421+280+425+451+423+284+291+287+422+418+281
set_color predicted_pk_156, [ 0, 255, 255 ] 
color predicted_pk_156 , predicted_pocket_156 
show spheres, predicted_pocket_156 
set sphere_scale , 0.3 , predicted_pocket_156 
set sphere_transparency , 0.1 , predicted_pocket_156 
# predicted pocket number 157
select predicted_pocket_157, chain E and resi 26+329+25+354+51+29+435+437+185+330+74+356+188
set_color predicted_pk_157, [ 0, 255, 255 ] 
color predicted_pk_157 , predicted_pocket_157 
show spheres, predicted_pocket_157 
set sphere_scale , 0.3 , predicted_pocket_157 
set sphere_transparency , 0.1 , predicted_pocket_157 
# predicted pocket number 158
select predicted_pocket_158, chain A and resi 252+80+255+259+209+212+213+256+81
set_color predicted_pk_158, [ 0, 255, 255 ] 
color predicted_pk_158 , predicted_pocket_158 
show spheres, predicted_pocket_158 
set sphere_scale , 0.3 , predicted_pocket_158 
set sphere_transparency , 0.1 , predicted_pocket_158 
# predicted pocket number 159
select predicted_pocket_159, chain B and resi 189+198+18+191+20+21+14+17
set_color predicted_pk_159, [ 0, 255, 255 ] 
color predicted_pk_159 , predicted_pocket_159 
show spheres, predicted_pocket_159 
set sphere_scale , 0.3 , predicted_pocket_159 
set sphere_transparency , 0.1 , predicted_pocket_159 
# predicted pocket number 160
select predicted_pocket_160, chain B and resi 384+367+375+366+385+378+386
set_color predicted_pk_160, [ 0, 255, 255 ] 
color predicted_pk_160 , predicted_pocket_160 
show spheres, predicted_pocket_160 
set sphere_scale , 0.3 , predicted_pocket_160 
set sphere_transparency , 0.1 , predicted_pocket_160 
# predicted pocket number 161
select predicted_pocket_161, ( chain B and resi 194+188+17+190+77+191+47+187+80+73+44+193+45 )  or  ( chain C and resi 36+35 ) 
set_color predicted_pk_161, [ 0, 255, 255 ] 
color predicted_pk_161 , predicted_pocket_161 
show spheres, predicted_pocket_161 
set sphere_scale , 0.3 , predicted_pocket_161 
set sphere_transparency , 0.1 , predicted_pocket_161 
# predicted pocket number 162
select predicted_pocket_162, ( chain B and resi 224+217+251+220+221+255 )  or  ( chain E and resi 225+226+224 ) 
set_color predicted_pk_162, [ 0, 255, 255 ] 
color predicted_pk_162 , predicted_pocket_162 
show spheres, predicted_pocket_162 
set sphere_scale , 0.3 , predicted_pocket_162 
set sphere_transparency , 0.1 , predicted_pocket_162 
# predicted pocket number 163
select predicted_pocket_163, chain A and resi 129+165+132+128+133+125+166
set_color predicted_pk_163, [ 0, 255, 255 ] 
color predicted_pk_163 , predicted_pocket_163 
show spheres, predicted_pocket_163 
set sphere_scale , 0.3 , predicted_pocket_163 
set sphere_transparency , 0.1 , predicted_pocket_163 
# predicted pocket number 164
select predicted_pocket_164, ( chain A and resi 387 )  or  ( chain D and resi 298+418+451+291+295+453+419 ) 
set_color predicted_pk_164, [ 0, 255, 255 ] 
color predicted_pk_164 , predicted_pocket_164 
show spheres, predicted_pocket_164 
set sphere_scale , 0.3 , predicted_pocket_164 
set sphere_transparency , 0.1 , predicted_pocket_164 
# predicted pocket number 165
select predicted_pocket_165, ( chain F and resi 385+390+404+379+403+319+407+382 )  or  ( chain D and resi 195+197 ) 
set_color predicted_pk_165, [ 0, 255, 255 ] 
color predicted_pk_165 , predicted_pocket_165 
show spheres, predicted_pocket_165 
set sphere_scale , 0.3 , predicted_pocket_165 
set sphere_transparency , 0.1 , predicted_pocket_165 
# predicted pocket number 166
select predicted_pocket_166, chain C and resi 188+185+17+42+49+47+20+189+29+25+51
set_color predicted_pk_166, [ 0, 255, 255 ] 
color predicted_pk_166 , predicted_pocket_166 
show spheres, predicted_pocket_166 
set sphere_scale , 0.3 , predicted_pocket_166 
set sphere_transparency , 0.1 , predicted_pocket_166 
# predicted pocket number 167
select predicted_pocket_167, chain B and resi 404+401+104+403+407+107+400
set_color predicted_pk_167, [ 0, 255, 255 ] 
color predicted_pk_167 , predicted_pocket_167 
show spheres, predicted_pocket_167 
set sphere_scale , 0.3 , predicted_pocket_167 
set sphere_transparency , 0.1 , predicted_pocket_167 
select TP, true_pocket* and predicted_pocket*
color green, TP
