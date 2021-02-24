load ../../../PDB/pdb5ncc.ent
# ligand_0
select ligand_0, chain A and resi 702 
set_color lg_0, [ 255, 0, 0 ] 
color lg_0 , ligand_0 
show spheres, ligand_0 
set sphere_scale , 1 , ligand_0 
set sphere_transparency , 0.1 , ligand_0 
# ligand_1
select ligand_1, chain B and resi 702 
set_color lg_1, [ 255, 0, 0 ] 
color lg_1 , ligand_1 
show spheres, ligand_1 
set sphere_scale , 1 , ligand_1 
set sphere_transparency , 0.1 , ligand_1 
# ligand_2
select ligand_2, chain C and resi 702 
set_color lg_2, [ 255, 0, 0 ] 
color lg_2 , ligand_2 
show spheres, ligand_2 
set sphere_scale , 1 , ligand_2 
set sphere_transparency , 0.1 , ligand_2 
# ligand_3
select ligand_3, chain D and resi 702 
set_color lg_3, [ 255, 0, 0 ] 
color lg_3 , ligand_3 
show spheres, ligand_3 
set sphere_scale , 1 , ligand_3 
set sphere_transparency , 0.1 , ligand_3 
# true pocket number 0
select true_pocket_0, chain A and resi 469+456+171+462+386+465+455+575+130+451+466+453+486+484+457
set_color true_pk_0, [ 0, 0, 255 ] 
color true_pk_0 , true_pocket_0 
show spheres, true_pocket_0 
set sphere_scale , 0.3 , true_pocket_0 
set sphere_transparency , 0.1 , true_pocket_0 
# true pocket number 1
select true_pocket_1, chain B and resi 457+469+574+455+171+465+462+453+484+575+456+451+466+486
set_color true_pk_1, [ 0, 0, 255 ] 
color true_pk_1 , true_pocket_1 
show spheres, true_pocket_1 
set sphere_scale , 0.3 , true_pocket_1 
set sphere_transparency , 0.1 , true_pocket_1 
# true pocket number 2
select true_pocket_2, chain C and resi 486+462+457+455+463+456+451+466+465+575+453+574+484+469+171
set_color true_pk_2, [ 0, 0, 255 ] 
color true_pk_2 , true_pocket_2 
show spheres, true_pocket_2 
set sphere_scale , 0.3 , true_pocket_2 
set sphere_transparency , 0.1 , true_pocket_2 
# true pocket number 3
select true_pocket_3, chain D and resi 575+171+457+486+484+463+451+462+134+574+465+466+469+456+453
set_color true_pk_3, [ 0, 0, 255 ] 
color true_pk_3 , true_pocket_3 
show spheres, true_pocket_3 
set sphere_scale , 0.3 , true_pocket_3 
set sphere_transparency , 0.1 , true_pocket_3 
# predicted pocket number 0
select predicted_pocket_0, ( chain A and resi 572+298+623+139+322+340+451+140+276+403+135+432+170+574+273+453+167+341+165+115+609+173+575+94+576+399+456+93+386+626+95+470+113+457+91+132+141+472+431+129+171+128+507+137+349+136+158+486+320+610+321+473+126+430+577+89+161+134+162+466+484+573+295+402+297+131+622+462+465+463+92+455+166+469+479+342+427+90+318+220+505+620+398+275+348+172+296+130+429+114+625+160+169+267+506+345+621+159+274+411 )  or  ( chain B and resi 137+139+471+136+135+140+141+143+161 ) 
set_color predicted_pk_0, [ 0, 255, 255 ] 
color predicted_pk_0 , predicted_pocket_0 
show spheres, predicted_pocket_0 
set sphere_scale , 0.3 , predicted_pocket_0 
set sphere_transparency , 0.1 , predicted_pocket_0 
# predicted pocket number 1
select predicted_pocket_1, ( chain A and resi 221+289+270+283+100+420+284+106+218+223+206+217+279+275+421+277+121+118+278+288+124+101+273+222+204+205+125+282+272+424+269+122+285+104+219+287+119+419+286+120 )  or  ( chain D and resi 429+404+415+548+395+229+472+402+427+403+409+480+425+227+394+426+401+477+478+393+396+413+414+479+430+410+231+417+412+398+390+399+400+416+391+418 )  or  ( chain C and resi 62+63+71+67+66 ) 
set_color predicted_pk_1, [ 0, 255, 255 ] 
color predicted_pk_1 , predicted_pocket_1 
show spheres, predicted_pocket_1 
set sphere_scale , 0.3 , predicted_pocket_1 
set sphere_transparency , 0.1 , predicted_pocket_1 
# predicted pocket number 2
select predicted_pocket_2, chain B and resi 415+170+123+169+462+345+132+115+276+158+429+341+95+130+577+411+463+473+129+456+507+399+340+126+93+173+297+453+575+171+416+470+427+479+466+348+114+455+349+621+469+574+160+175+162+166+430+113+412+92+432+131+622+386+486+573+165+626+609+128+89+403+610+140+451+457+506+465+298+159+623+134+576+172+267+402+484+620+91+431+398+94+625+296+90+505+161+167+342
set_color predicted_pk_2, [ 0, 255, 255 ] 
color predicted_pk_2 , predicted_pocket_2 
show spheres, predicted_pocket_2 
set sphere_scale , 0.3 , predicted_pocket_2 
set sphere_transparency , 0.1 , predicted_pocket_2 
# predicted pocket number 3
select predicted_pocket_3, chain D and resi 623+429+160+175+159+462+93+622+348+297+466+577+89+505+95+170+402+609+484+463+113+172+134+465+128+621+94+576+296+507+349+345+114+298+158+610+92+457+451+453+115+574+340+166+167+573+506+469+342+456+90+431+430+575+171+169+173+140+91+398+479+455+399+162+432+486+130+131+341+620+386+267+165+625
set_color predicted_pk_3, [ 0, 255, 255 ] 
color predicted_pk_3 , predicted_pocket_3 
show spheres, predicted_pocket_3 
set sphere_scale , 0.3 , predicted_pocket_3 
set sphere_transparency , 0.1 , predicted_pocket_3 
# predicted pocket number 4
select predicted_pocket_4, chain E and resi 298+169+576+158+399+622+162+609+625+296+167+466+486+115+463+431+267+506+171+573+574+620+348+130+128+172+220+342+505+274+507+92+626+160+451+457+276+341+114+462+465+577+575+469+430+273+453+173+275+479+402+398+432+93+340+386+159+610+134+455+94+89+349+429+95+140+91+456+90+113+166+621+165+297+345+170+484
set_color predicted_pk_4, [ 0, 255, 255 ] 
color predicted_pk_4 , predicted_pocket_4 
show spheres, predicted_pocket_4 
set sphere_scale , 0.3 , predicted_pocket_4 
set sphere_transparency , 0.1 , predicted_pocket_4 
# predicted pocket number 5
select predicted_pocket_5, chain F and resi 399+574+386+130+159+466+462+457+430+158+431+173+456+171+453+575+166+451+169+463+621+131+267+455+429+622+469+128+402+160+576+620+432+172+479+573+465+134+398+484+486+170
set_color predicted_pk_5, [ 0, 255, 255 ] 
color predicted_pk_5 , predicted_pocket_5 
show spheres, predicted_pocket_5 
set sphere_scale , 0.3 , predicted_pocket_5 
set sphere_transparency , 0.1 , predicted_pocket_5 
# predicted pocket number 6
select predicted_pocket_6, ( chain A and resi 572+459+472+154+134+475+135+152+471+155+573+151+158+480+146+566+553+463+569+476+575+464+468+156+461+477+458+478+552+153+467+571+570+460 )  or  ( chain B and resi 506+324+325+326+75+68+76+72+322+323+69+319+73+320+318+71+67 ) 
set_color predicted_pk_6, [ 0, 255, 255 ] 
color predicted_pk_6 , predicted_pocket_6 
show spheres, predicted_pocket_6 
set sphere_scale , 0.3 , predicted_pocket_6 
set sphere_transparency , 0.1 , predicted_pocket_6 
# predicted pocket number 7
select predicted_pocket_7, ( chain B and resi 404+394+479+400+396+409+393+414+472+410+412+399+413+403+395+478 )  or  ( chain C and resi 125+275+283+279+273+280+221+272+284+119+218+101+118+424+219+100+120+217+277+121+124+282+278+269 ) 
set_color predicted_pk_7, [ 0, 255, 255 ] 
color predicted_pk_7 , predicted_pocket_7 
show spheres, predicted_pocket_7 
set sphere_scale , 0.3 , predicted_pocket_7 
set sphere_transparency , 0.1 , predicted_pocket_7 
# predicted pocket number 8
select predicted_pocket_8, chain C and resi 626+140+93+577+298+167+609+505+160+576+142+162+344+610+267+345+341+506+343+90+114+296+340+625+575+113+91+115+509+170+165+622+89+349+95+276+348+297+159+92+507+621+166+342+94
set_color predicted_pk_8, [ 0, 255, 255 ] 
color predicted_pk_8 , predicted_pocket_8 
show spheres, predicted_pocket_8 
set sphere_scale , 0.3 , predicted_pocket_8 
set sphere_transparency , 0.1 , predicted_pocket_8 
# predicted pocket number 9
select predicted_pocket_9, chain C and resi 462+455+432+132+398+431+473+411+403+402+469+484+131+399+466+416+451+453+427+479+463+456+465+128+575+573+412+430+486+470+457+126+386+429+129+130+134+415
set_color predicted_pk_9, [ 0, 255, 255 ] 
color predicted_pk_9 , predicted_pocket_9 
show spheres, predicted_pocket_9 
set sphere_scale , 0.3 , predicted_pocket_9 
set sphere_transparency , 0.1 , predicted_pocket_9 
# predicted pocket number 10
select predicted_pocket_10, ( chain C and resi 158+464+552+155+153+460+146+472+154+468+461+569+463+471+575+156+573+572+571+459+152+458+135+134+467 )  or  ( chain D and resi 319+76+73+322+75+323+78+324+325+69+320+72+68+326 ) 
set_color predicted_pk_10, [ 0, 255, 255 ] 
color predicted_pk_10 , predicted_pocket_10 
show spheres, predicted_pocket_10 
set sphere_scale , 0.3 , predicted_pocket_10 
set sphere_transparency , 0.1 , predicted_pocket_10 
# predicted pocket number 11
select predicted_pocket_11, ( chain D and resi 464+471+153+151+461+569+154+472+463+152+134+572+146+158+135+459+468+467+573+156+571+575+155 )  or  ( chain C and resi 320+327+322+319+78+325+72+324+326+323+75+76 ) 
set_color predicted_pk_11, [ 0, 255, 255 ] 
color predicted_pk_11 , predicted_pocket_11 
show spheres, predicted_pocket_11 
set sphere_scale , 0.3 , predicted_pocket_11 
set sphere_transparency , 0.1 , predicted_pocket_11 
# predicted pocket number 12
select predicted_pocket_12, ( chain B and resi 573+571+552+471+459+467+156+154+158+458+468+572+463+569+155+135+153+146+460+461+464+152+575 )  or  ( chain A and resi 322+76+325+319+326+324+75+320+73+69+68+323+72 ) 
set_color predicted_pk_12, [ 0, 255, 255 ] 
color predicted_pk_12 , predicted_pocket_12 
show spheres, predicted_pocket_12 
set sphere_scale , 0.3 , predicted_pocket_12 
set sphere_transparency , 0.1 , predicted_pocket_12 
# predicted pocket number 13
select predicted_pocket_13, ( chain B and resi 548+390+475+458+468+391+472+456+477+480+395+478 )  or  ( chain C and resi 104+287+289+106+286+103+288 )  or  ( chain A and resi 64+66+63+75+71+67+68+72 ) 
set_color predicted_pk_13, [ 0, 255, 255 ] 
color predicted_pk_13 , predicted_pocket_13 
show spheres, predicted_pocket_13 
set sphere_scale , 0.3 , predicted_pocket_13 
set sphere_transparency , 0.1 , predicted_pocket_13 
# predicted pocket number 14
select predicted_pocket_14, ( chain F and resi 153+571+158+461+575+155+471+135+463+459+467+154+464+573+156+134+572 )  or  ( chain E and resi 76+319+327+323+324+320+325 ) 
set_color predicted_pk_14, [ 0, 255, 255 ] 
color predicted_pk_14 , predicted_pocket_14 
show spheres, predicted_pocket_14 
set sphere_scale , 0.3 , predicted_pocket_14 
set sphere_transparency , 0.1 , predicted_pocket_14 
# predicted pocket number 15
select predicted_pocket_15, chain C and resi 532+389+551+558+549+547+539+544+554+555+550+535+538
set_color predicted_pk_15, [ 0, 255, 255 ] 
color predicted_pk_15 , predicted_pocket_15 
show spheres, predicted_pocket_15 
set sphere_scale , 0.3 , predicted_pocket_15 
set sphere_transparency , 0.1 , predicted_pocket_15 
# predicted pocket number 16
select predicted_pocket_16, chain D and resi 551+549+558+554+389+555+538+547+550+544+539+535+557
set_color predicted_pk_16, [ 0, 255, 255 ] 
color predicted_pk_16 , predicted_pocket_16 
show spheres, predicted_pocket_16 
set sphere_scale , 0.3 , predicted_pocket_16 
set sphere_transparency , 0.1 , predicted_pocket_16 
# predicted pocket number 17
select predicted_pocket_17, chain F and resi 298+90+162+348+140+507+115+160+89+349+113+297+505+341+506+345+296+114+165
set_color predicted_pk_17, [ 0, 255, 255 ] 
color predicted_pk_17 , predicted_pocket_17 
show spheres, predicted_pocket_17 
set sphere_scale , 0.3 , predicted_pocket_17 
set sphere_transparency , 0.1 , predicted_pocket_17 
# predicted pocket number 18
select predicted_pocket_18, ( chain F and resi 73+64+76+68+72+325+69+65 )  or  ( chain E and resi 555+557+553+459+566+569+554+460+550+551+458+552+556 ) 
set_color predicted_pk_18, [ 0, 255, 255 ] 
color predicted_pk_18 , predicted_pocket_18 
show spheres, predicted_pocket_18 
set sphere_scale , 0.3 , predicted_pocket_18 
set sphere_transparency , 0.1 , predicted_pocket_18 
# predicted pocket number 19
select predicted_pocket_19, chain B and resi 257+254+252+177+251+445+256+179+180+249+258+253+178+250
set_color predicted_pk_19, [ 0, 255, 255 ] 
color predicted_pk_19 , predicted_pocket_19 
show spheres, predicted_pocket_19 
set sphere_scale , 0.3 , predicted_pocket_19 
set sphere_transparency , 0.1 , predicted_pocket_19 
# predicted pocket number 20
select predicted_pocket_20, chain A and resi 554+547+558+549+539+555+389+557+551+535+550+538
set_color predicted_pk_20, [ 0, 255, 255 ] 
color predicted_pk_20 , predicted_pocket_20 
show spheres, predicted_pocket_20 
set sphere_scale , 0.3 , predicted_pocket_20 
set sphere_transparency , 0.1 , predicted_pocket_20 
# predicted pocket number 21
select predicted_pocket_21, chain D and resi 232+231+482+397+396+481+230+394+546+391
set_color predicted_pk_21, [ 0, 255, 255 ] 
color predicted_pk_21 , predicted_pocket_21 
show spheres, predicted_pocket_21 
set sphere_scale , 0.3 , predicted_pocket_21 
set sphere_transparency , 0.1 , predicted_pocket_21 
# predicted pocket number 22
select predicted_pocket_22, ( chain B and resi 62+71+66+63+67 )  or  ( chain A and resi 477+395+480+548+478+390+391+393 ) 
set_color predicted_pk_22, [ 0, 255, 255 ] 
color predicted_pk_22 , predicted_pocket_22 
show spheres, predicted_pocket_22 
set sphere_scale , 0.3 , predicted_pocket_22 
set sphere_transparency , 0.1 , predicted_pocket_22 
# predicted pocket number 23
select predicted_pocket_23, chain D and resi 445+258+256+252+254+180+178+257+179+251+253+249+177
set_color predicted_pk_23, [ 0, 255, 255 ] 
color predicted_pk_23 , predicted_pocket_23 
show spheres, predicted_pocket_23 
set sphere_scale , 0.3 , predicted_pocket_23 
set sphere_transparency , 0.1 , predicted_pocket_23 
# predicted pocket number 24
select predicted_pocket_24, ( chain F and resi 377+364+497+510+145+360+511+498+500+363+499+512+351+361 )  or  ( chain D and resi 371+362 ) 
set_color predicted_pk_24, [ 0, 255, 255 ] 
color predicted_pk_24 , predicted_pocket_24 
show spheres, predicted_pocket_24 
set sphere_scale , 0.3 , predicted_pocket_24 
set sphere_transparency , 0.1 , predicted_pocket_24 
# predicted pocket number 25
select predicted_pocket_25, chain C and resi 158+160+451+172+159+575+620+621+576+170+166+169+134+574+173+171+130
set_color predicted_pk_25, [ 0, 255, 255 ] 
color predicted_pk_25 , predicted_pocket_25 
show spheres, predicted_pocket_25 
set sphere_scale , 0.3 , predicted_pocket_25 
set sphere_transparency , 0.1 , predicted_pocket_25 
# predicted pocket number 26
select predicted_pocket_26, chain A and resi 254+252+178+251+445+257+253+249+258+180+256+177+179
set_color predicted_pk_26, [ 0, 255, 255 ] 
color predicted_pk_26 , predicted_pocket_26 
show spheres, predicted_pocket_26 
set sphere_scale , 0.3 , predicted_pocket_26 
set sphere_transparency , 0.1 , predicted_pocket_26 
# predicted pocket number 27
select predicted_pocket_27, chain B and resi 232+231+397+396+482+230+391+481+394+546
set_color predicted_pk_27, [ 0, 255, 255 ] 
color predicted_pk_27 , predicted_pocket_27 
show spheres, predicted_pocket_27 
set sphere_scale , 0.3 , predicted_pocket_27 
set sphere_transparency , 0.1 , predicted_pocket_27 
# predicted pocket number 28
select predicted_pocket_28, chain C and resi 253+249+251+178+258+256+177+254+179+252+257
set_color predicted_pk_28, [ 0, 255, 255 ] 
color predicted_pk_28 , predicted_pocket_28 
show spheres, predicted_pocket_28 
set sphere_scale , 0.3 , predicted_pocket_28 
set sphere_transparency , 0.1 , predicted_pocket_28 
# predicted pocket number 29
select predicted_pocket_29, chain C and resi 374+378+589+590+579+495+496+373+582+592+377
set_color predicted_pk_29, [ 0, 255, 255 ] 
color predicted_pk_29 , predicted_pocket_29 
show spheres, predicted_pocket_29 
set sphere_scale , 0.3 , predicted_pocket_29 
set sphere_transparency , 0.1 , predicted_pocket_29 
# predicted pocket number 30
select predicted_pocket_30, chain A and resi 373+579+377+495+590+374+378+496+589+582+592
set_color predicted_pk_30, [ 0, 255, 255 ] 
color predicted_pk_30 , predicted_pocket_30 
show spheres, predicted_pocket_30 
set sphere_scale , 0.3 , predicted_pocket_30 
set sphere_transparency , 0.1 , predicted_pocket_30 
# predicted pocket number 31
select predicted_pocket_31, chain A and resi 230+396+397+391+394+232+546+482+481+231
set_color predicted_pk_31, [ 0, 255, 255 ] 
color predicted_pk_31 , predicted_pocket_31 
show spheres, predicted_pocket_31 
set sphere_scale , 0.3 , predicted_pocket_31 
set sphere_transparency , 0.1 , predicted_pocket_31 
# predicted pocket number 32
select predicted_pocket_32, chain F and resi 278+275+120+277+121+273+272+124+282+119+125
set_color predicted_pk_32, [ 0, 255, 255 ] 
color predicted_pk_32 , predicted_pocket_32 
show spheres, predicted_pocket_32 
set sphere_scale , 0.3 , predicted_pocket_32 
set sphere_transparency , 0.1 , predicted_pocket_32 
# predicted pocket number 33
select predicted_pocket_33, chain F and resi 547+549+538+550+558+555+554+535+389+557+539+551
set_color predicted_pk_33, [ 0, 255, 255 ] 
color predicted_pk_33 , predicted_pocket_33 
show spheres, predicted_pocket_33 
set sphere_scale , 0.3 , predicted_pocket_33 
set sphere_transparency , 0.1 , predicted_pocket_33 
# predicted pocket number 34
select predicted_pocket_34, chain E and resi 257+258+178+179+256+249+252+177+251+253+254
set_color predicted_pk_34, [ 0, 255, 255 ] 
color predicted_pk_34 , predicted_pocket_34 
show spheres, predicted_pocket_34 
set sphere_scale , 0.3 , predicted_pocket_34 
set sphere_transparency , 0.1 , predicted_pocket_34 
# predicted pocket number 35
select predicted_pocket_35, chain C and resi 397+396+231+391+482+394+481+232+546
set_color predicted_pk_35, [ 0, 255, 255 ] 
color predicted_pk_35 , predicted_pocket_35 
show spheres, predicted_pocket_35 
set sphere_scale , 0.3 , predicted_pocket_35 
set sphere_transparency , 0.1 , predicted_pocket_35 
# predicted pocket number 36
select predicted_pocket_36, chain B and resi 124+273+277+121+125+119+272+278+282+275
set_color predicted_pk_36, [ 0, 255, 255 ] 
color predicted_pk_36 , predicted_pocket_36 
show spheres, predicted_pocket_36 
set sphere_scale , 0.3 , predicted_pocket_36 
set sphere_transparency , 0.1 , predicted_pocket_36 
# predicted pocket number 37
select predicted_pocket_37, chain A and resi 512+377+510+499+376+497+498+360+351
set_color predicted_pk_37, [ 0, 255, 255 ] 
color predicted_pk_37 , predicted_pocket_37 
show spheres, predicted_pocket_37 
set sphere_scale , 0.3 , predicted_pocket_37 
set sphere_transparency , 0.1 , predicted_pocket_37 
# predicted pocket number 38
select predicted_pocket_38, ( chain B and resi 401+413+415+396+400+414+418+426+227+412+229 )  or  ( chain C and resi 226+221+424+278+423+269+270 ) 
set_color predicted_pk_38, [ 0, 255, 255 ] 
color predicted_pk_38 , predicted_pocket_38 
show spheres, predicted_pocket_38 
set sphere_scale , 0.3 , predicted_pocket_38 
set sphere_transparency , 0.1 , predicted_pocket_38 
# predicted pocket number 39
select predicted_pocket_39, chain F and resi 482+481+232+230+231+394+397+391+546+396
set_color predicted_pk_39, [ 0, 255, 255 ] 
color predicted_pk_39 , predicted_pocket_39 
show spheres, predicted_pocket_39 
set sphere_scale , 0.3 , predicted_pocket_39 
set sphere_transparency , 0.1 , predicted_pocket_39 
# predicted pocket number 40
select predicted_pocket_40, chain F and resi 399+404+479+409+403+472+478+412+400
set_color predicted_pk_40, [ 0, 255, 255 ] 
color predicted_pk_40 , predicted_pocket_40 
show spheres, predicted_pocket_40 
set sphere_scale , 0.3 , predicted_pocket_40 
set sphere_transparency , 0.1 , predicted_pocket_40 
# predicted pocket number 41
select predicted_pocket_41, chain A and resi 477+412+395+400+396+479+478+410+409+472+404+399+403
set_color predicted_pk_41, [ 0, 255, 255 ] 
color predicted_pk_41 , predicted_pocket_41 
show spheres, predicted_pocket_41 
set sphere_scale , 0.3 , predicted_pocket_41 
set sphere_transparency , 0.1 , predicted_pocket_41 
# predicted pocket number 42
select predicted_pocket_42, ( chain E and resi 75+68+72+71+66+64+67+63 )  or  ( chain F and resi 458+475+472+456+477+480+395+390+468+549+548+551+391+478 ) 
set_color predicted_pk_42, [ 0, 255, 255 ] 
color predicted_pk_42 , predicted_pocket_42 
show spheres, predicted_pocket_42 
set sphere_scale , 0.3 , predicted_pocket_42 
set sphere_transparency , 0.1 , predicted_pocket_42 
# predicted pocket number 43
select predicted_pocket_43, ( chain D and resi 308+601+372+309+600+370+603+310 )  or  ( chain F and resi 358+363+359+362 ) 
set_color predicted_pk_43, [ 0, 255, 255 ] 
color predicted_pk_43 , predicted_pocket_43 
show spheres, predicted_pocket_43 
set sphere_scale , 0.3 , predicted_pocket_43 
set sphere_transparency , 0.1 , predicted_pocket_43 
# predicted pocket number 44
select predicted_pocket_44, chain D and resi 512+373+360+499+511+145+498+510+377+351+357+376+497+375
set_color predicted_pk_44, [ 0, 255, 255 ] 
color predicted_pk_44 , predicted_pocket_44 
show spheres, predicted_pocket_44 
set sphere_scale , 0.3 , predicted_pocket_44 
set sphere_transparency , 0.1 , predicted_pocket_44 
# predicted pocket number 45
select predicted_pocket_45, chain F and resi 576+625+610+159+621+267+167+577+575+622+93+166+170
set_color predicted_pk_45, [ 0, 255, 255 ] 
color predicted_pk_45 , predicted_pocket_45 
show spheres, predicted_pocket_45 
set sphere_scale , 0.3 , predicted_pocket_45 
set sphere_transparency , 0.1 , predicted_pocket_45 
# predicted pocket number 46
select predicted_pocket_46, chain E and resi 546+394+232+396+397+481+482+391+483+231+230+454
set_color predicted_pk_46, [ 0, 255, 255 ] 
color predicted_pk_46 , predicted_pocket_46 
show spheres, predicted_pocket_46 
set sphere_scale , 0.3 , predicted_pocket_46 
set sphere_transparency , 0.1 , predicted_pocket_46 
# predicted pocket number 47
select predicted_pocket_47, chain B and resi 558+535+539+551+538+557+554+550+532+555
set_color predicted_pk_47, [ 0, 255, 255 ] 
color predicted_pk_47 , predicted_pocket_47 
show spheres, predicted_pocket_47 
set sphere_scale , 0.3 , predicted_pocket_47 
set sphere_transparency , 0.1 , predicted_pocket_47 
# predicted pocket number 48
select predicted_pocket_48, chain D and resi 265+214+224+174+263+248+175+261+237+252+262+225+207+250+251+249+264
set_color predicted_pk_48, [ 0, 255, 255 ] 
color predicted_pk_48 , predicted_pocket_48 
show spheres, predicted_pocket_48 
set sphere_scale , 0.3 , predicted_pocket_48 
set sphere_transparency , 0.1 , predicted_pocket_48 
# predicted pocket number 49
select predicted_pocket_49, chain B and resi 369+354+353+367+302+304+300+366+352+303+301
set_color predicted_pk_49, [ 0, 255, 255 ] 
color predicted_pk_49 , predicted_pocket_49 
show spheres, predicted_pocket_49 
set sphere_scale , 0.3 , predicted_pocket_49 
set sphere_transparency , 0.1 , predicted_pocket_49 
# predicted pocket number 50
select predicted_pocket_50, chain E and resi 510+148+514+377+512+517+146+511+145+495+360+497+496+500+499+147
set_color predicted_pk_50, [ 0, 255, 255 ] 
color predicted_pk_50 , predicted_pocket_50 
show spheres, predicted_pocket_50 
set sphere_scale , 0.3 , predicted_pocket_50 
set sphere_transparency , 0.1 , predicted_pocket_50 
# predicted pocket number 51
select predicted_pocket_51, chain C and resi 497+364+499+351+500+512+511+360+498+145+361+510+377+363
set_color predicted_pk_51, [ 0, 255, 255 ] 
color predicted_pk_51 , predicted_pocket_51 
show spheres, predicted_pocket_51 
set sphere_scale , 0.3 , predicted_pocket_51 
set sphere_transparency , 0.1 , predicted_pocket_51 
# predicted pocket number 52
select predicted_pocket_52, ( chain E and resi 362+359+365+363 )  or  ( chain D and resi 587+590+589+588+585+586 ) 
set_color predicted_pk_52, [ 0, 255, 255 ] 
color predicted_pk_52 , predicted_pocket_52 
show spheres, predicted_pocket_52 
set sphere_scale , 0.3 , predicted_pocket_52 
set sphere_transparency , 0.1 , predicted_pocket_52 
# predicted pocket number 53
select predicted_pocket_53, chain A and resi 304+301+300+303+369+354+302+352+366+353+367
set_color predicted_pk_53, [ 0, 255, 255 ] 
color predicted_pk_53 , predicted_pocket_53 
show spheres, predicted_pocket_53 
set sphere_scale , 0.3 , predicted_pocket_53 
set sphere_transparency , 0.1 , predicted_pocket_53 
# predicted pocket number 54
select predicted_pocket_54, chain B and resi 207+224+252+175+251+174+265+264+214+263+225+250
set_color predicted_pk_54, [ 0, 255, 255 ] 
color predicted_pk_54 , predicted_pocket_54 
show spheres, predicted_pocket_54 
set sphere_scale , 0.3 , predicted_pocket_54 
set sphere_transparency , 0.1 , predicted_pocket_54 
# predicted pocket number 55
select predicted_pocket_55, ( chain A and resi 69+65+68+64 )  or  ( chain B and resi 551+552+556+554+550+555 ) 
set_color predicted_pk_55, [ 0, 255, 255 ] 
color predicted_pk_55 , predicted_pocket_55 
show spheres, predicted_pocket_55 
set sphere_scale , 0.3 , predicted_pocket_55 
set sphere_transparency , 0.1 , predicted_pocket_55 
# predicted pocket number 56
select predicted_pocket_56, chain E and resi 124+119+273+121+282+278+275+277+125+120
set_color predicted_pk_56, [ 0, 255, 255 ] 
color predicted_pk_56 , predicted_pocket_56 
show spheres, predicted_pocket_56 
set sphere_scale , 0.3 , predicted_pocket_56 
set sphere_transparency , 0.1 , predicted_pocket_56 
# predicted pocket number 57
select predicted_pocket_57, chain D and resi 369+300+352+354+353+301+366+304+303+302+367
set_color predicted_pk_57, [ 0, 255, 255 ] 
color predicted_pk_57 , predicted_pocket_57 
show spheres, predicted_pocket_57 
set sphere_scale , 0.3 , predicted_pocket_57 
set sphere_transparency , 0.1 , predicted_pocket_57 
# predicted pocket number 58
select predicted_pocket_58, ( chain E and resi 464+570+569+146+460+154+152+459+153+461 )  or  ( chain F and resi 324+323+325+326+320+322 ) 
set_color predicted_pk_58, [ 0, 255, 255 ] 
color predicted_pk_58 , predicted_pocket_58 
show spheres, predicted_pocket_58 
set sphere_scale , 0.3 , predicted_pocket_58 
set sphere_transparency , 0.1 , predicted_pocket_58 
# predicted pocket number 59
select predicted_pocket_59, chain E and resi 377+495+373+374+592+579+582+589+590+378
set_color predicted_pk_59, [ 0, 255, 255 ] 
color predicted_pk_59 , predicted_pocket_59 
show spheres, predicted_pocket_59 
set sphere_scale , 0.3 , predicted_pocket_59 
set sphere_transparency , 0.1 , predicted_pocket_59 
# predicted pocket number 60
select predicted_pocket_60, chain A and resi 250+252+214+251+225+224+174+175+207+263+265+264
set_color predicted_pk_60, [ 0, 255, 255 ] 
color predicted_pk_60 , predicted_pocket_60 
show spheres, predicted_pocket_60 
set sphere_scale , 0.3 , predicted_pocket_60 
set sphere_transparency , 0.1 , predicted_pocket_60 
# predicted pocket number 61
select predicted_pocket_61, chain E and resi 303+367+301+352+354+304+302+369+366+353+300
set_color predicted_pk_61, [ 0, 255, 255 ] 
color predicted_pk_61 , predicted_pocket_61 
show spheres, predicted_pocket_61 
set sphere_scale , 0.3 , predicted_pocket_61 
set sphere_transparency , 0.1 , predicted_pocket_61 
# predicted pocket number 62
select predicted_pocket_62, ( chain A and resi 325+324+323+76 )  or  ( chain B and resi 570+460+569+461+464+459+152+153 ) 
set_color predicted_pk_62, [ 0, 255, 255 ] 
color predicted_pk_62 , predicted_pocket_62 
show spheres, predicted_pocket_62 
set sphere_scale , 0.3 , predicted_pocket_62 
set sphere_transparency , 0.1 , predicted_pocket_62 
# predicted pocket number 63
select predicted_pocket_63, chain D and resi 373+579+374+590+592+377+582+589+378
set_color predicted_pk_63, [ 0, 255, 255 ] 
color predicted_pk_63 , predicted_pocket_63 
show spheres, predicted_pocket_63 
set sphere_scale , 0.3 , predicted_pocket_63 
set sphere_transparency , 0.1 , predicted_pocket_63 
# predicted pocket number 64
select predicted_pocket_64, chain D and resi 170+275+274+626+172+93+622+167+276+267+273
set_color predicted_pk_64, [ 0, 255, 255 ] 
color predicted_pk_64 , predicted_pocket_64 
show spheres, predicted_pocket_64 
set sphere_scale , 0.3 , predicted_pocket_64 
set sphere_transparency , 0.1 , predicted_pocket_64 
# predicted pocket number 65
select predicted_pocket_65, ( chain A and resi 62+61+64+63 )  or  ( chain B and resi 393+548+392+550 )  or  ( chain C and resi 104+105+639 ) 
set_color predicted_pk_65, [ 0, 255, 255 ] 
color predicted_pk_65 , predicted_pocket_65 
show spheres, predicted_pocket_65 
set sphere_scale , 0.3 , predicted_pocket_65 
set sphere_transparency , 0.1 , predicted_pocket_65 
# predicted pocket number 66
select predicted_pocket_66, chain C and resi 265+175+174+264+251+250+263+224+214+207+252+225
set_color predicted_pk_66, [ 0, 255, 255 ] 
color predicted_pk_66 , predicted_pocket_66 
show spheres, predicted_pocket_66 
set sphere_scale , 0.3 , predicted_pocket_66 
set sphere_transparency , 0.1 , predicted_pocket_66 
# predicted pocket number 67
select predicted_pocket_67, chain C and resi 400+479+409+395+399+477+410+472+478+403+404+412
set_color predicted_pk_67, [ 0, 255, 255 ] 
color predicted_pk_67 , predicted_pocket_67 
show spheres, predicted_pocket_67 
set sphere_scale , 0.3 , predicted_pocket_67 
set sphere_transparency , 0.1 , predicted_pocket_67 
# predicted pocket number 68
select predicted_pocket_68, ( chain D and resi 67+71+63+66 )  or  ( chain C and resi 395+477+478+480 ) 
set_color predicted_pk_68, [ 0, 255, 255 ] 
color predicted_pk_68 , predicted_pocket_68 
show spheres, predicted_pocket_68 
set sphere_scale , 0.3 , predicted_pocket_68 
set sphere_transparency , 0.1 , predicted_pocket_68 
# predicted pocket number 69
select predicted_pocket_69, chain D and resi 522+526+440+491+493+529+441+447+525+521+520+443+523
set_color predicted_pk_69, [ 0, 255, 255 ] 
color predicted_pk_69 , predicted_pocket_69 
show spheres, predicted_pocket_69 
set sphere_scale , 0.3 , predicted_pocket_69 
set sphere_transparency , 0.1 , predicted_pocket_69 
# predicted pocket number 70
select predicted_pocket_70, ( chain C and resi 633+100+630+637+104+287+201+198+105+101+639+634 )  or  ( chain B and resi 393 ) 
set_color predicted_pk_70, [ 0, 255, 255 ] 
color predicted_pk_70 , predicted_pocket_70 
show spheres, predicted_pocket_70 
set sphere_scale , 0.3 , predicted_pocket_70 
set sphere_transparency , 0.1 , predicted_pocket_70 
# predicted pocket number 71
select predicted_pocket_71, ( chain B and resi 506+502+501+504+507+508 )  or  ( chain A and resi 504+508+507+501+502+506 ) 
set_color predicted_pk_71, [ 0, 255, 255 ] 
color predicted_pk_71 , predicted_pocket_71 
show spheres, predicted_pocket_71 
set sphere_scale , 0.3 , predicted_pocket_71 
set sphere_transparency , 0.1 , predicted_pocket_71 
# predicted pocket number 72
select predicted_pocket_72, ( chain D and resi 458+475+472+477+478+480+468 )  or  ( chain C and resi 72+67+75+71 ) 
set_color predicted_pk_72, [ 0, 255, 255 ] 
color predicted_pk_72 , predicted_pocket_72 
show spheres, predicted_pocket_72 
set sphere_scale , 0.3 , predicted_pocket_72 
set sphere_transparency , 0.1 , predicted_pocket_72 
# predicted pocket number 73
select predicted_pocket_73, chain C and resi 211+253+251+250+208+256+214+213+207
set_color predicted_pk_73, [ 0, 255, 255 ] 
color predicted_pk_73 , predicted_pocket_73 
show spheres, predicted_pocket_73 
set sphere_scale , 0.3 , predicted_pocket_73 
set sphere_transparency , 0.1 , predicted_pocket_73 
# predicted pocket number 74
select predicted_pocket_74, chain B and resi 439+448+438+529+440+532+533+536
set_color predicted_pk_74, [ 0, 255, 255 ] 
color predicted_pk_74 , predicted_pocket_74 
show spheres, predicted_pocket_74 
set sphere_scale , 0.3 , predicted_pocket_74 
set sphere_transparency , 0.1 , predicted_pocket_74 
# predicted pocket number 75
select predicted_pocket_75, chain B and resi 628+625+578+624+181+185+182+615+621+627+613+617
set_color predicted_pk_75, [ 0, 255, 255 ] 
color predicted_pk_75 , predicted_pocket_75 
show spheres, predicted_pocket_75 
set sphere_scale , 0.3 , predicted_pocket_75 
set sphere_transparency , 0.1 , predicted_pocket_75 
# predicted pocket number 76
select predicted_pocket_76, chain B and resi 373+589+579+378+592+582+374+377+590
set_color predicted_pk_76, [ 0, 255, 255 ] 
color predicted_pk_76 , predicted_pocket_76 
show spheres, predicted_pocket_76 
set sphere_scale , 0.3 , predicted_pocket_76 
set sphere_transparency , 0.1 , predicted_pocket_76 
# predicted pocket number 77
select predicted_pocket_77, chain E and resi 404+478+399+469+412+400+403+472+477+410+479+409
set_color predicted_pk_77, [ 0, 255, 255 ] 
color predicted_pk_77 , predicted_pocket_77 
show spheres, predicted_pocket_77 
set sphere_scale , 0.3 , predicted_pocket_77 
set sphere_transparency , 0.1 , predicted_pocket_77 
# predicted pocket number 78
select predicted_pocket_78, chain F and resi 602+603+598+336+600+599+606+605+604
set_color predicted_pk_78, [ 0, 255, 255 ] 
color predicted_pk_78 , predicted_pocket_78 
show spheres, predicted_pocket_78 
set sphere_scale , 0.3 , predicted_pocket_78 
set sphere_transparency , 0.1 , predicted_pocket_78 
# predicted pocket number 79
select predicted_pocket_79, chain C and resi 440+532+439+448+438+529+533+536
set_color predicted_pk_79, [ 0, 255, 255 ] 
color predicted_pk_79 , predicted_pocket_79 
show spheres, predicted_pocket_79 
set sphere_scale , 0.3 , predicted_pocket_79 
set sphere_transparency , 0.1 , predicted_pocket_79 
# predicted pocket number 80
select predicted_pocket_80, chain D and resi 448+440+439+529+533+536+532+438
set_color predicted_pk_80, [ 0, 255, 255 ] 
color predicted_pk_80 , predicted_pocket_80 
show spheres, predicted_pocket_80 
set sphere_scale , 0.3 , predicted_pocket_80 
set sphere_transparency , 0.1 , predicted_pocket_80 
# predicted pocket number 81
select predicted_pocket_81, chain F and resi 579+377+495+378+589+374+614+590+582+373
set_color predicted_pk_81, [ 0, 255, 255 ] 
color predicted_pk_81 , predicted_pocket_81 
show spheres, predicted_pocket_81 
set sphere_scale , 0.3 , predicted_pocket_81 
set sphere_transparency , 0.1 , predicted_pocket_81 
# predicted pocket number 82
select predicted_pocket_82, chain A and resi 248+250+262+261+237+207+263+249+224
set_color predicted_pk_82, [ 0, 255, 255 ] 
color predicted_pk_82 , predicted_pocket_82 
show spheres, predicted_pocket_82 
set sphere_scale , 0.3 , predicted_pocket_82 
set sphere_transparency , 0.1 , predicted_pocket_82 
# predicted pocket number 83
select predicted_pocket_83, ( chain B and resi 502+505+503+504+326 )  or  ( chain A and resi 146+501+154+144+145 ) 
set_color predicted_pk_83, [ 0, 255, 255 ] 
color predicted_pk_83 , predicted_pocket_83 
show spheres, predicted_pocket_83 
set sphere_scale , 0.3 , predicted_pocket_83 
set sphere_transparency , 0.1 , predicted_pocket_83 
# predicted pocket number 84
select predicted_pocket_84, chain B and resi 262+207+224+261+249+248+263+237+250
set_color predicted_pk_84, [ 0, 255, 255 ] 
color predicted_pk_84 , predicted_pocket_84 
show spheres, predicted_pocket_84 
set sphere_scale , 0.3 , predicted_pocket_84 
set sphere_transparency , 0.1 , predicted_pocket_84 
# predicted pocket number 85
select predicted_pocket_85, ( chain A and resi 637+639+198+633+630+634+104+101+287+100+201 )  or  ( chain D and resi 393 ) 
set_color predicted_pk_85, [ 0, 255, 255 ] 
color predicted_pk_85 , predicted_pocket_85 
show spheres, predicted_pocket_85 
set sphere_scale , 0.3 , predicted_pocket_85 
set sphere_transparency , 0.1 , predicted_pocket_85 
# predicted pocket number 86
select predicted_pocket_86, ( chain A and resi 554+553+555+556+552+551+550 )  or  ( chain B and resi 65+69+64+68 ) 
set_color predicted_pk_86, [ 0, 255, 255 ] 
color predicted_pk_86 , predicted_pocket_86 
show spheres, predicted_pocket_86 
set sphere_scale , 0.3 , predicted_pocket_86 
set sphere_transparency , 0.1 , predicted_pocket_86 
# predicted pocket number 87
select predicted_pocket_87, chain A and resi 533+438+439+532+440+448+536+529
set_color predicted_pk_87, [ 0, 255, 255 ] 
color predicted_pk_87 , predicted_pocket_87 
show spheres, predicted_pocket_87 
set sphere_scale , 0.3 , predicted_pocket_87 
set sphere_transparency , 0.1 , predicted_pocket_87 
# predicted pocket number 88
select predicted_pocket_88, ( chain C and resi 161+294+116+322+321+320+295+117+115 )  or  ( chain D and resi 141+135+471+143 ) 
set_color predicted_pk_88, [ 0, 255, 255 ] 
color predicted_pk_88 , predicted_pocket_88 
show spheres, predicted_pocket_88 
set sphere_scale , 0.3 , predicted_pocket_88 
set sphere_transparency , 0.1 , predicted_pocket_88 
# predicted pocket number 89
select predicted_pocket_89, ( chain D and resi 67+71+75+72 )  or  ( chain C and resi 477+458+472+478+468+480+475 ) 
set_color predicted_pk_89, [ 0, 255, 255 ] 
color predicted_pk_89 , predicted_pocket_89 
show spheres, predicted_pocket_89 
set sphere_scale , 0.3 , predicted_pocket_89 
set sphere_transparency , 0.1 , predicted_pocket_89 
# predicted pocket number 90
select predicted_pocket_90, chain D and resi 594+591+644+188+588+596+585+600+595+584+586
set_color predicted_pk_90, [ 0, 255, 255 ] 
color predicted_pk_90 , predicted_pocket_90 
show spheres, predicted_pocket_90 
set sphere_scale , 0.3 , predicted_pocket_90 
set sphere_transparency , 0.1 , predicted_pocket_90 
# predicted pocket number 91
select predicted_pocket_91, chain D and resi 272+275+277+278+119+125+282+424+273
set_color predicted_pk_91, [ 0, 255, 255 ] 
color predicted_pk_91 , predicted_pocket_91 
show spheres, predicted_pocket_91 
set sphere_scale , 0.3 , predicted_pocket_91 
set sphere_transparency , 0.1 , predicted_pocket_91 
# predicted pocket number 92
select predicted_pocket_92, chain D and resi 427+469+411+402+412+123+129+403+420+126+415+470+131+416+128+122+473+132+419
set_color predicted_pk_92, [ 0, 255, 255 ] 
color predicted_pk_92 , predicted_pocket_92 
show spheres, predicted_pocket_92 
set sphere_scale , 0.3 , predicted_pocket_92 
set sphere_transparency , 0.1 , predicted_pocket_92 
# predicted pocket number 93
select predicted_pocket_93, ( chain C and resi 63+62+61 )  or  ( chain A and resi 639+104+105+106 )  or  ( chain D and resi 392+393+548 ) 
set_color predicted_pk_93, [ 0, 255, 255 ] 
color predicted_pk_93 , predicted_pocket_93 
show spheres, predicted_pocket_93 
set sphere_scale , 0.3 , predicted_pocket_93 
set sphere_transparency , 0.1 , predicted_pocket_93 
# predicted pocket number 94
select predicted_pocket_94, chain C and resi 381+157+158+577+511+159+575+576+142+573+344
set_color predicted_pk_94, [ 0, 255, 255 ] 
color predicted_pk_94 , predicted_pocket_94 
show spheres, predicted_pocket_94 
set sphere_scale , 0.3 , predicted_pocket_94 
set sphere_transparency , 0.1 , predicted_pocket_94 
# predicted pocket number 95
select predicted_pocket_95, chain D and resi 101+630+637+634+201+633+198+639+104
set_color predicted_pk_95, [ 0, 255, 255 ] 
color predicted_pk_95 , predicted_pocket_95 
show spheres, predicted_pocket_95 
set sphere_scale , 0.3 , predicted_pocket_95 
set sphere_transparency , 0.1 , predicted_pocket_95 
# predicted pocket number 96
select predicted_pocket_96, ( chain C and resi 140+511+141+142+146+154+144+145+509+501+143+508+510 )  or  ( chain D and resi 503+505+504+322+502+507+506+326 ) 
set_color predicted_pk_96, [ 0, 255, 255 ] 
color predicted_pk_96 , predicted_pocket_96 
show spheres, predicted_pocket_96 
set sphere_scale , 0.3 , predicted_pocket_96 
set sphere_transparency , 0.1 , predicted_pocket_96 
# predicted pocket number 97
select predicted_pocket_97, ( chain F and resi 348+506+501+508+144+145+507+500+143+154+504+502+146+141 )  or  ( chain E and resi 504+501+506+505+507+322+502+326+508+503 ) 
set_color predicted_pk_97, [ 0, 255, 255 ] 
color predicted_pk_97 , predicted_pocket_97 
show spheres, predicted_pocket_97 
set sphere_scale , 0.3 , predicted_pocket_97 
set sphere_transparency , 0.1 , predicted_pocket_97 
# predicted pocket number 98
select predicted_pocket_98, ( chain C and resi 277+285+118+286+282+120 )  or  ( chain B and resi 404+410+409+477+476 ) 
set_color predicted_pk_98, [ 0, 255, 255 ] 
color predicted_pk_98 , predicted_pocket_98 
show spheres, predicted_pocket_98 
set sphere_scale , 0.3 , predicted_pocket_98 
set sphere_transparency , 0.1 , predicted_pocket_98 
# predicted pocket number 99
select predicted_pocket_99, chain C and resi 237+262+248+249+250+263+224+261
set_color predicted_pk_99, [ 0, 255, 255 ] 
color predicted_pk_99 , predicted_pocket_99 
show spheres, predicted_pocket_99 
set sphere_scale , 0.3 , predicted_pocket_99 
set sphere_transparency , 0.1 , predicted_pocket_99 
# predicted pocket number 100
select predicted_pocket_100, chain F and resi 427+411+131+126+470+403+132+469+472+412+128+402+416+129+415
set_color predicted_pk_100, [ 0, 255, 255 ] 
color predicted_pk_100 , predicted_pocket_100 
show spheres, predicted_pocket_100 
set sphere_scale , 0.3 , predicted_pocket_100 
set sphere_transparency , 0.1 , predicted_pocket_100 
# predicted pocket number 101
select predicted_pocket_101, chain F and resi 261+237+263+248+224+262+249+250
set_color predicted_pk_101, [ 0, 255, 255 ] 
color predicted_pk_101 , predicted_pocket_101 
show spheres, predicted_pocket_101 
set sphere_scale , 0.3 , predicted_pocket_101 
set sphere_transparency , 0.1 , predicted_pocket_101 
# predicted pocket number 102
select predicted_pocket_102, chain E and resi 309+603+599+598+594+601+602+310+600
set_color predicted_pk_102, [ 0, 255, 255 ] 
color predicted_pk_102 , predicted_pocket_102 
show spheres, predicted_pocket_102 
set sphere_scale , 0.3 , predicted_pocket_102 
set sphere_transparency , 0.1 , predicted_pocket_102 
# predicted pocket number 103
select predicted_pocket_103, chain B and resi 380+616+492+445+181+184+180+491+444+615+446+443+493+447
set_color predicted_pk_103, [ 0, 255, 255 ] 
color predicted_pk_103 , predicted_pocket_103 
show spheres, predicted_pocket_103 
set sphere_scale , 0.3 , predicted_pocket_103 
set sphere_transparency , 0.1 , predicted_pocket_103 
# predicted pocket number 104
select predicted_pocket_104, ( chain E and resi 475+478+472+458+477+480 )  or  ( chain F and resi 71+75+67+72 ) 
set_color predicted_pk_104, [ 0, 255, 255 ] 
color predicted_pk_104 , predicted_pocket_104 
show spheres, predicted_pocket_104 
set sphere_scale , 0.3 , predicted_pocket_104 
set sphere_transparency , 0.1 , predicted_pocket_104 
# predicted pocket number 105
select predicted_pocket_105, ( chain B and resi 299+505+316+503+300+366+352+326 )  or  ( chain A and resi 146+152 ) 
set_color predicted_pk_105, [ 0, 255, 255 ] 
color predicted_pk_105 , predicted_pocket_105 
show spheres, predicted_pocket_105 
set sphere_scale , 0.3 , predicted_pocket_105 
set sphere_transparency , 0.1 , predicted_pocket_105 
# predicted pocket number 106
select predicted_pocket_106, chain C and resi 102+86+637+108+638+105+636+101+639
set_color predicted_pk_106, [ 0, 255, 255 ] 
color predicted_pk_106 , predicted_pocket_106 
show spheres, predicted_pocket_106 
set sphere_scale , 0.3 , predicted_pocket_106 
set sphere_transparency , 0.1 , predicted_pocket_106 
# predicted pocket number 107
select predicted_pocket_107, chain E and resi 425+415+414+227+418+426+229+401
set_color predicted_pk_107, [ 0, 255, 255 ] 
color predicted_pk_107 , predicted_pocket_107 
show spheres, predicted_pocket_107 
set sphere_scale , 0.3 , predicted_pocket_107 
set sphere_transparency , 0.1 , predicted_pocket_107 
# predicted pocket number 108
select predicted_pocket_108, ( chain D and resi 458+552+569+460+459 )  or  ( chain C and resi 72+69+68+76+73 ) 
set_color predicted_pk_108, [ 0, 255, 255 ] 
color predicted_pk_108 , predicted_pocket_108 
show spheres, predicted_pocket_108 
set sphere_scale , 0.3 , predicted_pocket_108 
set sphere_transparency , 0.1 , predicted_pocket_108 
# predicted pocket number 109
select predicted_pocket_109, chain C and resi 445+523+616+184+181+615+380+444+446+493+492+491+522+447+443+526
set_color predicted_pk_109, [ 0, 255, 255 ] 
color predicted_pk_109 , predicted_pocket_109 
show spheres, predicted_pocket_109 
set sphere_scale , 0.3 , predicted_pocket_109 
set sphere_transparency , 0.1 , predicted_pocket_109 
# predicted pocket number 110
select predicted_pocket_110, ( chain E and resi 135+468+471 )  or  ( chain F and resi 161+115+320+116+118+319+117+294+137+295 ) 
set_color predicted_pk_110, [ 0, 255, 255 ] 
color predicted_pk_110 , predicted_pocket_110 
show spheres, predicted_pocket_110 
set sphere_scale , 0.3 , predicted_pocket_110 
set sphere_transparency , 0.1 , predicted_pocket_110 
# predicted pocket number 111
select predicted_pocket_111, chain C and resi 243+539+541+242+540+536
set_color predicted_pk_111, [ 0, 255, 255 ] 
color predicted_pk_111 , predicted_pocket_111 
show spheres, predicted_pocket_111 
set sphere_scale , 0.3 , predicted_pocket_111 
set sphere_transparency , 0.1 , predicted_pocket_111 
# predicted pocket number 112
select predicted_pocket_112, ( chain A and resi 421+422+270+423+226 )  or  ( chain D and resi 421+417+226+422+425+229+414+424+418 ) 
set_color predicted_pk_112, [ 0, 255, 255 ] 
color predicted_pk_112 , predicted_pocket_112 
show spheres, predicted_pocket_112 
set sphere_scale , 0.3 , predicted_pocket_112 
set sphere_transparency , 0.1 , predicted_pocket_112 
# predicted pocket number 113
select predicted_pocket_113, chain F and resi 446+181+615+492+447+445+493+184+443+380+180+444+616+491
set_color predicted_pk_113, [ 0, 255, 255 ] 
color predicted_pk_113 , predicted_pocket_113 
show spheres, predicted_pocket_113 
set sphere_scale , 0.3 , predicted_pocket_113 
set sphere_transparency , 0.1 , predicted_pocket_113 
# predicted pocket number 114
select predicted_pocket_114, chain E and resi 104+106+288+286+287+103+289
set_color predicted_pk_114, [ 0, 255, 255 ] 
color predicted_pk_114 , predicted_pocket_114 
show spheres, predicted_pocket_114 
set sphere_scale , 0.3 , predicted_pocket_114 
set sphere_transparency , 0.1 , predicted_pocket_114 
# predicted pocket number 115
select predicted_pocket_115, chain F and resi 547+485+483+551+535+538+543+387+389+484+534+388
set_color predicted_pk_115, [ 0, 255, 255 ] 
color predicted_pk_115 , predicted_pocket_115 
show spheres, predicted_pocket_115 
set sphere_scale , 0.3 , predicted_pocket_115 
set sphere_transparency , 0.1 , predicted_pocket_115 
# predicted pocket number 116
select predicted_pocket_116, ( chain A and resi 135+143+471+141 )  or  ( chain B and resi 322+321+320+115+318+161+295+297 ) 
set_color predicted_pk_116, [ 0, 255, 255 ] 
color predicted_pk_116 , predicted_pocket_116 
show spheres, predicted_pocket_116 
set sphere_scale , 0.3 , predicted_pocket_116 
set sphere_transparency , 0.1 , predicted_pocket_116 
# predicted pocket number 117
select predicted_pocket_117, chain D and resi 615+181+444+380+445+616+491+493+447+180+446+492+184+443
set_color predicted_pk_117, [ 0, 255, 255 ] 
color predicted_pk_117 , predicted_pocket_117 
show spheres, predicted_pocket_117 
set sphere_scale , 0.3 , predicted_pocket_117 
set sphere_transparency , 0.1 , predicted_pocket_117 
# predicted pocket number 118
select predicted_pocket_118, chain E and resi 104+637+634+198+633+101+100+639+630
set_color predicted_pk_118, [ 0, 255, 255 ] 
color predicted_pk_118 , predicted_pocket_118 
show spheres, predicted_pocket_118 
set sphere_scale , 0.3 , predicted_pocket_118 
set sphere_transparency , 0.1 , predicted_pocket_118 
# predicted pocket number 119
select predicted_pocket_119, chain F and resi 227+413+426+401+414+229+412+418+400+415+396
set_color predicted_pk_119, [ 0, 255, 255 ] 
color predicted_pk_119 , predicted_pocket_119 
show spheres, predicted_pocket_119 
set sphere_scale , 0.3 , predicted_pocket_119 
set sphere_transparency , 0.1 , predicted_pocket_119 
# predicted pocket number 120
select predicted_pocket_120, chain C and resi 226+425+424+401+412+426+229+418+227+415+422+414
set_color predicted_pk_120, [ 0, 255, 255 ] 
color predicted_pk_120 , predicted_pocket_120 
show spheres, predicted_pocket_120 
set sphere_scale , 0.3 , predicted_pocket_120 
set sphere_transparency , 0.1 , predicted_pocket_120 
# predicted pocket number 121
select predicted_pocket_121, chain A and resi 244+540+539+242+243+536
set_color predicted_pk_121, [ 0, 255, 255 ] 
color predicted_pk_121 , predicted_pocket_121 
show spheres, predicted_pocket_121 
set sphere_scale , 0.3 , predicted_pocket_121 
set sphere_transparency , 0.1 , predicted_pocket_121 
# predicted pocket number 122
select predicted_pocket_122, ( chain E and resi 295+117+115+321+318+320+322+297+161 )  or  ( chain F and resi 141+143+471+135 ) 
set_color predicted_pk_122, [ 0, 255, 255 ] 
color predicted_pk_122 , predicted_pocket_122 
show spheres, predicted_pocket_122 
set sphere_scale , 0.3 , predicted_pocket_122 
set sphere_transparency , 0.1 , predicted_pocket_122 
# predicted pocket number 123
select predicted_pocket_123, chain B and resi 70+65+74+61+69+66
set_color predicted_pk_123, [ 0, 255, 255 ] 
color predicted_pk_123 , predicted_pocket_123 
show spheres, predicted_pocket_123 
set sphere_scale , 0.3 , predicted_pocket_123 
set sphere_transparency , 0.1 , predicted_pocket_123 
# predicted pocket number 124
select predicted_pocket_124, chain D and resi 83+328+79+331+330+82+81+80
set_color predicted_pk_124, [ 0, 255, 255 ] 
color predicted_pk_124 , predicted_pocket_124 
show spheres, predicted_pocket_124 
set sphere_scale , 0.3 , predicted_pocket_124 
set sphere_transparency , 0.1 , predicted_pocket_124 
# predicted pocket number 125
select predicted_pocket_125, chain A and resi 541+238+242+235+546+542+234+545+231
set_color predicted_pk_125, [ 0, 255, 255 ] 
color predicted_pk_125 , predicted_pocket_125 
show spheres, predicted_pocket_125 
set sphere_scale , 0.3 , predicted_pocket_125 
set sphere_transparency , 0.1 , predicted_pocket_125 
# predicted pocket number 126
select predicted_pocket_126, chain D and resi 149+512+147+145+146+514+515+517+150+148
set_color predicted_pk_126, [ 0, 255, 255 ] 
color predicted_pk_126 , predicted_pocket_126 
show spheres, predicted_pocket_126 
set sphere_scale , 0.3 , predicted_pocket_126 
set sphere_transparency , 0.1 , predicted_pocket_126 
# predicted pocket number 127
select predicted_pocket_127, ( chain E and resi 72+73+68+76+325+69 )  or  ( chain F and resi 459+552+458+460 ) 
set_color predicted_pk_127, [ 0, 255, 255 ] 
color predicted_pk_127 , predicted_pocket_127 
show spheres, predicted_pocket_127 
set sphere_scale , 0.3 , predicted_pocket_127 
set sphere_transparency , 0.1 , predicted_pocket_127 
# predicted pocket number 128
select predicted_pocket_128, ( chain E and resi 324+322+326+327+325+323 )  or  ( chain F and resi 153+152+569+151+146+154 ) 
set_color predicted_pk_128, [ 0, 255, 255 ] 
color predicted_pk_128 , predicted_pocket_128 
show spheres, predicted_pocket_128 
set sphere_scale , 0.3 , predicted_pocket_128 
set sphere_transparency , 0.1 , predicted_pocket_128 
# predicted pocket number 129
select predicted_pocket_129, ( chain B and resi 322+506+504 )  or  ( chain A and resi 143+508+142+141+501+154+140+144 ) 
set_color predicted_pk_129, [ 0, 255, 255 ] 
color predicted_pk_129 , predicted_pocket_129 
show spheres, predicted_pocket_129 
set sphere_scale , 0.3 , predicted_pocket_129 
set sphere_transparency , 0.1 , predicted_pocket_129 
# predicted pocket number 130
select predicted_pocket_130, ( chain A and resi 504+322+506 )  or  ( chain B and resi 141+143+501+144+142+145+154+508 ) 
set_color predicted_pk_130, [ 0, 255, 255 ] 
color predicted_pk_130 , predicted_pocket_130 
show spheres, predicted_pocket_130 
set sphere_scale , 0.3 , predicted_pocket_130 
set sphere_transparency , 0.1 , predicted_pocket_130 
# predicted pocket number 131
select predicted_pocket_131, chain A and resi 248+261+237+238+234+241
set_color predicted_pk_131, [ 0, 255, 255 ] 
color predicted_pk_131 , predicted_pocket_131 
show spheres, predicted_pocket_131 
set sphere_scale , 0.3 , predicted_pocket_131 
set sphere_transparency , 0.1 , predicted_pocket_131 
# predicted pocket number 132
select predicted_pocket_132, ( chain B and resi 137+471+135 )  or  ( chain A and resi 161+115+117+294+137+116+319+295+320 ) 
set_color predicted_pk_132, [ 0, 255, 255 ] 
color predicted_pk_132 , predicted_pocket_132 
show spheres, predicted_pocket_132 
set sphere_scale , 0.3 , predicted_pocket_132 
set sphere_transparency , 0.1 , predicted_pocket_132 
# predicted pocket number 133
select predicted_pocket_133, chain E and resi 427+473+411+470+469+126+403+128+129+132+402+131
set_color predicted_pk_133, [ 0, 255, 255 ] 
color predicted_pk_133 , predicted_pocket_133 
show spheres, predicted_pocket_133 
set sphere_scale , 0.3 , predicted_pocket_133 
set sphere_transparency , 0.1 , predicted_pocket_133 
# predicted pocket number 134
select predicted_pocket_134, ( chain D and resi 320+117+115+137+294+295+161+116 )  or  ( chain C and resi 137+471+135 ) 
set_color predicted_pk_134, [ 0, 255, 255 ] 
color predicted_pk_134 , predicted_pocket_134 
show spheres, predicted_pocket_134 
set sphere_scale , 0.3 , predicted_pocket_134 
set sphere_transparency , 0.1 , predicted_pocket_134 
# predicted pocket number 135
select predicted_pocket_135, ( chain B and resi 137+320+115+161+117+295+294+116 )  or  ( chain A and resi 135+471+137 ) 
set_color predicted_pk_135, [ 0, 255, 255 ] 
color predicted_pk_135 , predicted_pocket_135 
show spheres, predicted_pocket_135 
set sphere_scale , 0.3 , predicted_pocket_135 
set sphere_transparency , 0.1 , predicted_pocket_135 
# predicted pocket number 136
select predicted_pocket_136, chain A and resi 135+131+123+132+471+473+137+467+470+136
set_color predicted_pk_136, [ 0, 255, 255 ] 
color predicted_pk_136 , predicted_pocket_136 
show spheres, predicted_pocket_136 
set sphere_scale , 0.3 , predicted_pocket_136 
set sphere_transparency , 0.1 , predicted_pocket_136 
# predicted pocket number 137
select predicted_pocket_137, ( chain A and resi 326+504+505+503+502 )  or  ( chain B and resi 146+144+145+154 ) 
set_color predicted_pk_137, [ 0, 255, 255 ] 
color predicted_pk_137 , predicted_pocket_137 
show spheres, predicted_pocket_137 
set sphere_scale , 0.3 , predicted_pocket_137 
set sphere_transparency , 0.1 , predicted_pocket_137 
# predicted pocket number 138
select predicted_pocket_138, chain B and resi 539+551+538+544+547+549+389+392+550
set_color predicted_pk_138, [ 0, 255, 255 ] 
color predicted_pk_138 , predicted_pocket_138 
show spheres, predicted_pocket_138 
set sphere_scale , 0.3 , predicted_pocket_138 
set sphere_transparency , 0.1 , predicted_pocket_138 
# predicted pocket number 139
select predicted_pocket_139, ( chain A and resi 66+65+61+70+62 )  or  ( chain C and resi 104+288+106 ) 
set_color predicted_pk_139, [ 0, 255, 255 ] 
color predicted_pk_139 , predicted_pocket_139 
show spheres, predicted_pocket_139 
set sphere_scale , 0.3 , predicted_pocket_139 
set sphere_transparency , 0.1 , predicted_pocket_139 
# predicted pocket number 140
select predicted_pocket_140, ( chain E and resi 144+146+154+145 )  or  ( chain F and resi 504+502+503+326+505 ) 
set_color predicted_pk_140, [ 0, 255, 255 ] 
color predicted_pk_140 , predicted_pocket_140 
show spheres, predicted_pocket_140 
set sphere_scale , 0.3 , predicted_pocket_140 
set sphere_transparency , 0.1 , predicted_pocket_140 
# predicted pocket number 141
select predicted_pocket_141, ( chain F and resi 131+467+123+470+132+471+137+135+136 )  or  ( chain E and resi 137 ) 
set_color predicted_pk_141, [ 0, 255, 255 ] 
color predicted_pk_141 , predicted_pocket_141 
show spheres, predicted_pocket_141 
set sphere_scale , 0.3 , predicted_pocket_141 
set sphere_transparency , 0.1 , predicted_pocket_141 
# predicted pocket number 142
select predicted_pocket_142, chain A and resi 412+396+400+415+414+418+413+426+401
set_color predicted_pk_142, [ 0, 255, 255 ] 
color predicted_pk_142 , predicted_pocket_142 
show spheres, predicted_pocket_142 
set sphere_scale , 0.3 , predicted_pocket_142 
set sphere_transparency , 0.1 , predicted_pocket_142 
# predicted pocket number 143
select predicted_pocket_143, ( chain D and resi 154+144+145+146+501+143 )  or  ( chain C and resi 326+503+322+505+506+504 ) 
set_color predicted_pk_143, [ 0, 255, 255 ] 
color predicted_pk_143 , predicted_pocket_143 
show spheres, predicted_pocket_143 
set sphere_scale , 0.3 , predicted_pocket_143 
set sphere_transparency , 0.1 , predicted_pocket_143 
# predicted pocket number 144
select predicted_pocket_144, chain E and resi 214+212+211+210+208+207+253+255+213
set_color predicted_pk_144, [ 0, 255, 255 ] 
color predicted_pk_144 , predicted_pocket_144 
show spheres, predicted_pocket_144 
set sphere_scale , 0.3 , predicted_pocket_144 
set sphere_transparency , 0.1 , predicted_pocket_144 
# predicted pocket number 145
select predicted_pocket_145, chain B and resi 201+198+105+638+639+104+634+636+630+637+108+102+86+633+101
set_color predicted_pk_145, [ 0, 255, 255 ] 
color predicted_pk_145 , predicted_pocket_145 
show spheres, predicted_pocket_145 
set sphere_scale , 0.3 , predicted_pocket_145 
set sphere_transparency , 0.1 , predicted_pocket_145 
# predicted pocket number 146
select predicted_pocket_146, ( chain D and resi 368+365+366+367+362 )  or  ( chain F and resi 519+517 ) 
set_color predicted_pk_146, [ 0, 255, 255 ] 
color predicted_pk_146 , predicted_pocket_146 
show spheres, predicted_pocket_146 
set sphere_scale , 0.3 , predicted_pocket_146 
set sphere_transparency , 0.1 , predicted_pocket_146 
# predicted pocket number 147
select predicted_pocket_147, chain D and resi 135+471+470+467+137+136+132+131
set_color predicted_pk_147, [ 0, 255, 255 ] 
color predicted_pk_147 , predicted_pocket_147 
show spheres, predicted_pocket_147 
set sphere_scale , 0.3 , predicted_pocket_147 
set sphere_transparency , 0.1 , predicted_pocket_147 
# predicted pocket number 148
select predicted_pocket_148, chain C and resi 137+470+131+132+136+471+135+467
set_color predicted_pk_148, [ 0, 255, 255 ] 
color predicted_pk_148 , predicted_pocket_148 
show spheres, predicted_pocket_148 
set sphere_scale , 0.3 , predicted_pocket_148 
set sphere_transparency , 0.1 , predicted_pocket_148 
# predicted pocket number 149
select predicted_pocket_149, chain F and resi 242+234+541+231+238+545+235+542+546
set_color predicted_pk_149, [ 0, 255, 255 ] 
color predicted_pk_149 , predicted_pocket_149 
show spheres, predicted_pocket_149 
set sphere_scale , 0.3 , predicted_pocket_149 
set sphere_transparency , 0.1 , predicted_pocket_149 
# predicted pocket number 150
select predicted_pocket_150, ( chain B and resi 320+117+295+319+118+294 )  or  ( chain A and resi 471+475 ) 
set_color predicted_pk_150, [ 0, 255, 255 ] 
color predicted_pk_150 , predicted_pocket_150 
show spheres, predicted_pocket_150 
set sphere_scale , 0.3 , predicted_pocket_150 
set sphere_transparency , 0.1 , predicted_pocket_150 
# predicted pocket number 151
select predicted_pocket_151, chain D and resi 190+608+632+597+338+606+636+596+86+595+642+635+631+336
set_color predicted_pk_151, [ 0, 255, 255 ] 
color predicted_pk_151 , predicted_pocket_151 
show spheres, predicted_pocket_151 
set sphere_scale , 0.3 , predicted_pocket_151 
set sphere_transparency , 0.1 , predicted_pocket_151 
# predicted pocket number 152
select predicted_pocket_152, ( chain C and resi 501+502+508+507+506+504 )  or  ( chain D and resi 508+502+501+507 ) 
set_color predicted_pk_152, [ 0, 255, 255 ] 
color predicted_pk_152 , predicted_pocket_152 
show spheres, predicted_pocket_152 
set sphere_scale , 0.3 , predicted_pocket_152 
set sphere_transparency , 0.1 , predicted_pocket_152 
# predicted pocket number 153
select predicted_pocket_153, chain A and resi 637+636+639+104+86+101+638+105+102+108
set_color predicted_pk_153, [ 0, 255, 255 ] 
color predicted_pk_153 , predicted_pocket_153 
show spheres, predicted_pocket_153 
set sphere_scale , 0.3 , predicted_pocket_153 
set sphere_transparency , 0.1 , predicted_pocket_153 
# predicted pocket number 154
select predicted_pocket_154, chain E and resi 547+388+387+538+551+550+485+535+534+549+539+389+483
set_color predicted_pk_154, [ 0, 255, 255 ] 
color predicted_pk_154 , predicted_pocket_154 
show spheres, predicted_pocket_154 
set sphere_scale , 0.3 , predicted_pocket_154 
set sphere_transparency , 0.1 , predicted_pocket_154 
# predicted pocket number 155
select predicted_pocket_155, chain E and resi 279+219+218+283+220+204+217+221
set_color predicted_pk_155, [ 0, 255, 255 ] 
color predicted_pk_155 , predicted_pocket_155 
show spheres, predicted_pocket_155 
set sphere_scale , 0.3 , predicted_pocket_155 
set sphere_transparency , 0.1 , predicted_pocket_155 
# predicted pocket number 156
select predicted_pocket_156, chain A and resi 446+491+380+444+493+522+447+445+526+616+443+615+523+489+492
set_color predicted_pk_156, [ 0, 255, 255 ] 
color predicted_pk_156 , predicted_pocket_156 
show spheres, predicted_pocket_156 
set sphere_scale , 0.3 , predicted_pocket_156 
set sphere_transparency , 0.1 , predicted_pocket_156 
# predicted pocket number 157
select predicted_pocket_157, chain A and resi 608+636+190+631+635+595+338+597+606+596+632+642
set_color predicted_pk_157, [ 0, 255, 255 ] 
color predicted_pk_157 , predicted_pocket_157 
show spheres, predicted_pocket_157 
set sphere_scale , 0.3 , predicted_pocket_157 
set sphere_transparency , 0.1 , predicted_pocket_157 
# predicted pocket number 158
select predicted_pocket_158, chain D and resi 332+604+312+313+331+333+335+334+311+336
set_color predicted_pk_158, [ 0, 255, 255 ] 
color predicted_pk_158 , predicted_pocket_158 
show spheres, predicted_pocket_158 
set sphere_scale , 0.3 , predicted_pocket_158 
set sphere_transparency , 0.1 , predicted_pocket_158 
# predicted pocket number 159
select predicted_pocket_159, ( chain E and resi 144+143+154+141+140+142+508+501 )  or  ( chain F and resi 161+504+508+506+322 ) 
set_color predicted_pk_159, [ 0, 255, 255 ] 
color predicted_pk_159 , predicted_pocket_159 
show spheres, predicted_pocket_159 
set sphere_scale , 0.3 , predicted_pocket_159 
set sphere_transparency , 0.1 , predicted_pocket_159 
# predicted pocket number 160
select predicted_pocket_160, chain A and resi 326+330+79+77+327+80+82+81+328+83
set_color predicted_pk_160, [ 0, 255, 255 ] 
color predicted_pk_160 , predicted_pocket_160 
show spheres, predicted_pocket_160 
set sphere_scale , 0.3 , predicted_pocket_160 
set sphere_transparency , 0.1 , predicted_pocket_160 
# predicted pocket number 161
select predicted_pocket_161, chain E and resi 332+333+313+83+336+335+334+311+331+312+604
set_color predicted_pk_161, [ 0, 255, 255 ] 
color predicted_pk_161 , predicted_pocket_161 
show spheres, predicted_pocket_161 
set sphere_scale , 0.3 , predicted_pocket_161 
set sphere_transparency , 0.1 , predicted_pocket_161 
# predicted pocket number 162
select predicted_pocket_162, chain C and resi 235+542+234+231+541+545+394+546+238
set_color predicted_pk_162, [ 0, 255, 255 ] 
color predicted_pk_162 , predicted_pocket_162 
show spheres, predicted_pocket_162 
set sphere_scale , 0.3 , predicted_pocket_162 
set sphere_transparency , 0.1 , predicted_pocket_162 
# predicted pocket number 163
select predicted_pocket_163, ( chain E and resi 135+139+506+136+141+137+140+161 )  or  ( chain F and resi 161+141+137+135+136 ) 
set_color predicted_pk_163, [ 0, 255, 255 ] 
color predicted_pk_163 , predicted_pocket_163 
show spheres, predicted_pocket_163 
set sphere_scale , 0.3 , predicted_pocket_163 
set sphere_transparency , 0.1 , predicted_pocket_163 
# predicted pocket number 164
select predicted_pocket_164, ( chain D and resi 320+141+140+321+139+137+506+322+161 )  or  ( chain C and resi 143+135+141 ) 
set_color predicted_pk_164, [ 0, 255, 255 ] 
color predicted_pk_164 , predicted_pocket_164 
show spheres, predicted_pocket_164 
set sphere_scale , 0.3 , predicted_pocket_164 
set sphere_transparency , 0.1 , predicted_pocket_164 
# predicted pocket number 165
select predicted_pocket_165, chain D and resi 551+388+485+387+389+538+547+534+535+483
set_color predicted_pk_165, [ 0, 255, 255 ] 
color predicted_pk_165 , predicted_pocket_165 
show spheres, predicted_pocket_165 
set sphere_scale , 0.3 , predicted_pocket_165 
set sphere_transparency , 0.1 , predicted_pocket_165 
# predicted pocket number 166
select predicted_pocket_166, ( chain E and resi 64+65+68+62 )  or  ( chain F and resi 552+550+554+551 ) 
set_color predicted_pk_166, [ 0, 255, 255 ] 
color predicted_pk_166 , predicted_pocket_166 
show spheres, predicted_pocket_166 
set sphere_scale , 0.3 , predicted_pocket_166 
set sphere_transparency , 0.1 , predicted_pocket_166 
# predicted pocket number 167
select predicted_pocket_167, chain F and resi 290+286+292+95+281+285+99+91+112+291+96+163
set_color predicted_pk_167, [ 0, 255, 255 ] 
color predicted_pk_167 , predicted_pocket_167 
show spheres, predicted_pocket_167 
set sphere_scale , 0.3 , predicted_pocket_167 
set sphere_transparency , 0.1 , predicted_pocket_167 
# predicted pocket number 168
select predicted_pocket_168, chain B and resi 636+642+632+628+608+596+597+631+635+606+190
set_color predicted_pk_168, [ 0, 255, 255 ] 
color predicted_pk_168 , predicted_pocket_168 
show spheres, predicted_pocket_168 
set sphere_scale , 0.3 , predicted_pocket_168 
set sphere_transparency , 0.1 , predicted_pocket_168 
# predicted pocket number 169
select predicted_pocket_169, chain B and resi 387+452+534+535+551+543+538+485+483+547+388+389
set_color predicted_pk_169, [ 0, 255, 255 ] 
color predicted_pk_169 , predicted_pocket_169 
show spheres, predicted_pocket_169 
set sphere_scale , 0.3 , predicted_pocket_169 
set sphere_transparency , 0.1 , predicted_pocket_169 
# predicted pocket number 170
select predicted_pocket_170, chain A and resi 387+547+535+543+389+485+551+388+483+534+538
set_color predicted_pk_170, [ 0, 255, 255 ] 
color predicted_pk_170 , predicted_pocket_170 
show spheres, predicted_pocket_170 
set sphere_scale , 0.3 , predicted_pocket_170 
set sphere_transparency , 0.1 , predicted_pocket_170 
# predicted pocket number 171
select predicted_pocket_171, chain C and resi 535+483+551+543+485+534+388+547+387+389+538
set_color predicted_pk_171, [ 0, 255, 255 ] 
color predicted_pk_171 , predicted_pocket_171 
show spheres, predicted_pocket_171 
set sphere_scale , 0.3 , predicted_pocket_171 
set sphere_transparency , 0.1 , predicted_pocket_171 
# predicted pocket number 172
select predicted_pocket_172, chain E and resi 110+82+84+288+83+290+289+291+109
set_color predicted_pk_172, [ 0, 255, 255 ] 
color predicted_pk_172 , predicted_pocket_172 
show spheres, predicted_pocket_172 
set sphere_scale , 0.3 , predicted_pocket_172 
set sphere_transparency , 0.1 , predicted_pocket_172 
# predicted pocket number 173
select predicted_pocket_173, chain C and resi 427+419+420+416+132+126+122+411
set_color predicted_pk_173, [ 0, 255, 255 ] 
color predicted_pk_173 , predicted_pocket_173 
show spheres, predicted_pocket_173 
set sphere_scale , 0.3 , predicted_pocket_173 
set sphere_transparency , 0.1 , predicted_pocket_173 
# predicted pocket number 174
select predicted_pocket_174, chain B and resi 272+125+126+420+424+122+278+419+282
set_color predicted_pk_174, [ 0, 255, 255 ] 
color predicted_pk_174 , predicted_pocket_174 
show spheres, predicted_pocket_174 
set sphere_scale , 0.3 , predicted_pocket_174 
set sphere_transparency , 0.1 , predicted_pocket_174 
# predicted pocket number 175
select predicted_pocket_175, ( chain C and resi 161+137+136+135+141 )  or  ( chain D and resi 141+135+137+136+161 ) 
set_color predicted_pk_175, [ 0, 255, 255 ] 
color predicted_pk_175 , predicted_pocket_175 
show spheres, predicted_pocket_175 
set sphere_scale , 0.3 , predicted_pocket_175 
set sphere_transparency , 0.1 , predicted_pocket_175 
# predicted pocket number 176
select predicted_pocket_176, chain A and resi 122+412+132+415+123+126+420+419+427+402+416+411
set_color predicted_pk_176, [ 0, 255, 255 ] 
color predicted_pk_176 , predicted_pocket_176 
show spheres, predicted_pocket_176 
set sphere_scale , 0.3 , predicted_pocket_176 
set sphere_transparency , 0.1 , predicted_pocket_176 
select TP, true_pocket* and predicted_pocket*
color green, TP
