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
select true_pocket_0, chain A and resi 457+486+465+456+484+453+130+171+451+575+466+462+386+455+469
set_color true_pk_0, [ 0, 0, 255 ] 
color true_pk_0 , true_pocket_0 
show spheres, true_pocket_0 
set sphere_scale , 0.3 , true_pocket_0 
set sphere_transparency , 0.1 , true_pocket_0 
# true pocket number 1
select true_pocket_1, chain B and resi 466+462+171+451+486+484+457+574+455+469+453+465+456+575
set_color true_pk_1, [ 0, 0, 255 ] 
color true_pk_1 , true_pocket_1 
show spheres, true_pocket_1 
set sphere_scale , 0.3 , true_pocket_1 
set sphere_transparency , 0.1 , true_pocket_1 
# true pocket number 2
select true_pocket_2, chain C and resi 575+451+469+484+574+457+456+171+463+466+455+453+486+462+465
set_color true_pk_2, [ 0, 0, 255 ] 
color true_pk_2 , true_pocket_2 
show spheres, true_pocket_2 
set sphere_scale , 0.3 , true_pocket_2 
set sphere_transparency , 0.1 , true_pocket_2 
# true pocket number 3
select true_pocket_3, chain D and resi 451+171+575+574+466+453+457+469+484+463+462+465+456+134+486
set_color true_pk_3, [ 0, 0, 255 ] 
color true_pk_3 , true_pocket_3 
show spheres, true_pocket_3 
set sphere_scale , 0.3 , true_pocket_3 
set sphere_transparency , 0.1 , true_pocket_3 
# predicted pocket number 0
select predicted_pocket_0, ( chain A and resi 274+411+453+432+322+91+466+403+95+297+451+342+159+340+469+431+399+573+318+429+273+572+402+113+320+134+473+575+139+276+267+456+484+622+463+114+610+167+170+505+275+457+574+427+470+90+462+137+455+161+131+577+386+506+173+621+430+162+141+171+576+298+609+321+158+128+620+345+625+398+130+479+132+94+348+92+465+89+472+140+169+93+135+160+126+296+115+507+295+165+486+136+129+349+172+166+220+341+623+626 )  or  ( chain B and resi 135+137+140+136+161+143+471+139+141 ) 
set_color predicted_pk_0, [ 0, 255, 255 ] 
color predicted_pk_0 , predicted_pocket_0 
show spheres, predicted_pocket_0 
set sphere_scale , 0.3 , predicted_pocket_0 
set sphere_transparency , 0.1 , predicted_pocket_0 
# predicted pocket number 1
select predicted_pocket_1, ( chain D and resi 479+415+418+409+477+480+391+393+410+398+417+430+412+394+429+231+402+399+401+404+425+427+478+390+426+414+395+227+400+416+396+413+548+403+472+229 )  or  ( chain A and resi 119+283+217+270+121+120+285+277+278+223+279+101+219+289+420+118+269+288+286+106+206+205+421+221+125+273+419+424+282+122+275+218+272+287+284+100+204+222+124+104 )  or  ( chain C and resi 63+62+67+71+66 ) 
set_color predicted_pk_1, [ 0, 255, 255 ] 
color predicted_pk_1 , predicted_pocket_1 
show spheres, predicted_pocket_1 
set sphere_scale , 0.3 , predicted_pocket_1 
set sphere_transparency , 0.1 , predicted_pocket_1 
# predicted pocket number 2
select predicted_pocket_2, chain B and resi 94+126+469+473+451+140+166+175+91+620+479+115+130+129+173+167+403+159+158+92+170+610+113+267+398+399+412+131+172+386+609+573+95+345+626+625+341+416+161+411+296+622+462+457+463+160+169+577+415+623+576+621+486+427+93+465+298+342+430+574+297+165+575+432+506+128+455+134+123+429+507+276+456+90+505+466+402+171+162+340+348+132+89+453+349+484+114+470+431
set_color predicted_pk_2, [ 0, 255, 255 ] 
color predicted_pk_2 , predicted_pocket_2 
show spheres, predicted_pocket_2 
set sphere_scale , 0.3 , predicted_pocket_2 
set sphere_transparency , 0.1 , predicted_pocket_2 
# predicted pocket number 3
select predicted_pocket_3, chain D and resi 479+453+94+622+484+167+345+506+625+95+90+610+296+348+134+175+620+609+451+298+577+297+398+115+140+507+114+92+430+128+130+93+113+91+173+574+575+431+402+386+267+573+158+160+399+463+162+159+172+169+349+170+165+89+621+340+486+432+505+466+469+457+166+576+455+341+342+462+465+623+456+131+429+171
set_color predicted_pk_3, [ 0, 255, 255 ] 
color predicted_pk_3 , predicted_pocket_3 
show spheres, predicted_pocket_3 
set sphere_scale , 0.3 , predicted_pocket_3 
set sphere_transparency , 0.1 , predicted_pocket_3 
# predicted pocket number 4
select predicted_pocket_4, chain E and resi 267+128+92+621+94+506+456+134+457+140+89+93+469+113+167+505+170+576+622+430+432+451+172+273+348+507+220+574+609+297+90+620+276+398+399+479+159+166+296+169+349+162+431+484+165+466+173+402+342+610+298+626+341+455+160+95+275+340+429+463+577+465+115+453+130+171+625+114+91+158+575+345+486+274+462+386+573
set_color predicted_pk_4, [ 0, 255, 255 ] 
color predicted_pk_4 , predicted_pocket_4 
show spheres, predicted_pocket_4 
set sphere_scale , 0.3 , predicted_pocket_4 
set sphere_transparency , 0.1 , predicted_pocket_4 
# predicted pocket number 5
select predicted_pocket_5, chain F and resi 576+574+386+169+465+402+469+622+429+451+573+479+267+432+160+621+399+466+484+431+620+462+158+456+455+457+172+486+170+128+575+430+398+173+159+134+131+171+453+166+463+130
set_color predicted_pk_5, [ 0, 255, 255 ] 
color predicted_pk_5 , predicted_pocket_5 
show spheres, predicted_pocket_5 
set sphere_scale , 0.3 , predicted_pocket_5 
set sphere_transparency , 0.1 , predicted_pocket_5 
# predicted pocket number 6
select predicted_pocket_6, ( chain A and resi 134+570+467+460+566+575+152+472+464+471+135+477+463+569+478+146+573+156+153+476+480+461+475+572+158+151+459+571+468+154+552+155+458+553 )  or  ( chain B and resi 318+326+68+67+325+76+72+71+69+506+324+323+73+319+75+322+320 ) 
set_color predicted_pk_6, [ 0, 255, 255 ] 
color predicted_pk_6 , predicted_pocket_6 
show spheres, predicted_pocket_6 
set sphere_scale , 0.3 , predicted_pocket_6 
set sphere_transparency , 0.1 , predicted_pocket_6 
# predicted pocket number 7
select predicted_pocket_7, ( chain B and resi 412+409+396+478+410+399+395+404+479+472+414+394+413+393+403+400 )  or  ( chain C and resi 218+121+120+283+217+100+275+424+280+118+269+278+273+277+124+279+221+219+284+101+119+282+272+125 ) 
set_color predicted_pk_7, [ 0, 255, 255 ] 
color predicted_pk_7 , predicted_pocket_7 
show spheres, predicted_pocket_7 
set sphere_scale , 0.3 , predicted_pocket_7 
set sphere_transparency , 0.1 , predicted_pocket_7 
# predicted pocket number 8
select predicted_pocket_8, chain C and resi 113+166+298+162+576+344+345+342+349+93+575+621+341+115+297+160+94+165+92+296+507+340+577+276+90+91+140+348+609+626+509+95+625+622+170+142+114+167+267+506+89+610+343+159+505
set_color predicted_pk_8, [ 0, 255, 255 ] 
color predicted_pk_8 , predicted_pocket_8 
show spheres, predicted_pocket_8 
set sphere_scale , 0.3 , predicted_pocket_8 
set sphere_transparency , 0.1 , predicted_pocket_8 
# predicted pocket number 9
select predicted_pocket_9, chain C and resi 457+131+399+432+429+411+575+469+456+134+412+463+455+453+573+132+462+403+126+470+451+416+128+129+415+386+486+465+431+430+479+130+466+398+427+473+484+402
set_color predicted_pk_9, [ 0, 255, 255 ] 
color predicted_pk_9 , predicted_pocket_9 
show spheres, predicted_pocket_9 
set sphere_scale , 0.3 , predicted_pocket_9 
set sphere_transparency , 0.1 , predicted_pocket_9 
# predicted pocket number 10
select predicted_pocket_10, ( chain D and resi 323+73+322+325+72+68+76+319+75+78+320+324+326+69 )  or  ( chain C and resi 153+152+155+156+575+572+135+134+463+569+573+458+571+467+460+468+471+552+472+461+464+459+146+154+158 ) 
set_color predicted_pk_10, [ 0, 255, 255 ] 
color predicted_pk_10 , predicted_pocket_10 
show spheres, predicted_pocket_10 
set sphere_scale , 0.3 , predicted_pocket_10 
set sphere_transparency , 0.1 , predicted_pocket_10 
# predicted pocket number 11
select predicted_pocket_11, ( chain C and resi 76+326+75+324+72+325+322+78+327+320+323+319 )  or  ( chain D and resi 151+569+468+134+471+146+154+464+572+152+461+467+575+571+573+158+463+135+155+459+153+156+472 ) 
set_color predicted_pk_11, [ 0, 255, 255 ] 
color predicted_pk_11 , predicted_pocket_11 
show spheres, predicted_pocket_11 
set sphere_scale , 0.3 , predicted_pocket_11 
set sphere_transparency , 0.1 , predicted_pocket_11 
# predicted pocket number 12
select predicted_pocket_12, ( chain B and resi 135+146+569+152+458+460+155+464+573+572+153+459+468+156+467+471+575+154+158+552+463+461+571 )  or  ( chain A and resi 322+323+76+69+73+68+325+319+324+320+75+326+72 ) 
set_color predicted_pk_12, [ 0, 255, 255 ] 
color predicted_pk_12 , predicted_pocket_12 
show spheres, predicted_pocket_12 
set sphere_scale , 0.3 , predicted_pocket_12 
set sphere_transparency , 0.1 , predicted_pocket_12 
# predicted pocket number 13
select predicted_pocket_13, ( chain A and resi 71+67+64+63+68+66+75+72 )  or  ( chain B and resi 390+478+456+458+391+468+395+548+472+480+477+475 )  or  ( chain C and resi 103+288+286+287+289+104+106 ) 
set_color predicted_pk_13, [ 0, 255, 255 ] 
color predicted_pk_13 , predicted_pocket_13 
show spheres, predicted_pocket_13 
set sphere_scale , 0.3 , predicted_pocket_13 
set sphere_transparency , 0.1 , predicted_pocket_13 
# predicted pocket number 14
select predicted_pocket_14, ( chain E and resi 319+76+324+323+327+325+320 )  or  ( chain F and resi 153+572+155+573+156+461+467+158+471+575+459+134+154+464+463+571+135 ) 
set_color predicted_pk_14, [ 0, 255, 255 ] 
color predicted_pk_14 , predicted_pocket_14 
show spheres, predicted_pocket_14 
set sphere_scale , 0.3 , predicted_pocket_14 
set sphere_transparency , 0.1 , predicted_pocket_14 
# predicted pocket number 15
select predicted_pocket_15, chain C and resi 550+535+544+554+549+547+551+389+555+538+539+532+558
set_color predicted_pk_15, [ 0, 255, 255 ] 
color predicted_pk_15 , predicted_pocket_15 
show spheres, predicted_pocket_15 
set sphere_scale , 0.3 , predicted_pocket_15 
set sphere_transparency , 0.1 , predicted_pocket_15 
# predicted pocket number 16
select predicted_pocket_16, chain D and resi 549+389+550+539+557+555+544+547+554+535+551+558+538
set_color predicted_pk_16, [ 0, 255, 255 ] 
color predicted_pk_16 , predicted_pocket_16 
show spheres, predicted_pocket_16 
set sphere_scale , 0.3 , predicted_pocket_16 
set sphere_transparency , 0.1 , predicted_pocket_16 
# predicted pocket number 17
select predicted_pocket_17, chain F and resi 89+90+160+296+114+348+165+113+298+341+349+140+115+507+506+297+345+505+162
set_color predicted_pk_17, [ 0, 255, 255 ] 
color predicted_pk_17 , predicted_pocket_17 
show spheres, predicted_pocket_17 
set sphere_scale , 0.3 , predicted_pocket_17 
set sphere_transparency , 0.1 , predicted_pocket_17 
# predicted pocket number 18
select predicted_pocket_18, ( chain F and resi 72+68+76+65+73+325+64+69 )  or  ( chain E and resi 569+460+552+459+551+557+556+550+554+555+553+566+458 ) 
set_color predicted_pk_18, [ 0, 255, 255 ] 
color predicted_pk_18 , predicted_pocket_18 
show spheres, predicted_pocket_18 
set sphere_scale , 0.3 , predicted_pocket_18 
set sphere_transparency , 0.1 , predicted_pocket_18 
# predicted pocket number 19
select predicted_pocket_19, chain B and resi 445+258+254+256+253+250+177+178+252+179+249+257+251+180
set_color predicted_pk_19, [ 0, 255, 255 ] 
color predicted_pk_19 , predicted_pocket_19 
show spheres, predicted_pocket_19 
set sphere_scale , 0.3 , predicted_pocket_19 
set sphere_transparency , 0.1 , predicted_pocket_19 
# predicted pocket number 20
select predicted_pocket_20, chain A and resi 555+535+558+557+538+550+554+539+389+547+551+549
set_color predicted_pk_20, [ 0, 255, 255 ] 
color predicted_pk_20 , predicted_pocket_20 
show spheres, predicted_pocket_20 
set sphere_scale , 0.3 , predicted_pocket_20 
set sphere_transparency , 0.1 , predicted_pocket_20 
# predicted pocket number 21
select predicted_pocket_21, chain D and resi 391+482+231+397+546+230+232+481+396+394
set_color predicted_pk_21, [ 0, 255, 255 ] 
color predicted_pk_21 , predicted_pocket_21 
show spheres, predicted_pocket_21 
set sphere_scale , 0.3 , predicted_pocket_21 
set sphere_transparency , 0.1 , predicted_pocket_21 
# predicted pocket number 22
select predicted_pocket_22, ( chain B and resi 67+71+66+63+62 )  or  ( chain A and resi 395+390+393+477+391+480+548+478 ) 
set_color predicted_pk_22, [ 0, 255, 255 ] 
color predicted_pk_22 , predicted_pocket_22 
show spheres, predicted_pocket_22 
set sphere_scale , 0.3 , predicted_pocket_22 
set sphere_transparency , 0.1 , predicted_pocket_22 
# predicted pocket number 23
select predicted_pocket_23, chain D and resi 249+179+180+251+252+256+178+257+177+258+253+445+254
set_color predicted_pk_23, [ 0, 255, 255 ] 
color predicted_pk_23 , predicted_pocket_23 
show spheres, predicted_pocket_23 
set sphere_scale , 0.3 , predicted_pocket_23 
set sphere_transparency , 0.1 , predicted_pocket_23 
# predicted pocket number 24
select predicted_pocket_24, ( chain D and resi 371+362 )  or  ( chain F and resi 500+498+497+511+499+145+360+510+363+361+364+351+377+512 ) 
set_color predicted_pk_24, [ 0, 255, 255 ] 
color predicted_pk_24 , predicted_pocket_24 
show spheres, predicted_pocket_24 
set sphere_scale , 0.3 , predicted_pocket_24 
set sphere_transparency , 0.1 , predicted_pocket_24 
# predicted pocket number 25
select predicted_pocket_25, chain C and resi 170+166+451+169+574+160+576+173+134+171+130+172+158+621+620+575+159
set_color predicted_pk_25, [ 0, 255, 255 ] 
color predicted_pk_25 , predicted_pocket_25 
show spheres, predicted_pocket_25 
set sphere_scale , 0.3 , predicted_pocket_25 
set sphere_transparency , 0.1 , predicted_pocket_25 
# predicted pocket number 26
select predicted_pocket_26, chain A and resi 249+258+177+251+179+180+445+254+253+252+178+257+256
set_color predicted_pk_26, [ 0, 255, 255 ] 
color predicted_pk_26 , predicted_pocket_26 
show spheres, predicted_pocket_26 
set sphere_scale , 0.3 , predicted_pocket_26 
set sphere_transparency , 0.1 , predicted_pocket_26 
# predicted pocket number 27
select predicted_pocket_27, chain B and resi 394+231+546+397+396+230+232+481+482+391
set_color predicted_pk_27, [ 0, 255, 255 ] 
color predicted_pk_27 , predicted_pocket_27 
show spheres, predicted_pocket_27 
set sphere_scale , 0.3 , predicted_pocket_27 
set sphere_transparency , 0.1 , predicted_pocket_27 
# predicted pocket number 28
select predicted_pocket_28, chain C and resi 251+254+253+249+258+177+178+252+256+179+257
set_color predicted_pk_28, [ 0, 255, 255 ] 
color predicted_pk_28 , predicted_pocket_28 
show spheres, predicted_pocket_28 
set sphere_scale , 0.3 , predicted_pocket_28 
set sphere_transparency , 0.1 , predicted_pocket_28 
# predicted pocket number 29
select predicted_pocket_29, chain C and resi 592+373+589+377+582+378+374+496+495+579+590
set_color predicted_pk_29, [ 0, 255, 255 ] 
color predicted_pk_29 , predicted_pocket_29 
show spheres, predicted_pocket_29 
set sphere_scale , 0.3 , predicted_pocket_29 
set sphere_transparency , 0.1 , predicted_pocket_29 
# predicted pocket number 30
select predicted_pocket_30, chain A and resi 378+373+496+589+592+495+590+377+582+374+579
set_color predicted_pk_30, [ 0, 255, 255 ] 
color predicted_pk_30 , predicted_pocket_30 
show spheres, predicted_pocket_30 
set sphere_scale , 0.3 , predicted_pocket_30 
set sphere_transparency , 0.1 , predicted_pocket_30 
# predicted pocket number 31
select predicted_pocket_31, chain A and resi 396+481+546+397+394+391+231+482+230+232
set_color predicted_pk_31, [ 0, 255, 255 ] 
color predicted_pk_31 , predicted_pocket_31 
show spheres, predicted_pocket_31 
set sphere_scale , 0.3 , predicted_pocket_31 
set sphere_transparency , 0.1 , predicted_pocket_31 
# predicted pocket number 32
select predicted_pocket_32, chain F and resi 119+273+277+125+121+272+275+278+282+124+120
set_color predicted_pk_32, [ 0, 255, 255 ] 
color predicted_pk_32 , predicted_pocket_32 
show spheres, predicted_pocket_32 
set sphere_scale , 0.3 , predicted_pocket_32 
set sphere_transparency , 0.1 , predicted_pocket_32 
# predicted pocket number 33
select predicted_pocket_33, chain F and resi 549+550+547+558+551+554+539+535+555+538+557+389
set_color predicted_pk_33, [ 0, 255, 255 ] 
color predicted_pk_33 , predicted_pocket_33 
show spheres, predicted_pocket_33 
set sphere_scale , 0.3 , predicted_pocket_33 
set sphere_transparency , 0.1 , predicted_pocket_33 
# predicted pocket number 34
select predicted_pocket_34, chain E and resi 253+254+251+258+257+179+177+178+256+249+252
set_color predicted_pk_34, [ 0, 255, 255 ] 
color predicted_pk_34 , predicted_pocket_34 
show spheres, predicted_pocket_34 
set sphere_scale , 0.3 , predicted_pocket_34 
set sphere_transparency , 0.1 , predicted_pocket_34 
# predicted pocket number 35
select predicted_pocket_35, chain C and resi 397+481+391+231+546+232+396+394+482
set_color predicted_pk_35, [ 0, 255, 255 ] 
color predicted_pk_35 , predicted_pocket_35 
show spheres, predicted_pocket_35 
set sphere_scale , 0.3 , predicted_pocket_35 
set sphere_transparency , 0.1 , predicted_pocket_35 
# predicted pocket number 36
select predicted_pocket_36, chain B and resi 282+125+124+272+278+119+273+121+275+277
set_color predicted_pk_36, [ 0, 255, 255 ] 
color predicted_pk_36 , predicted_pocket_36 
show spheres, predicted_pocket_36 
set sphere_scale , 0.3 , predicted_pocket_36 
set sphere_transparency , 0.1 , predicted_pocket_36 
# predicted pocket number 37
select predicted_pocket_37, chain A and resi 360+499+498+512+510+497+377+376+351
set_color predicted_pk_37, [ 0, 255, 255 ] 
color predicted_pk_37 , predicted_pocket_37 
show spheres, predicted_pocket_37 
set sphere_scale , 0.3 , predicted_pocket_37 
set sphere_transparency , 0.1 , predicted_pocket_37 
# predicted pocket number 38
select predicted_pocket_38, ( chain B and resi 415+412+227+426+413+229+418+401+396+414+400 )  or  ( chain C and resi 269+270+278+424+226+423+221 ) 
set_color predicted_pk_38, [ 0, 255, 255 ] 
color predicted_pk_38 , predicted_pocket_38 
show spheres, predicted_pocket_38 
set sphere_scale , 0.3 , predicted_pocket_38 
set sphere_transparency , 0.1 , predicted_pocket_38 
# predicted pocket number 39
select predicted_pocket_39, chain F and resi 231+396+482+397+230+394+391+481+546+232
set_color predicted_pk_39, [ 0, 255, 255 ] 
color predicted_pk_39 , predicted_pocket_39 
show spheres, predicted_pocket_39 
set sphere_scale , 0.3 , predicted_pocket_39 
set sphere_transparency , 0.1 , predicted_pocket_39 
# predicted pocket number 40
select predicted_pocket_40, chain F and resi 409+403+404+472+400+412+479+478+399
set_color predicted_pk_40, [ 0, 255, 255 ] 
color predicted_pk_40 , predicted_pocket_40 
show spheres, predicted_pocket_40 
set sphere_scale , 0.3 , predicted_pocket_40 
set sphere_transparency , 0.1 , predicted_pocket_40 
# predicted pocket number 41
select predicted_pocket_41, chain A and resi 396+409+399+410+395+404+479+477+472+400+412+403+478
set_color predicted_pk_41, [ 0, 255, 255 ] 
color predicted_pk_41 , predicted_pocket_41 
show spheres, predicted_pocket_41 
set sphere_scale , 0.3 , predicted_pocket_41 
set sphere_transparency , 0.1 , predicted_pocket_41 
# predicted pocket number 42
select predicted_pocket_42, ( chain F and resi 395+391+480+472+390+458+478+456+475+551+468+477+548+549 )  or  ( chain E and resi 67+63+71+75+72+68+66+64 ) 
set_color predicted_pk_42, [ 0, 255, 255 ] 
color predicted_pk_42 , predicted_pocket_42 
show spheres, predicted_pocket_42 
set sphere_scale , 0.3 , predicted_pocket_42 
set sphere_transparency , 0.1 , predicted_pocket_42 
# predicted pocket number 43
select predicted_pocket_43, ( chain D and resi 309+308+603+310+372+601+370+600 )  or  ( chain F and resi 362+363+359+358 ) 
set_color predicted_pk_43, [ 0, 255, 255 ] 
color predicted_pk_43 , predicted_pocket_43 
show spheres, predicted_pocket_43 
set sphere_scale , 0.3 , predicted_pocket_43 
set sphere_transparency , 0.1 , predicted_pocket_43 
# predicted pocket number 44
select predicted_pocket_44, chain D and resi 511+510+498+497+145+376+360+377+512+373+375+357+499+351
set_color predicted_pk_44, [ 0, 255, 255 ] 
color predicted_pk_44 , predicted_pocket_44 
show spheres, predicted_pocket_44 
set sphere_scale , 0.3 , predicted_pocket_44 
set sphere_transparency , 0.1 , predicted_pocket_44 
# predicted pocket number 45
select predicted_pocket_45, chain F and resi 576+610+166+170+93+625+575+167+267+577+621+159+622
set_color predicted_pk_45, [ 0, 255, 255 ] 
color predicted_pk_45 , predicted_pocket_45 
show spheres, predicted_pocket_45 
set sphere_scale , 0.3 , predicted_pocket_45 
set sphere_transparency , 0.1 , predicted_pocket_45 
# predicted pocket number 46
select predicted_pocket_46, chain E and resi 394+231+391+482+396+230+481+232+397+454+483+546
set_color predicted_pk_46, [ 0, 255, 255 ] 
color predicted_pk_46 , predicted_pocket_46 
show spheres, predicted_pocket_46 
set sphere_scale , 0.3 , predicted_pocket_46 
set sphere_transparency , 0.1 , predicted_pocket_46 
# predicted pocket number 47
select predicted_pocket_47, chain B and resi 550+558+539+554+551+535+557+555+532+538
set_color predicted_pk_47, [ 0, 255, 255 ] 
color predicted_pk_47 , predicted_pocket_47 
show spheres, predicted_pocket_47 
set sphere_scale , 0.3 , predicted_pocket_47 
set sphere_transparency , 0.1 , predicted_pocket_47 
# predicted pocket number 48
select predicted_pocket_48, chain D and resi 250+249+225+251+252+261+174+237+224+264+214+262+265+248+263+175+207
set_color predicted_pk_48, [ 0, 255, 255 ] 
color predicted_pk_48 , predicted_pocket_48 
show spheres, predicted_pocket_48 
set sphere_scale , 0.3 , predicted_pocket_48 
set sphere_transparency , 0.1 , predicted_pocket_48 
# predicted pocket number 49
select predicted_pocket_49, chain B and resi 301+353+369+367+366+300+303+354+352+304+302
set_color predicted_pk_49, [ 0, 255, 255 ] 
color predicted_pk_49 , predicted_pocket_49 
show spheres, predicted_pocket_49 
set sphere_scale , 0.3 , predicted_pocket_49 
set sphere_transparency , 0.1 , predicted_pocket_49 
# predicted pocket number 50
select predicted_pocket_50, chain E and resi 514+146+510+495+500+377+496+512+147+497+511+517+148+499+360+145
set_color predicted_pk_50, [ 0, 255, 255 ] 
color predicted_pk_50 , predicted_pocket_50 
show spheres, predicted_pocket_50 
set sphere_scale , 0.3 , predicted_pocket_50 
set sphere_transparency , 0.1 , predicted_pocket_50 
# predicted pocket number 51
select predicted_pocket_51, chain C and resi 363+512+377+511+360+364+498+500+145+361+510+351+497+499
set_color predicted_pk_51, [ 0, 255, 255 ] 
color predicted_pk_51 , predicted_pocket_51 
show spheres, predicted_pocket_51 
set sphere_scale , 0.3 , predicted_pocket_51 
set sphere_transparency , 0.1 , predicted_pocket_51 
# predicted pocket number 52
select predicted_pocket_52, ( chain D and resi 589+586+588+585+587+590 )  or  ( chain E and resi 362+365+363+359 ) 
set_color predicted_pk_52, [ 0, 255, 255 ] 
color predicted_pk_52 , predicted_pocket_52 
show spheres, predicted_pocket_52 
set sphere_scale , 0.3 , predicted_pocket_52 
set sphere_transparency , 0.1 , predicted_pocket_52 
# predicted pocket number 53
select predicted_pocket_53, chain A and resi 304+367+300+301+369+366+354+352+353+302+303
set_color predicted_pk_53, [ 0, 255, 255 ] 
color predicted_pk_53 , predicted_pocket_53 
show spheres, predicted_pocket_53 
set sphere_scale , 0.3 , predicted_pocket_53 
set sphere_transparency , 0.1 , predicted_pocket_53 
# predicted pocket number 54
select predicted_pocket_54, chain B and resi 224+214+174+265+264+250+225+252+251+263+207+175
set_color predicted_pk_54, [ 0, 255, 255 ] 
color predicted_pk_54 , predicted_pocket_54 
show spheres, predicted_pocket_54 
set sphere_scale , 0.3 , predicted_pocket_54 
set sphere_transparency , 0.1 , predicted_pocket_54 
# predicted pocket number 55
select predicted_pocket_55, ( chain B and resi 550+554+556+551+555+552 )  or  ( chain A and resi 64+69+68+65 ) 
set_color predicted_pk_55, [ 0, 255, 255 ] 
color predicted_pk_55 , predicted_pocket_55 
show spheres, predicted_pocket_55 
set sphere_scale , 0.3 , predicted_pocket_55 
set sphere_transparency , 0.1 , predicted_pocket_55 
# predicted pocket number 56
select predicted_pocket_56, chain E and resi 273+120+119+277+282+124+278+275+121+125
set_color predicted_pk_56, [ 0, 255, 255 ] 
color predicted_pk_56 , predicted_pocket_56 
show spheres, predicted_pocket_56 
set sphere_scale , 0.3 , predicted_pocket_56 
set sphere_transparency , 0.1 , predicted_pocket_56 
# predicted pocket number 57
select predicted_pocket_57, chain D and resi 366+353+300+301+304+367+302+303+354+369+352
set_color predicted_pk_57, [ 0, 255, 255 ] 
color predicted_pk_57 , predicted_pocket_57 
show spheres, predicted_pocket_57 
set sphere_scale , 0.3 , predicted_pocket_57 
set sphere_transparency , 0.1 , predicted_pocket_57 
# predicted pocket number 58
select predicted_pocket_58, ( chain E and resi 154+460+461+146+464+153+459+152+570+569 )  or  ( chain F and resi 324+325+323+320+326+322 ) 
set_color predicted_pk_58, [ 0, 255, 255 ] 
color predicted_pk_58 , predicted_pocket_58 
show spheres, predicted_pocket_58 
set sphere_scale , 0.3 , predicted_pocket_58 
set sphere_transparency , 0.1 , predicted_pocket_58 
# predicted pocket number 59
select predicted_pocket_59, chain E and resi 590+378+495+589+592+377+373+582+579+374
set_color predicted_pk_59, [ 0, 255, 255 ] 
color predicted_pk_59 , predicted_pocket_59 
show spheres, predicted_pocket_59 
set sphere_scale , 0.3 , predicted_pocket_59 
set sphere_transparency , 0.1 , predicted_pocket_59 
# predicted pocket number 60
select predicted_pocket_60, chain A and resi 207+174+251+264+263+225+224+265+175+250+252+214
set_color predicted_pk_60, [ 0, 255, 255 ] 
color predicted_pk_60 , predicted_pocket_60 
show spheres, predicted_pocket_60 
set sphere_scale , 0.3 , predicted_pocket_60 
set sphere_transparency , 0.1 , predicted_pocket_60 
# predicted pocket number 61
select predicted_pocket_61, chain E and resi 353+367+300+369+302+366+303+301+304+352+354
set_color predicted_pk_61, [ 0, 255, 255 ] 
color predicted_pk_61 , predicted_pocket_61 
show spheres, predicted_pocket_61 
set sphere_scale , 0.3 , predicted_pocket_61 
set sphere_transparency , 0.1 , predicted_pocket_61 
# predicted pocket number 62
select predicted_pocket_62, ( chain B and resi 464+569+153+570+459+152+461+460 )  or  ( chain A and resi 76+323+324+325 ) 
set_color predicted_pk_62, [ 0, 255, 255 ] 
color predicted_pk_62 , predicted_pocket_62 
show spheres, predicted_pocket_62 
set sphere_scale , 0.3 , predicted_pocket_62 
set sphere_transparency , 0.1 , predicted_pocket_62 
# predicted pocket number 63
select predicted_pocket_63, chain D and resi 589+592+582+377+373+590+579+378+374
set_color predicted_pk_63, [ 0, 255, 255 ] 
color predicted_pk_63 , predicted_pocket_63 
show spheres, predicted_pocket_63 
set sphere_scale , 0.3 , predicted_pocket_63 
set sphere_transparency , 0.1 , predicted_pocket_63 
# predicted pocket number 64
select predicted_pocket_64, chain D and resi 273+267+622+167+626+275+276+274+170+172+93
set_color predicted_pk_64, [ 0, 255, 255 ] 
color predicted_pk_64 , predicted_pocket_64 
show spheres, predicted_pocket_64 
set sphere_scale , 0.3 , predicted_pocket_64 
set sphere_transparency , 0.1 , predicted_pocket_64 
# predicted pocket number 65
select predicted_pocket_65, ( chain C and resi 105+104+639 )  or  ( chain B and resi 550+393+548+392 )  or  ( chain A and resi 64+61+62+63 ) 
set_color predicted_pk_65, [ 0, 255, 255 ] 
color predicted_pk_65 , predicted_pocket_65 
show spheres, predicted_pocket_65 
set sphere_scale , 0.3 , predicted_pocket_65 
set sphere_transparency , 0.1 , predicted_pocket_65 
# predicted pocket number 66
select predicted_pocket_66, chain C and resi 207+264+251+263+265+225+175+214+252+224+250+174
set_color predicted_pk_66, [ 0, 255, 255 ] 
color predicted_pk_66 , predicted_pocket_66 
show spheres, predicted_pocket_66 
set sphere_scale , 0.3 , predicted_pocket_66 
set sphere_transparency , 0.1 , predicted_pocket_66 
# predicted pocket number 67
select predicted_pocket_67, chain C and resi 479+477+410+399+412+478+409+400+404+472+395+403
set_color predicted_pk_67, [ 0, 255, 255 ] 
color predicted_pk_67 , predicted_pocket_67 
show spheres, predicted_pocket_67 
set sphere_scale , 0.3 , predicted_pocket_67 
set sphere_transparency , 0.1 , predicted_pocket_67 
# predicted pocket number 68
select predicted_pocket_68, ( chain D and resi 66+63+71+67 )  or  ( chain C and resi 477+478+480+395 ) 
set_color predicted_pk_68, [ 0, 255, 255 ] 
color predicted_pk_68 , predicted_pocket_68 
show spheres, predicted_pocket_68 
set sphere_scale , 0.3 , predicted_pocket_68 
set sphere_transparency , 0.1 , predicted_pocket_68 
# predicted pocket number 69
select predicted_pocket_69, chain D and resi 443+440+522+526+491+523+520+521+493+529+441+447+525
set_color predicted_pk_69, [ 0, 255, 255 ] 
color predicted_pk_69 , predicted_pocket_69 
show spheres, predicted_pocket_69 
set sphere_scale , 0.3 , predicted_pocket_69 
set sphere_transparency , 0.1 , predicted_pocket_69 
# predicted pocket number 70
select predicted_pocket_70, ( chain C and resi 105+104+198+100+630+287+633+101+639+637+201+634 )  or  ( chain B and resi 393 ) 
set_color predicted_pk_70, [ 0, 255, 255 ] 
color predicted_pk_70 , predicted_pocket_70 
show spheres, predicted_pocket_70 
set sphere_scale , 0.3 , predicted_pocket_70 
set sphere_transparency , 0.1 , predicted_pocket_70 
# predicted pocket number 71
select predicted_pocket_71, ( chain B and resi 508+502+501+506+504+507 )  or  ( chain A and resi 504+502+501+506+508+507 ) 
set_color predicted_pk_71, [ 0, 255, 255 ] 
color predicted_pk_71 , predicted_pocket_71 
show spheres, predicted_pocket_71 
set sphere_scale , 0.3 , predicted_pocket_71 
set sphere_transparency , 0.1 , predicted_pocket_71 
# predicted pocket number 72
select predicted_pocket_72, ( chain D and resi 480+458+475+468+478+477+472 )  or  ( chain C and resi 72+67+71+75 ) 
set_color predicted_pk_72, [ 0, 255, 255 ] 
color predicted_pk_72 , predicted_pocket_72 
show spheres, predicted_pocket_72 
set sphere_scale , 0.3 , predicted_pocket_72 
set sphere_transparency , 0.1 , predicted_pocket_72 
# predicted pocket number 73
select predicted_pocket_73, chain C and resi 207+251+253+214+211+208+250+256+213
set_color predicted_pk_73, [ 0, 255, 255 ] 
color predicted_pk_73 , predicted_pocket_73 
show spheres, predicted_pocket_73 
set sphere_scale , 0.3 , predicted_pocket_73 
set sphere_transparency , 0.1 , predicted_pocket_73 
# predicted pocket number 74
select predicted_pocket_74, chain B and resi 440+439+536+532+438+448+533+529
set_color predicted_pk_74, [ 0, 255, 255 ] 
color predicted_pk_74 , predicted_pocket_74 
show spheres, predicted_pocket_74 
set sphere_scale , 0.3 , predicted_pocket_74 
set sphere_transparency , 0.1 , predicted_pocket_74 
# predicted pocket number 75
select predicted_pocket_75, chain B and resi 182+181+615+628+613+621+627+578+624+617+625+185
set_color predicted_pk_75, [ 0, 255, 255 ] 
color predicted_pk_75 , predicted_pocket_75 
show spheres, predicted_pocket_75 
set sphere_scale , 0.3 , predicted_pocket_75 
set sphere_transparency , 0.1 , predicted_pocket_75 
# predicted pocket number 76
select predicted_pocket_76, chain B and resi 589+579+374+377+592+378+373+590+582
set_color predicted_pk_76, [ 0, 255, 255 ] 
color predicted_pk_76 , predicted_pocket_76 
show spheres, predicted_pocket_76 
set sphere_scale , 0.3 , predicted_pocket_76 
set sphere_transparency , 0.1 , predicted_pocket_76 
# predicted pocket number 77
select predicted_pocket_77, chain E and resi 404+478+409+472+400+410+403+412+477+469+399+479
set_color predicted_pk_77, [ 0, 255, 255 ] 
color predicted_pk_77 , predicted_pocket_77 
show spheres, predicted_pocket_77 
set sphere_scale , 0.3 , predicted_pocket_77 
set sphere_transparency , 0.1 , predicted_pocket_77 
# predicted pocket number 78
select predicted_pocket_78, chain F and resi 603+602+598+599+606+600+605+604+336
set_color predicted_pk_78, [ 0, 255, 255 ] 
color predicted_pk_78 , predicted_pocket_78 
show spheres, predicted_pocket_78 
set sphere_scale , 0.3 , predicted_pocket_78 
set sphere_transparency , 0.1 , predicted_pocket_78 
# predicted pocket number 79
select predicted_pocket_79, chain C and resi 448+439+536+440+533+438+529+532
set_color predicted_pk_79, [ 0, 255, 255 ] 
color predicted_pk_79 , predicted_pocket_79 
show spheres, predicted_pocket_79 
set sphere_scale , 0.3 , predicted_pocket_79 
set sphere_transparency , 0.1 , predicted_pocket_79 
# predicted pocket number 80
select predicted_pocket_80, chain D and resi 438+440+448+439+533+532+536+529
set_color predicted_pk_80, [ 0, 255, 255 ] 
color predicted_pk_80 , predicted_pocket_80 
show spheres, predicted_pocket_80 
set sphere_scale , 0.3 , predicted_pocket_80 
set sphere_transparency , 0.1 , predicted_pocket_80 
# predicted pocket number 81
select predicted_pocket_81, chain F and resi 374+579+495+582+378+589+614+373+377+590
set_color predicted_pk_81, [ 0, 255, 255 ] 
color predicted_pk_81 , predicted_pocket_81 
show spheres, predicted_pocket_81 
set sphere_scale , 0.3 , predicted_pocket_81 
set sphere_transparency , 0.1 , predicted_pocket_81 
# predicted pocket number 82
select predicted_pocket_82, chain A and resi 249+237+248+261+207+263+224+262+250
set_color predicted_pk_82, [ 0, 255, 255 ] 
color predicted_pk_82 , predicted_pocket_82 
show spheres, predicted_pocket_82 
set sphere_scale , 0.3 , predicted_pocket_82 
set sphere_transparency , 0.1 , predicted_pocket_82 
# predicted pocket number 83
select predicted_pocket_83, ( chain B and resi 502+503+326+504+505 )  or  ( chain A and resi 154+501+144+145+146 ) 
set_color predicted_pk_83, [ 0, 255, 255 ] 
color predicted_pk_83 , predicted_pocket_83 
show spheres, predicted_pocket_83 
set sphere_scale , 0.3 , predicted_pocket_83 
set sphere_transparency , 0.1 , predicted_pocket_83 
# predicted pocket number 84
select predicted_pocket_84, chain B and resi 224+237+262+250+248+261+249+263+207
set_color predicted_pk_84, [ 0, 255, 255 ] 
color predicted_pk_84 , predicted_pocket_84 
show spheres, predicted_pocket_84 
set sphere_scale , 0.3 , predicted_pocket_84 
set sphere_transparency , 0.1 , predicted_pocket_84 
# predicted pocket number 85
select predicted_pocket_85, ( chain D and resi 393 )  or  ( chain A and resi 630+639+100+198+101+633+287+201+637+634+104 ) 
set_color predicted_pk_85, [ 0, 255, 255 ] 
color predicted_pk_85 , predicted_pocket_85 
show spheres, predicted_pocket_85 
set sphere_scale , 0.3 , predicted_pocket_85 
set sphere_transparency , 0.1 , predicted_pocket_85 
# predicted pocket number 86
select predicted_pocket_86, ( chain A and resi 555+556+550+552+554+553+551 )  or  ( chain B and resi 69+68+65+64 ) 
set_color predicted_pk_86, [ 0, 255, 255 ] 
color predicted_pk_86 , predicted_pocket_86 
show spheres, predicted_pocket_86 
set sphere_scale , 0.3 , predicted_pocket_86 
set sphere_transparency , 0.1 , predicted_pocket_86 
# predicted pocket number 87
select predicted_pocket_87, chain A and resi 536+532+533+438+448+440+439+529
set_color predicted_pk_87, [ 0, 255, 255 ] 
color predicted_pk_87 , predicted_pocket_87 
show spheres, predicted_pocket_87 
set sphere_scale , 0.3 , predicted_pocket_87 
set sphere_transparency , 0.1 , predicted_pocket_87 
# predicted pocket number 88
select predicted_pocket_88, ( chain D and resi 143+471+141+135 )  or  ( chain C and resi 115+295+161+322+294+116+320+321+117 ) 
set_color predicted_pk_88, [ 0, 255, 255 ] 
color predicted_pk_88 , predicted_pocket_88 
show spheres, predicted_pocket_88 
set sphere_scale , 0.3 , predicted_pocket_88 
set sphere_transparency , 0.1 , predicted_pocket_88 
# predicted pocket number 89
select predicted_pocket_89, ( chain D and resi 72+75+71+67 )  or  ( chain C and resi 475+477+478+480+468+458+472 ) 
set_color predicted_pk_89, [ 0, 255, 255 ] 
color predicted_pk_89 , predicted_pocket_89 
show spheres, predicted_pocket_89 
set sphere_scale , 0.3 , predicted_pocket_89 
set sphere_transparency , 0.1 , predicted_pocket_89 
# predicted pocket number 90
select predicted_pocket_90, chain D and resi 586+591+588+585+595+584+644+188+596+594+600
set_color predicted_pk_90, [ 0, 255, 255 ] 
color predicted_pk_90 , predicted_pocket_90 
show spheres, predicted_pocket_90 
set sphere_scale , 0.3 , predicted_pocket_90 
set sphere_transparency , 0.1 , predicted_pocket_90 
# predicted pocket number 91
select predicted_pocket_91, chain D and resi 273+125+424+277+275+282+119+272+278
set_color predicted_pk_91, [ 0, 255, 255 ] 
color predicted_pk_91 , predicted_pocket_91 
show spheres, predicted_pocket_91 
set sphere_scale , 0.3 , predicted_pocket_91 
set sphere_transparency , 0.1 , predicted_pocket_91 
# predicted pocket number 92
select predicted_pocket_92, chain D and resi 420+402+469+415+132+419+122+411+126+416+473+427+403+129+470+131+412+128+123
set_color predicted_pk_92, [ 0, 255, 255 ] 
color predicted_pk_92 , predicted_pocket_92 
show spheres, predicted_pocket_92 
set sphere_scale , 0.3 , predicted_pocket_92 
set sphere_transparency , 0.1 , predicted_pocket_92 
# predicted pocket number 93
select predicted_pocket_93, ( chain D and resi 393+392+548 )  or  ( chain C and resi 63+62+61 )  or  ( chain A and resi 639+106+105+104 ) 
set_color predicted_pk_93, [ 0, 255, 255 ] 
color predicted_pk_93 , predicted_pocket_93 
show spheres, predicted_pocket_93 
set sphere_scale , 0.3 , predicted_pocket_93 
set sphere_transparency , 0.1 , predicted_pocket_93 
# predicted pocket number 94
select predicted_pocket_94, chain C and resi 142+157+511+576+381+344+158+573+577+575+159
set_color predicted_pk_94, [ 0, 255, 255 ] 
color predicted_pk_94 , predicted_pocket_94 
show spheres, predicted_pocket_94 
set sphere_scale , 0.3 , predicted_pocket_94 
set sphere_transparency , 0.1 , predicted_pocket_94 
# predicted pocket number 95
select predicted_pocket_95, chain D and resi 201+630+637+101+633+634+639+104+198
set_color predicted_pk_95, [ 0, 255, 255 ] 
color predicted_pk_95 , predicted_pocket_95 
show spheres, predicted_pocket_95 
set sphere_scale , 0.3 , predicted_pocket_95 
set sphere_transparency , 0.1 , predicted_pocket_95 
# predicted pocket number 96
select predicted_pocket_96, ( chain C and resi 508+145+510+143+144+140+501+509+142+141+511+146+154 )  or  ( chain D and resi 506+322+503+507+502+505+326+504 ) 
set_color predicted_pk_96, [ 0, 255, 255 ] 
color predicted_pk_96 , predicted_pocket_96 
show spheres, predicted_pocket_96 
set sphere_scale , 0.3 , predicted_pocket_96 
set sphere_transparency , 0.1 , predicted_pocket_96 
# predicted pocket number 97
select predicted_pocket_97, ( chain E and resi 506+502+322+505+326+507+503+501+504+508 )  or  ( chain F and resi 146+141+143+500+501+348+145+506+502+507+504+154+144+508 ) 
set_color predicted_pk_97, [ 0, 255, 255 ] 
color predicted_pk_97 , predicted_pocket_97 
show spheres, predicted_pocket_97 
set sphere_scale , 0.3 , predicted_pocket_97 
set sphere_transparency , 0.1 , predicted_pocket_97 
# predicted pocket number 98
select predicted_pocket_98, ( chain B and resi 477+409+404+476+410 )  or  ( chain C and resi 277+285+286+120+118+282 ) 
set_color predicted_pk_98, [ 0, 255, 255 ] 
color predicted_pk_98 , predicted_pocket_98 
show spheres, predicted_pocket_98 
set sphere_scale , 0.3 , predicted_pocket_98 
set sphere_transparency , 0.1 , predicted_pocket_98 
# predicted pocket number 99
select predicted_pocket_99, chain C and resi 263+262+237+249+248+224+250+261
set_color predicted_pk_99, [ 0, 255, 255 ] 
color predicted_pk_99 , predicted_pocket_99 
show spheres, predicted_pocket_99 
set sphere_scale , 0.3 , predicted_pocket_99 
set sphere_transparency , 0.1 , predicted_pocket_99 
# predicted pocket number 100
select predicted_pocket_100, chain F and resi 131+403+126+472+411+412+128+470+469+132+416+427+129+402+415
set_color predicted_pk_100, [ 0, 255, 255 ] 
color predicted_pk_100 , predicted_pocket_100 
show spheres, predicted_pocket_100 
set sphere_scale , 0.3 , predicted_pocket_100 
set sphere_transparency , 0.1 , predicted_pocket_100 
# predicted pocket number 101
select predicted_pocket_101, chain F and resi 224+249+261+237+248+250+262+263
set_color predicted_pk_101, [ 0, 255, 255 ] 
color predicted_pk_101 , predicted_pocket_101 
show spheres, predicted_pocket_101 
set sphere_scale , 0.3 , predicted_pocket_101 
set sphere_transparency , 0.1 , predicted_pocket_101 
# predicted pocket number 102
select predicted_pocket_102, chain E and resi 602+599+600+310+603+601+309+594+598
set_color predicted_pk_102, [ 0, 255, 255 ] 
color predicted_pk_102 , predicted_pocket_102 
show spheres, predicted_pocket_102 
set sphere_scale , 0.3 , predicted_pocket_102 
set sphere_transparency , 0.1 , predicted_pocket_102 
# predicted pocket number 103
select predicted_pocket_103, chain B and resi 181+491+615+445+380+443+446+492+447+184+616+444+180+493
set_color predicted_pk_103, [ 0, 255, 255 ] 
color predicted_pk_103 , predicted_pocket_103 
show spheres, predicted_pocket_103 
set sphere_scale , 0.3 , predicted_pocket_103 
set sphere_transparency , 0.1 , predicted_pocket_103 
# predicted pocket number 104
select predicted_pocket_104, ( chain F and resi 72+67+71+75 )  or  ( chain E and resi 472+478+477+475+480+458 ) 
set_color predicted_pk_104, [ 0, 255, 255 ] 
color predicted_pk_104 , predicted_pocket_104 
show spheres, predicted_pocket_104 
set sphere_scale , 0.3 , predicted_pocket_104 
set sphere_transparency , 0.1 , predicted_pocket_104 
# predicted pocket number 105
select predicted_pocket_105, ( chain B and resi 366+503+326+300+299+352+316+505 )  or  ( chain A and resi 152+146 ) 
set_color predicted_pk_105, [ 0, 255, 255 ] 
color predicted_pk_105 , predicted_pocket_105 
show spheres, predicted_pocket_105 
set sphere_scale , 0.3 , predicted_pocket_105 
set sphere_transparency , 0.1 , predicted_pocket_105 
# predicted pocket number 106
select predicted_pocket_106, chain C and resi 105+636+101+86+638+639+108+637+102
set_color predicted_pk_106, [ 0, 255, 255 ] 
color predicted_pk_106 , predicted_pocket_106 
show spheres, predicted_pocket_106 
set sphere_scale , 0.3 , predicted_pocket_106 
set sphere_transparency , 0.1 , predicted_pocket_106 
# predicted pocket number 107
select predicted_pocket_107, chain E and resi 229+418+414+425+426+227+415+401
set_color predicted_pk_107, [ 0, 255, 255 ] 
color predicted_pk_107 , predicted_pocket_107 
show spheres, predicted_pocket_107 
set sphere_scale , 0.3 , predicted_pocket_107 
set sphere_transparency , 0.1 , predicted_pocket_107 
# predicted pocket number 108
select predicted_pocket_108, ( chain D and resi 460+459+552+569+458 )  or  ( chain C and resi 73+72+76+68+69 ) 
set_color predicted_pk_108, [ 0, 255, 255 ] 
color predicted_pk_108 , predicted_pocket_108 
show spheres, predicted_pocket_108 
set sphere_scale , 0.3 , predicted_pocket_108 
set sphere_transparency , 0.1 , predicted_pocket_108 
# predicted pocket number 109
select predicted_pocket_109, chain C and resi 522+523+443+526+380+181+615+184+492+491+447+444+445+616+446+493
set_color predicted_pk_109, [ 0, 255, 255 ] 
color predicted_pk_109 , predicted_pocket_109 
show spheres, predicted_pocket_109 
set sphere_scale , 0.3 , predicted_pocket_109 
set sphere_transparency , 0.1 , predicted_pocket_109 
# predicted pocket number 110
select predicted_pocket_110, ( chain F and resi 117+319+116+161+118+115+137+294+320+295 )  or  ( chain E and resi 135+468+471 ) 
set_color predicted_pk_110, [ 0, 255, 255 ] 
color predicted_pk_110 , predicted_pocket_110 
show spheres, predicted_pocket_110 
set sphere_scale , 0.3 , predicted_pocket_110 
set sphere_transparency , 0.1 , predicted_pocket_110 
# predicted pocket number 111
select predicted_pocket_111, chain C and resi 242+243+541+536+540+539
set_color predicted_pk_111, [ 0, 255, 255 ] 
color predicted_pk_111 , predicted_pocket_111 
show spheres, predicted_pocket_111 
set sphere_scale , 0.3 , predicted_pocket_111 
set sphere_transparency , 0.1 , predicted_pocket_111 
# predicted pocket number 112
select predicted_pocket_112, ( chain D and resi 414+422+421+424+425+418+226+417+229 )  or  ( chain A and resi 226+423+422+421+270 ) 
set_color predicted_pk_112, [ 0, 255, 255 ] 
color predicted_pk_112 , predicted_pocket_112 
show spheres, predicted_pocket_112 
set sphere_scale , 0.3 , predicted_pocket_112 
set sphere_transparency , 0.1 , predicted_pocket_112 
# predicted pocket number 113
select predicted_pocket_113, chain F and resi 184+492+446+380+493+447+615+445+443+181+444+180+491+616
set_color predicted_pk_113, [ 0, 255, 255 ] 
color predicted_pk_113 , predicted_pocket_113 
show spheres, predicted_pocket_113 
set sphere_scale , 0.3 , predicted_pocket_113 
set sphere_transparency , 0.1 , predicted_pocket_113 
# predicted pocket number 114
select predicted_pocket_114, chain E and resi 103+288+289+286+106+287+104
set_color predicted_pk_114, [ 0, 255, 255 ] 
color predicted_pk_114 , predicted_pocket_114 
show spheres, predicted_pocket_114 
set sphere_scale , 0.3 , predicted_pocket_114 
set sphere_transparency , 0.1 , predicted_pocket_114 
# predicted pocket number 115
select predicted_pocket_115, chain F and resi 483+484+485+547+388+534+551+535+387+538+543+389
set_color predicted_pk_115, [ 0, 255, 255 ] 
color predicted_pk_115 , predicted_pocket_115 
show spheres, predicted_pocket_115 
set sphere_scale , 0.3 , predicted_pocket_115 
set sphere_transparency , 0.1 , predicted_pocket_115 
# predicted pocket number 116
select predicted_pocket_116, ( chain A and resi 141+471+135+143 )  or  ( chain B and resi 161+297+115+295+322+320+318+321 ) 
set_color predicted_pk_116, [ 0, 255, 255 ] 
color predicted_pk_116 , predicted_pocket_116 
show spheres, predicted_pocket_116 
set sphere_scale , 0.3 , predicted_pocket_116 
set sphere_transparency , 0.1 , predicted_pocket_116 
# predicted pocket number 117
select predicted_pocket_117, chain D and resi 443+181+184+180+380+615+444+492+491+493+446+445+447+616
set_color predicted_pk_117, [ 0, 255, 255 ] 
color predicted_pk_117 , predicted_pocket_117 
show spheres, predicted_pocket_117 
set sphere_scale , 0.3 , predicted_pocket_117 
set sphere_transparency , 0.1 , predicted_pocket_117 
# predicted pocket number 118
select predicted_pocket_118, chain E and resi 101+100+637+630+639+633+634+104+198
set_color predicted_pk_118, [ 0, 255, 255 ] 
color predicted_pk_118 , predicted_pocket_118 
show spheres, predicted_pocket_118 
set sphere_scale , 0.3 , predicted_pocket_118 
set sphere_transparency , 0.1 , predicted_pocket_118 
# predicted pocket number 119
select predicted_pocket_119, chain F and resi 414+396+418+412+400+413+229+401+426+227+415
set_color predicted_pk_119, [ 0, 255, 255 ] 
color predicted_pk_119 , predicted_pocket_119 
show spheres, predicted_pocket_119 
set sphere_scale , 0.3 , predicted_pocket_119 
set sphere_transparency , 0.1 , predicted_pocket_119 
# predicted pocket number 120
select predicted_pocket_120, chain C and resi 418+426+229+424+412+414+226+415+227+425+422+401
set_color predicted_pk_120, [ 0, 255, 255 ] 
color predicted_pk_120 , predicted_pocket_120 
show spheres, predicted_pocket_120 
set sphere_scale , 0.3 , predicted_pocket_120 
set sphere_transparency , 0.1 , predicted_pocket_120 
# predicted pocket number 121
select predicted_pocket_121, chain A and resi 540+536+243+244+242+539
set_color predicted_pk_121, [ 0, 255, 255 ] 
color predicted_pk_121 , predicted_pocket_121 
show spheres, predicted_pocket_121 
set sphere_scale , 0.3 , predicted_pocket_121 
set sphere_transparency , 0.1 , predicted_pocket_121 
# predicted pocket number 122
select predicted_pocket_122, ( chain F and resi 143+471+141+135 )  or  ( chain E and resi 115+318+117+321+297+295+161+322+320 ) 
set_color predicted_pk_122, [ 0, 255, 255 ] 
color predicted_pk_122 , predicted_pocket_122 
show spheres, predicted_pocket_122 
set sphere_scale , 0.3 , predicted_pocket_122 
set sphere_transparency , 0.1 , predicted_pocket_122 
# predicted pocket number 123
select predicted_pocket_123, chain B and resi 70+69+65+66+61+74
set_color predicted_pk_123, [ 0, 255, 255 ] 
color predicted_pk_123 , predicted_pocket_123 
show spheres, predicted_pocket_123 
set sphere_scale , 0.3 , predicted_pocket_123 
set sphere_transparency , 0.1 , predicted_pocket_123 
# predicted pocket number 124
select predicted_pocket_124, chain D and resi 331+80+79+81+82+328+83+330
set_color predicted_pk_124, [ 0, 255, 255 ] 
color predicted_pk_124 , predicted_pocket_124 
show spheres, predicted_pocket_124 
set sphere_scale , 0.3 , predicted_pocket_124 
set sphere_transparency , 0.1 , predicted_pocket_124 
# predicted pocket number 125
select predicted_pocket_125, chain A and resi 235+545+546+542+234+541+231+242+238
set_color predicted_pk_125, [ 0, 255, 255 ] 
color predicted_pk_125 , predicted_pocket_125 
show spheres, predicted_pocket_125 
set sphere_scale , 0.3 , predicted_pocket_125 
set sphere_transparency , 0.1 , predicted_pocket_125 
# predicted pocket number 126
select predicted_pocket_126, chain D and resi 149+147+146+150+517+145+512+148+514+515
set_color predicted_pk_126, [ 0, 255, 255 ] 
color predicted_pk_126 , predicted_pocket_126 
show spheres, predicted_pocket_126 
set sphere_scale , 0.3 , predicted_pocket_126 
set sphere_transparency , 0.1 , predicted_pocket_126 
# predicted pocket number 127
select predicted_pocket_127, ( chain F and resi 458+460+459+552 )  or  ( chain E and resi 73+68+76+325+69+72 ) 
set_color predicted_pk_127, [ 0, 255, 255 ] 
color predicted_pk_127 , predicted_pocket_127 
show spheres, predicted_pocket_127 
set sphere_scale , 0.3 , predicted_pocket_127 
set sphere_transparency , 0.1 , predicted_pocket_127 
# predicted pocket number 128
select predicted_pocket_128, ( chain E and resi 324+326+323+327+322+325 )  or  ( chain F and resi 151+146+153+152+154+569 ) 
set_color predicted_pk_128, [ 0, 255, 255 ] 
color predicted_pk_128 , predicted_pocket_128 
show spheres, predicted_pocket_128 
set sphere_scale , 0.3 , predicted_pocket_128 
set sphere_transparency , 0.1 , predicted_pocket_128 
# predicted pocket number 129
select predicted_pocket_129, ( chain A and resi 140+142+141+154+501+143+144+508 )  or  ( chain B and resi 506+504+322 ) 
set_color predicted_pk_129, [ 0, 255, 255 ] 
color predicted_pk_129 , predicted_pocket_129 
show spheres, predicted_pocket_129 
set sphere_scale , 0.3 , predicted_pocket_129 
set sphere_transparency , 0.1 , predicted_pocket_129 
# predicted pocket number 130
select predicted_pocket_130, ( chain B and resi 508+501+154+145+143+142+141+144 )  or  ( chain A and resi 504+322+506 ) 
set_color predicted_pk_130, [ 0, 255, 255 ] 
color predicted_pk_130 , predicted_pocket_130 
show spheres, predicted_pocket_130 
set sphere_scale , 0.3 , predicted_pocket_130 
set sphere_transparency , 0.1 , predicted_pocket_130 
# predicted pocket number 131
select predicted_pocket_131, chain A and resi 237+241+261+248+234+238
set_color predicted_pk_131, [ 0, 255, 255 ] 
color predicted_pk_131 , predicted_pocket_131 
show spheres, predicted_pocket_131 
set sphere_scale , 0.3 , predicted_pocket_131 
set sphere_transparency , 0.1 , predicted_pocket_131 
# predicted pocket number 132
select predicted_pocket_132, ( chain B and resi 135+137+471 )  or  ( chain A and resi 294+137+117+320+319+115+116+161+295 ) 
set_color predicted_pk_132, [ 0, 255, 255 ] 
color predicted_pk_132 , predicted_pocket_132 
show spheres, predicted_pocket_132 
set sphere_scale , 0.3 , predicted_pocket_132 
set sphere_transparency , 0.1 , predicted_pocket_132 
# predicted pocket number 133
select predicted_pocket_133, chain E and resi 132+473+128+126+131+402+403+470+129+411+469+427
set_color predicted_pk_133, [ 0, 255, 255 ] 
color predicted_pk_133 , predicted_pocket_133 
show spheres, predicted_pocket_133 
set sphere_scale , 0.3 , predicted_pocket_133 
set sphere_transparency , 0.1 , predicted_pocket_133 
# predicted pocket number 134
select predicted_pocket_134, ( chain C and resi 135+137+471 )  or  ( chain D and resi 161+115+116+295+137+294+117+320 ) 
set_color predicted_pk_134, [ 0, 255, 255 ] 
color predicted_pk_134 , predicted_pocket_134 
show spheres, predicted_pocket_134 
set sphere_scale , 0.3 , predicted_pocket_134 
set sphere_transparency , 0.1 , predicted_pocket_134 
# predicted pocket number 135
select predicted_pocket_135, ( chain A and resi 471+135+137 )  or  ( chain B and resi 161+115+137+320+295+294+116+117 ) 
set_color predicted_pk_135, [ 0, 255, 255 ] 
color predicted_pk_135 , predicted_pocket_135 
show spheres, predicted_pocket_135 
set sphere_scale , 0.3 , predicted_pocket_135 
set sphere_transparency , 0.1 , predicted_pocket_135 
# predicted pocket number 136
select predicted_pocket_136, chain A and resi 131+467+136+471+135+470+473+137+123+132
set_color predicted_pk_136, [ 0, 255, 255 ] 
color predicted_pk_136 , predicted_pocket_136 
show spheres, predicted_pocket_136 
set sphere_scale , 0.3 , predicted_pocket_136 
set sphere_transparency , 0.1 , predicted_pocket_136 
# predicted pocket number 137
select predicted_pocket_137, ( chain B and resi 154+145+146+144 )  or  ( chain A and resi 504+502+505+503+326 ) 
set_color predicted_pk_137, [ 0, 255, 255 ] 
color predicted_pk_137 , predicted_pocket_137 
show spheres, predicted_pocket_137 
set sphere_scale , 0.3 , predicted_pocket_137 
set sphere_transparency , 0.1 , predicted_pocket_137 
# predicted pocket number 138
select predicted_pocket_138, chain B and resi 544+389+550+539+551+549+547+538+392
set_color predicted_pk_138, [ 0, 255, 255 ] 
color predicted_pk_138 , predicted_pocket_138 
show spheres, predicted_pocket_138 
set sphere_scale , 0.3 , predicted_pocket_138 
set sphere_transparency , 0.1 , predicted_pocket_138 
# predicted pocket number 139
select predicted_pocket_139, ( chain C and resi 104+288+106 )  or  ( chain A and resi 66+61+70+62+65 ) 
set_color predicted_pk_139, [ 0, 255, 255 ] 
color predicted_pk_139 , predicted_pocket_139 
show spheres, predicted_pocket_139 
set sphere_scale , 0.3 , predicted_pocket_139 
set sphere_transparency , 0.1 , predicted_pocket_139 
# predicted pocket number 140
select predicted_pocket_140, ( chain E and resi 154+146+144+145 )  or  ( chain F and resi 503+502+504+505+326 ) 
set_color predicted_pk_140, [ 0, 255, 255 ] 
color predicted_pk_140 , predicted_pocket_140 
show spheres, predicted_pocket_140 
set sphere_scale , 0.3 , predicted_pocket_140 
set sphere_transparency , 0.1 , predicted_pocket_140 
# predicted pocket number 141
select predicted_pocket_141, ( chain F and resi 131+136+471+123+470+132+137+467+135 )  or  ( chain E and resi 137 ) 
set_color predicted_pk_141, [ 0, 255, 255 ] 
color predicted_pk_141 , predicted_pocket_141 
show spheres, predicted_pocket_141 
set sphere_scale , 0.3 , predicted_pocket_141 
set sphere_transparency , 0.1 , predicted_pocket_141 
# predicted pocket number 142
select predicted_pocket_142, chain A and resi 396+401+415+414+412+400+426+413+418
set_color predicted_pk_142, [ 0, 255, 255 ] 
color predicted_pk_142 , predicted_pocket_142 
show spheres, predicted_pocket_142 
set sphere_scale , 0.3 , predicted_pocket_142 
set sphere_transparency , 0.1 , predicted_pocket_142 
# predicted pocket number 143
select predicted_pocket_143, ( chain D and resi 143+146+145+154+501+144 )  or  ( chain C and resi 504+326+322+506+503+505 ) 
set_color predicted_pk_143, [ 0, 255, 255 ] 
color predicted_pk_143 , predicted_pocket_143 
show spheres, predicted_pocket_143 
set sphere_scale , 0.3 , predicted_pocket_143 
set sphere_transparency , 0.1 , predicted_pocket_143 
# predicted pocket number 144
select predicted_pocket_144, chain E and resi 255+208+212+210+213+207+214+211+253
set_color predicted_pk_144, [ 0, 255, 255 ] 
color predicted_pk_144 , predicted_pocket_144 
show spheres, predicted_pocket_144 
set sphere_scale , 0.3 , predicted_pocket_144 
set sphere_transparency , 0.1 , predicted_pocket_144 
# predicted pocket number 145
select predicted_pocket_145, chain B and resi 104+201+638+102+639+637+101+86+108+198+633+105+636+630+634
set_color predicted_pk_145, [ 0, 255, 255 ] 
color predicted_pk_145 , predicted_pocket_145 
show spheres, predicted_pocket_145 
set sphere_scale , 0.3 , predicted_pocket_145 
set sphere_transparency , 0.1 , predicted_pocket_145 
# predicted pocket number 146
select predicted_pocket_146, ( chain D and resi 365+366+362+368+367 )  or  ( chain F and resi 519+517 ) 
set_color predicted_pk_146, [ 0, 255, 255 ] 
color predicted_pk_146 , predicted_pocket_146 
show spheres, predicted_pocket_146 
set sphere_scale , 0.3 , predicted_pocket_146 
set sphere_transparency , 0.1 , predicted_pocket_146 
# predicted pocket number 147
select predicted_pocket_147, chain D and resi 467+471+136+132+470+137+135+131
set_color predicted_pk_147, [ 0, 255, 255 ] 
color predicted_pk_147 , predicted_pocket_147 
show spheres, predicted_pocket_147 
set sphere_scale , 0.3 , predicted_pocket_147 
set sphere_transparency , 0.1 , predicted_pocket_147 
# predicted pocket number 148
select predicted_pocket_148, chain C and resi 135+131+136+467+137+132+471+470
set_color predicted_pk_148, [ 0, 255, 255 ] 
color predicted_pk_148 , predicted_pocket_148 
show spheres, predicted_pocket_148 
set sphere_scale , 0.3 , predicted_pocket_148 
set sphere_transparency , 0.1 , predicted_pocket_148 
# predicted pocket number 149
select predicted_pocket_149, chain F and resi 545+231+242+238+541+235+542+546+234
set_color predicted_pk_149, [ 0, 255, 255 ] 
color predicted_pk_149 , predicted_pocket_149 
show spheres, predicted_pocket_149 
set sphere_scale , 0.3 , predicted_pocket_149 
set sphere_transparency , 0.1 , predicted_pocket_149 
# predicted pocket number 150
select predicted_pocket_150, ( chain A and resi 471+475 )  or  ( chain B and resi 319+294+118+295+320+117 ) 
set_color predicted_pk_150, [ 0, 255, 255 ] 
color predicted_pk_150 , predicted_pocket_150 
show spheres, predicted_pocket_150 
set sphere_scale , 0.3 , predicted_pocket_150 
set sphere_transparency , 0.1 , predicted_pocket_150 
# predicted pocket number 151
select predicted_pocket_151, chain D and resi 642+608+632+338+595+190+336+596+86+636+631+635+606+597
set_color predicted_pk_151, [ 0, 255, 255 ] 
color predicted_pk_151 , predicted_pocket_151 
show spheres, predicted_pocket_151 
set sphere_scale , 0.3 , predicted_pocket_151 
set sphere_transparency , 0.1 , predicted_pocket_151 
# predicted pocket number 152
select predicted_pocket_152, ( chain D and resi 508+501+507+502 )  or  ( chain C and resi 502+508+501+504+506+507 ) 
set_color predicted_pk_152, [ 0, 255, 255 ] 
color predicted_pk_152 , predicted_pocket_152 
show spheres, predicted_pocket_152 
set sphere_scale , 0.3 , predicted_pocket_152 
set sphere_transparency , 0.1 , predicted_pocket_152 
# predicted pocket number 153
select predicted_pocket_153, chain A and resi 102+638+639+108+101+636+105+637+104+86
set_color predicted_pk_153, [ 0, 255, 255 ] 
color predicted_pk_153 , predicted_pocket_153 
show spheres, predicted_pocket_153 
set sphere_scale , 0.3 , predicted_pocket_153 
set sphere_transparency , 0.1 , predicted_pocket_153 
# predicted pocket number 154
select predicted_pocket_154, chain E and resi 538+547+549+534+535+387+551+389+539+485+388+483+550
set_color predicted_pk_154, [ 0, 255, 255 ] 
color predicted_pk_154 , predicted_pocket_154 
show spheres, predicted_pocket_154 
set sphere_scale , 0.3 , predicted_pocket_154 
set sphere_transparency , 0.1 , predicted_pocket_154 
# predicted pocket number 155
select predicted_pocket_155, chain E and resi 217+283+219+204+220+221+218+279
set_color predicted_pk_155, [ 0, 255, 255 ] 
color predicted_pk_155 , predicted_pocket_155 
show spheres, predicted_pocket_155 
set sphere_scale , 0.3 , predicted_pocket_155 
set sphere_transparency , 0.1 , predicted_pocket_155 
# predicted pocket number 156
select predicted_pocket_156, chain A and resi 491+492+447+523+616+380+443+522+615+445+489+446+444+526+493
set_color predicted_pk_156, [ 0, 255, 255 ] 
color predicted_pk_156 , predicted_pocket_156 
show spheres, predicted_pocket_156 
set sphere_scale , 0.3 , predicted_pocket_156 
set sphere_transparency , 0.1 , predicted_pocket_156 
# predicted pocket number 157
select predicted_pocket_157, chain A and resi 632+597+631+636+596+642+338+606+595+190+608+635
set_color predicted_pk_157, [ 0, 255, 255 ] 
color predicted_pk_157 , predicted_pocket_157 
show spheres, predicted_pocket_157 
set sphere_scale , 0.3 , predicted_pocket_157 
set sphere_transparency , 0.1 , predicted_pocket_157 
# predicted pocket number 158
select predicted_pocket_158, chain D and resi 331+332+336+334+311+313+333+335+312+604
set_color predicted_pk_158, [ 0, 255, 255 ] 
color predicted_pk_158 , predicted_pocket_158 
show spheres, predicted_pocket_158 
set sphere_scale , 0.3 , predicted_pocket_158 
set sphere_transparency , 0.1 , predicted_pocket_158 
# predicted pocket number 159
select predicted_pocket_159, ( chain E and resi 154+141+501+142+140+144+143+508 )  or  ( chain F and resi 161+506+508+504+322 ) 
set_color predicted_pk_159, [ 0, 255, 255 ] 
color predicted_pk_159 , predicted_pocket_159 
show spheres, predicted_pocket_159 
set sphere_scale , 0.3 , predicted_pocket_159 
set sphere_transparency , 0.1 , predicted_pocket_159 
# predicted pocket number 160
select predicted_pocket_160, chain A and resi 79+81+330+77+83+80+326+82+327+328
set_color predicted_pk_160, [ 0, 255, 255 ] 
color predicted_pk_160 , predicted_pocket_160 
show spheres, predicted_pocket_160 
set sphere_scale , 0.3 , predicted_pocket_160 
set sphere_transparency , 0.1 , predicted_pocket_160 
# predicted pocket number 161
select predicted_pocket_161, chain E and resi 83+335+604+333+311+336+332+331+312+334+313
set_color predicted_pk_161, [ 0, 255, 255 ] 
color predicted_pk_161 , predicted_pocket_161 
show spheres, predicted_pocket_161 
set sphere_scale , 0.3 , predicted_pocket_161 
set sphere_transparency , 0.1 , predicted_pocket_161 
# predicted pocket number 162
select predicted_pocket_162, chain C and resi 235+542+541+238+234+231+546+545+394
set_color predicted_pk_162, [ 0, 255, 255 ] 
color predicted_pk_162 , predicted_pocket_162 
show spheres, predicted_pocket_162 
set sphere_scale , 0.3 , predicted_pocket_162 
set sphere_transparency , 0.1 , predicted_pocket_162 
# predicted pocket number 163
select predicted_pocket_163, ( chain E and resi 141+137+506+140+135+139+136+161 )  or  ( chain F and resi 136+161+137+141+135 ) 
set_color predicted_pk_163, [ 0, 255, 255 ] 
color predicted_pk_163 , predicted_pocket_163 
show spheres, predicted_pocket_163 
set sphere_scale , 0.3 , predicted_pocket_163 
set sphere_transparency , 0.1 , predicted_pocket_163 
# predicted pocket number 164
select predicted_pocket_164, ( chain D and resi 322+139+161+321+506+140+141+137+320 )  or  ( chain C and resi 135+141+143 ) 
set_color predicted_pk_164, [ 0, 255, 255 ] 
color predicted_pk_164 , predicted_pocket_164 
show spheres, predicted_pocket_164 
set sphere_scale , 0.3 , predicted_pocket_164 
set sphere_transparency , 0.1 , predicted_pocket_164 
# predicted pocket number 165
select predicted_pocket_165, chain D and resi 389+485+483+388+387+547+534+535+551+538
set_color predicted_pk_165, [ 0, 255, 255 ] 
color predicted_pk_165 , predicted_pocket_165 
show spheres, predicted_pocket_165 
set sphere_scale , 0.3 , predicted_pocket_165 
set sphere_transparency , 0.1 , predicted_pocket_165 
# predicted pocket number 166
select predicted_pocket_166, ( chain F and resi 550+551+554+552 )  or  ( chain E and resi 64+65+62+68 ) 
set_color predicted_pk_166, [ 0, 255, 255 ] 
color predicted_pk_166 , predicted_pocket_166 
show spheres, predicted_pocket_166 
set sphere_scale , 0.3 , predicted_pocket_166 
set sphere_transparency , 0.1 , predicted_pocket_166 
# predicted pocket number 167
select predicted_pocket_167, chain F and resi 291+281+95+290+286+285+91+96+292+163+112+99
set_color predicted_pk_167, [ 0, 255, 255 ] 
color predicted_pk_167 , predicted_pocket_167 
show spheres, predicted_pocket_167 
set sphere_scale , 0.3 , predicted_pocket_167 
set sphere_transparency , 0.1 , predicted_pocket_167 
# predicted pocket number 168
select predicted_pocket_168, chain B and resi 606+642+632+628+596+631+597+190+608+635+636
set_color predicted_pk_168, [ 0, 255, 255 ] 
color predicted_pk_168 , predicted_pocket_168 
show spheres, predicted_pocket_168 
set sphere_scale , 0.3 , predicted_pocket_168 
set sphere_transparency , 0.1 , predicted_pocket_168 
# predicted pocket number 169
select predicted_pocket_169, chain B and resi 452+389+387+534+388+543+535+551+483+547+538+485
set_color predicted_pk_169, [ 0, 255, 255 ] 
color predicted_pk_169 , predicted_pocket_169 
show spheres, predicted_pocket_169 
set sphere_scale , 0.3 , predicted_pocket_169 
set sphere_transparency , 0.1 , predicted_pocket_169 
# predicted pocket number 170
select predicted_pocket_170, chain A and resi 535+534+538+483+485+543+387+389+547+388+551
set_color predicted_pk_170, [ 0, 255, 255 ] 
color predicted_pk_170 , predicted_pocket_170 
show spheres, predicted_pocket_170 
set sphere_scale , 0.3 , predicted_pocket_170 
set sphere_transparency , 0.1 , predicted_pocket_170 
# predicted pocket number 171
select predicted_pocket_171, chain C and resi 535+485+547+551+389+483+387+534+388+538+543
set_color predicted_pk_171, [ 0, 255, 255 ] 
color predicted_pk_171 , predicted_pocket_171 
show spheres, predicted_pocket_171 
set sphere_scale , 0.3 , predicted_pocket_171 
set sphere_transparency , 0.1 , predicted_pocket_171 
# predicted pocket number 172
select predicted_pocket_172, chain E and resi 83+82+288+290+291+289+84+109+110
set_color predicted_pk_172, [ 0, 255, 255 ] 
color predicted_pk_172 , predicted_pocket_172 
show spheres, predicted_pocket_172 
set sphere_scale , 0.3 , predicted_pocket_172 
set sphere_transparency , 0.1 , predicted_pocket_172 
# predicted pocket number 173
select predicted_pocket_173, chain C and resi 126+420+416+419+122+427+132+411
set_color predicted_pk_173, [ 0, 255, 255 ] 
color predicted_pk_173 , predicted_pocket_173 
show spheres, predicted_pocket_173 
set sphere_scale , 0.3 , predicted_pocket_173 
set sphere_transparency , 0.1 , predicted_pocket_173 
# predicted pocket number 174
select predicted_pocket_174, chain B and resi 282+424+126+272+278+419+420+125+122
set_color predicted_pk_174, [ 0, 255, 255 ] 
color predicted_pk_174 , predicted_pocket_174 
show spheres, predicted_pocket_174 
set sphere_scale , 0.3 , predicted_pocket_174 
set sphere_transparency , 0.1 , predicted_pocket_174 
# predicted pocket number 175
select predicted_pocket_175, ( chain C and resi 135+141+161+137+136 )  or  ( chain D and resi 161+136+137+141+135 ) 
set_color predicted_pk_175, [ 0, 255, 255 ] 
color predicted_pk_175 , predicted_pocket_175 
show spheres, predicted_pocket_175 
set sphere_scale , 0.3 , predicted_pocket_175 
set sphere_transparency , 0.1 , predicted_pocket_175 
# predicted pocket number 176
select predicted_pocket_176, chain A and resi 411+415+427+419+412+123+126+402+420+416+132+122
set_color predicted_pk_176, [ 0, 255, 255 ] 
color predicted_pk_176 , predicted_pocket_176 
show spheres, predicted_pocket_176 
set sphere_scale , 0.3 , predicted_pocket_176 
set sphere_transparency , 0.1 , predicted_pocket_176 
select TP, true_pocket* and predicted_pocket*
color green, TP
