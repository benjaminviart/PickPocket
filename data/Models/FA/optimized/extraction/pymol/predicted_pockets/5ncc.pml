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
select true_pocket_0, chain A and resi 465+466+469+453+386+130+457+486+462+575+171+456+451+455+484
set_color true_pk_0, [ 0, 0, 255 ] 
color true_pk_0 , true_pocket_0 
show spheres, true_pocket_0 
set sphere_scale , 0.3 , true_pocket_0 
set sphere_transparency , 0.1 , true_pocket_0 
# true pocket number 1
select true_pocket_1, chain B and resi 574+453+171+575+455+469+465+457+484+466+456+462+486+451
set_color true_pk_1, [ 0, 0, 255 ] 
color true_pk_1 , true_pocket_1 
show spheres, true_pocket_1 
set sphere_scale , 0.3 , true_pocket_1 
set sphere_transparency , 0.1 , true_pocket_1 
# true pocket number 2
select true_pocket_2, chain C and resi 575+457+451+455+462+453+465+463+469+574+484+171+486+456+466
set_color true_pk_2, [ 0, 0, 255 ] 
color true_pk_2 , true_pocket_2 
show spheres, true_pocket_2 
set sphere_scale , 0.3 , true_pocket_2 
set sphere_transparency , 0.1 , true_pocket_2 
# true pocket number 3
select true_pocket_3, chain D and resi 574+484+575+457+451+466+462+171+453+486+465+463+134+456+469
set_color true_pk_3, [ 0, 0, 255 ] 
color true_pk_3 , true_pocket_3 
show spheres, true_pocket_3 
set sphere_scale , 0.3 , true_pocket_3 
set sphere_transparency , 0.1 , true_pocket_3 
# predicted pocket number 0
select predicted_pocket_0, chain B and resi 574+463+610+348+620+171+349+158+126+506+89+169+429+466+340+456+131+115+470+486+577+129+427+90+342+455+507+134+92+345+465+161+484+114+167+132+622+453+451+298+479+432+402+431+621+473+113+170+173+403+94+576+386+341+172+625+159+399+462+609+411+165+296+469+128+166+140+505+573+297+398+160+457+93+130+575
set_color predicted_pk_0, [ 0, 255, 255 ] 
color predicted_pk_0 , predicted_pocket_0 
show spheres, predicted_pocket_0 
set sphere_scale , 0.3 , predicted_pocket_0 
set sphere_transparency , 0.1 , predicted_pocket_0 
# predicted pocket number 1
select predicted_pocket_1, chain A and resi 577+167+93+610+625+134+507+427+506+130+342+398+276+129+165+575+451+89+128+114+403+92+345+576+296+457+402+456+171+173+90+429+609+113+505+465+399+466+126+469+453+432+386+94+115+431+169+131+349+574+470+622+620+484+172+479+340+158+463+298+473+297+573+132+341+621+267+140+462+159+348+411+455+486+626+170+160+166
set_color predicted_pk_1, [ 0, 255, 255 ] 
color predicted_pk_1 , predicted_pocket_1 
show spheres, predicted_pocket_1 
set sphere_scale , 0.3 , predicted_pocket_1 
set sphere_transparency , 0.1 , predicted_pocket_1 
# predicted pocket number 2
select predicted_pocket_2, chain C and resi 403+575+349+457+140+505+129+577+465+469+94+160+298+456+470+506+342+466+131+431+115+165+169+451+432+132+462+167+166+128+626+399+463+267+402+479+113+429+171+159+276+386+411+158+507+622+126+621+610+90+340+453+625+89+609+484+345+620+473+130+486+170+93+134+573+341+348+114+455+296+92+173+161+574+172+427+398+297
set_color predicted_pk_2, [ 0, 255, 255 ] 
color predicted_pk_2 , predicted_pocket_2 
show spheres, predicted_pocket_2 
set sphere_scale , 0.3 , predicted_pocket_2 
set sphere_transparency , 0.1 , predicted_pocket_2 
# predicted pocket number 3
select predicted_pocket_3, chain D and resi 620+457+140+451+158+466+128+507+610+160+506+573+465+134+399+456+420+411+131+89+398+621+609+171+625+453+115+432+463+469+170+297+167+427+169+122+166+340+349+484+575+90+576+165+113+172+473+470+114+132+462+129+505+416+486+419+173+403+92+130+622+429+479+574+159+386+455+93+126+341+577+348+342+345+296+402+298+431+94
set_color predicted_pk_3, [ 0, 255, 255 ] 
color predicted_pk_3 , predicted_pocket_3 
show spheres, predicted_pocket_3 
set sphere_scale , 0.3 , predicted_pocket_3 
set sphere_transparency , 0.1 , predicted_pocket_3 
# predicted pocket number 4
select predicted_pocket_4, chain E and resi 462+453+159+115+140+573+398+267+94+165+429+160+169+167+296+486+625+626+609+297+576+170+577+620+171+457+114+386+505+610+276+431+621+90+622+484+479+463+93+507+158+172+455+344+341+92+340+128+345+166+466+469+399+465+456+574+298+134+506+342+130+173+402+348+89+451+575+432+113+349
set_color predicted_pk_4, [ 0, 255, 255 ] 
color predicted_pk_4 , predicted_pocket_4 
show spheres, predicted_pocket_4 
set sphere_scale , 0.3 , predicted_pocket_4 
set sphere_transparency , 0.1 , predicted_pocket_4 
# predicted pocket number 5
select predicted_pocket_5, ( chain A and resi 286+633+106+283+101+275+217+270+421+637+288+221+285+119+104+282+125+100+269+273+122+198+630+278+420+424+284+287+218+277+219+272+289+639+201+279+634 )  or  ( chain C and resi 62+67+63+66+72+71 )  or  ( chain D and resi 472+417+413+414+396+393+477+391+458+418+480+548+400+416+404+478+468+412+390+394+395 ) 
set_color predicted_pk_5, [ 0, 255, 255 ] 
color predicted_pk_5 , predicted_pocket_5 
show spheres, predicted_pocket_5 
set sphere_scale , 0.3 , predicted_pocket_5 
set sphere_transparency , 0.1 , predicted_pocket_5 
# predicted pocket number 6
select predicted_pocket_6, ( chain B and resi 478+472+413+400+409+391+394+393+546+404+414+232+479+395+403+401+399+231+392+412+396 )  or  ( chain C and resi 120+277+101+272+217+270+283+124+219+100+282+269+273+424+278+125+119+218+216+204+279+275+221 ) 
set_color predicted_pk_6, [ 0, 255, 255 ] 
color predicted_pk_6 , predicted_pocket_6 
show spheres, predicted_pocket_6 
set sphere_scale , 0.3 , predicted_pocket_6 
set sphere_transparency , 0.1 , predicted_pocket_6 
# predicted pocket number 7
select predicted_pocket_7, chain F and resi 479+398+169+455+431+575+158+386+128+134+130+171+166+486+573+430+170+469+462+465+484+453+451+432+463+456+402+457+131+399+429+574+466+427+159
set_color predicted_pk_7, [ 0, 255, 255 ] 
color predicted_pk_7 , predicted_pocket_7 
show spheres, predicted_pocket_7 
set sphere_scale , 0.3 , predicted_pocket_7 
set sphere_transparency , 0.1 , predicted_pocket_7 
# predicted pocket number 8
select predicted_pocket_8, ( chain A and resi 153+478+155+480+569+464+461+472+459+156+460+468+135+471+152+475+463+477+154+467+146+458 )  or  ( chain B and resi 75+319+72+324+76+73+323+71+68+67+322+325+320+69+326 ) 
set_color predicted_pk_8, [ 0, 255, 255 ] 
color predicted_pk_8 , predicted_pocket_8 
show spheres, predicted_pocket_8 
set sphere_scale , 0.3 , predicted_pocket_8 
set sphere_transparency , 0.1 , predicted_pocket_8 
# predicted pocket number 9
select predicted_pocket_9, chain F and resi 343+507+348+297+89+160+92+165+342+114+166+610+609+115+93+113+94+296+90+625+298+340+345+506+341+140+349+344+159+505
set_color predicted_pk_9, [ 0, 255, 255 ] 
color predicted_pk_9 , predicted_pocket_9 
show spheres, predicted_pocket_9 
set sphere_scale , 0.3 , predicted_pocket_9 
set sphere_transparency , 0.1 , predicted_pocket_9 
# predicted pocket number 10
select predicted_pocket_10, ( chain B and resi 478+390+472+468+391+395+480+548+458+477 )  or  ( chain A and resi 67+66+72+75+71+63 )  or  ( chain C and resi 283+285+288+284+287+286 ) 
set_color predicted_pk_10, [ 0, 255, 255 ] 
color predicted_pk_10 , predicted_pocket_10 
show spheres, predicted_pocket_10 
set sphere_scale , 0.3 , predicted_pocket_10 
set sphere_transparency , 0.1 , predicted_pocket_10 
# predicted pocket number 11
select predicted_pocket_11, ( chain C and resi 153+467+155+569+152+471+463+156+154+135+461+464+468+459+146 )  or  ( chain D and resi 316+324+326+325+320+322+323 ) 
set_color predicted_pk_11, [ 0, 255, 255 ] 
color predicted_pk_11 , predicted_pocket_11 
show spheres, predicted_pocket_11 
set sphere_scale , 0.3 , predicted_pocket_11 
set sphere_transparency , 0.1 , predicted_pocket_11 
# predicted pocket number 12
select predicted_pocket_12, ( chain C and resi 505+326+322+506+323+145+154+502+507+146+504+325+324+144+508+503+501 )  or  ( chain D and resi 502+507+506+363+501+326+364+144+508+154+141+504+505+510+500+153+152+145+146+503+143 ) 
set_color predicted_pk_12, [ 0, 255, 255 ] 
color predicted_pk_12 , predicted_pocket_12 
show spheres, predicted_pocket_12 
set sphere_scale , 0.3 , predicted_pocket_12 
set sphere_transparency , 0.1 , predicted_pocket_12 
# predicted pocket number 13
select predicted_pocket_13, ( chain E and resi 365+362+363+359 )  or  ( chain D and resi 585+588+589+590+587+586 ) 
set_color predicted_pk_13, [ 0, 255, 255 ] 
color predicted_pk_13 , predicted_pocket_13 
show spheres, predicted_pocket_13 
set sphere_scale , 0.3 , predicted_pocket_13 
set sphere_transparency , 0.1 , predicted_pocket_13 
# predicted pocket number 14
select predicted_pocket_14, chain D and resi 174+175+237+263+252+224+250+265+251+261+262+249+207+248
set_color predicted_pk_14, [ 0, 255, 255 ] 
color predicted_pk_14 , predicted_pocket_14 
show spheres, predicted_pocket_14 
set sphere_scale , 0.3 , predicted_pocket_14 
set sphere_transparency , 0.1 , predicted_pocket_14 
# predicted pocket number 15
select predicted_pocket_15, chain F and resi 282+272+275+120+124+273+277+119+121+278+125
set_color predicted_pk_15, [ 0, 255, 255 ] 
color predicted_pk_15 , predicted_pocket_15 
show spheres, predicted_pocket_15 
set sphere_scale , 0.3 , predicted_pocket_15 
set sphere_transparency , 0.1 , predicted_pocket_15 
# predicted pocket number 16
select predicted_pocket_16, chain B and resi 497+363+377+512+498+499+145+500+351+510+511+360
set_color predicted_pk_16, [ 0, 255, 255 ] 
color predicted_pk_16 , predicted_pocket_16 
show spheres, predicted_pocket_16 
set sphere_scale , 0.3 , predicted_pocket_16 
set sphere_transparency , 0.1 , predicted_pocket_16 
# predicted pocket number 17
select predicted_pocket_17, chain B and resi 175+207+249+263+250+248+224+174+265+251+237+261+252+262
set_color predicted_pk_17, [ 0, 255, 255 ] 
color predicted_pk_17 , predicted_pocket_17 
show spheres, predicted_pocket_17 
set sphere_scale , 0.3 , predicted_pocket_17 
set sphere_transparency , 0.1 , predicted_pocket_17 
# predicted pocket number 18
select predicted_pocket_18, chain F and resi 180+380+184+615+443+445+616+181+493+491+444+447+492
set_color predicted_pk_18, [ 0, 255, 255 ] 
color predicted_pk_18 , predicted_pocket_18 
show spheres, predicted_pocket_18 
set sphere_scale , 0.3 , predicted_pocket_18 
set sphere_transparency , 0.1 , predicted_pocket_18 
# predicted pocket number 19
select predicted_pocket_19, chain D and resi 119+121+273+124+282+277+275+125+272+278
set_color predicted_pk_19, [ 0, 255, 255 ] 
color predicted_pk_19 , predicted_pocket_19 
show spheres, predicted_pocket_19 
set sphere_scale , 0.3 , predicted_pocket_19 
set sphere_transparency , 0.1 , predicted_pocket_19 
# predicted pocket number 20
select predicted_pocket_20, ( chain E and resi 324+325+319+76+323+320+327 )  or  ( chain F and resi 467+464+459+135 ) 
set_color predicted_pk_20, [ 0, 255, 255 ] 
color predicted_pk_20 , predicted_pocket_20 
show spheres, predicted_pocket_20 
set sphere_scale , 0.3 , predicted_pocket_20 
set sphere_transparency , 0.1 , predicted_pocket_20 
# predicted pocket number 21
select predicted_pocket_21, ( chain E and resi 569+464+461+460+153+152+156+459+155+154 )  or  ( chain F and resi 320+325+323+324 ) 
set_color predicted_pk_21, [ 0, 255, 255 ] 
color predicted_pk_21 , predicted_pocket_21 
show spheres, predicted_pocket_21 
set sphere_scale , 0.3 , predicted_pocket_21 
set sphere_transparency , 0.1 , predicted_pocket_21 
# predicted pocket number 22
select predicted_pocket_22, ( chain B and resi 464+459+570+569+461+460+153+154+152 )  or  ( chain A and resi 324+325+323 ) 
set_color predicted_pk_22, [ 0, 255, 255 ] 
color predicted_pk_22 , predicted_pocket_22 
show spheres, predicted_pocket_22 
set sphere_scale , 0.3 , predicted_pocket_22 
set sphere_transparency , 0.1 , predicted_pocket_22 
# predicted pocket number 23
select predicted_pocket_23, chain A and resi 207+263+252+224+174+251+265+250+175
set_color predicted_pk_23, [ 0, 255, 255 ] 
color predicted_pk_23 , predicted_pocket_23 
show spheres, predicted_pocket_23 
set sphere_scale , 0.3 , predicted_pocket_23 
set sphere_transparency , 0.1 , predicted_pocket_23 
# predicted pocket number 24
select predicted_pocket_24, ( chain A and resi 69+68+64+65 )  or  ( chain B and resi 550+552+555+554+556+551 ) 
set_color predicted_pk_24, [ 0, 255, 255 ] 
color predicted_pk_24 , predicted_pocket_24 
show spheres, predicted_pocket_24 
set sphere_scale , 0.3 , predicted_pocket_24 
set sphere_transparency , 0.1 , predicted_pocket_24 
# predicted pocket number 25
select predicted_pocket_25, chain C and resi 263+250+265+264+207+224+174+252+251+175
set_color predicted_pk_25, [ 0, 255, 255 ] 
color predicted_pk_25 , predicted_pocket_25 
show spheres, predicted_pocket_25 
set sphere_scale , 0.3 , predicted_pocket_25 
set sphere_transparency , 0.1 , predicted_pocket_25 
# predicted pocket number 26
select predicted_pocket_26, ( chain A and resi 145+146+144+154+501 )  or  ( chain B and resi 505+503+504+502+326 ) 
set_color predicted_pk_26, [ 0, 255, 255 ] 
color predicted_pk_26 , predicted_pocket_26 
show spheres, predicted_pocket_26 
set sphere_scale , 0.3 , predicted_pocket_26 
set sphere_transparency , 0.1 , predicted_pocket_26 
# predicted pocket number 27
select predicted_pocket_27, ( chain F and resi 507+504+508+145+152+569+322+144+464+570+503+141+459+154+143+324+326+502+153+506+461+501+146+460+505 )  or  ( chain E and resi 153+326+146+325+143+152+502+145+503+505+324+144+322+504+507+141+154+506+508+323+501 ) 
set_color predicted_pk_27, [ 0, 255, 255 ] 
color predicted_pk_27 , predicted_pocket_27 
show spheres, predicted_pocket_27 
set sphere_scale , 0.3 , predicted_pocket_27 
set sphere_transparency , 0.1 , predicted_pocket_27 
# predicted pocket number 28
select predicted_pocket_28, ( chain A and resi 557+555+554+551+552+553+556+550 )  or  ( chain B and resi 65+64+68 ) 
set_color predicted_pk_28, [ 0, 255, 255 ] 
color predicted_pk_28 , predicted_pocket_28 
show spheres, predicted_pocket_28 
set sphere_scale , 0.3 , predicted_pocket_28 
set sphere_transparency , 0.1 , predicted_pocket_28 
# predicted pocket number 29
select predicted_pocket_29, chain E and resi 499+147+496+512+495+497+517+145+510+360+514+148+146+377
set_color predicted_pk_29, [ 0, 255, 255 ] 
color predicted_pk_29 , predicted_pocket_29 
show spheres, predicted_pocket_29 
set sphere_scale , 0.3 , predicted_pocket_29 
set sphere_transparency , 0.1 , predicted_pocket_29 
# predicted pocket number 30
select predicted_pocket_30, chain F and resi 259+437+533+439+260+257+246+243+245+247+438+244
set_color predicted_pk_30, [ 0, 255, 255 ] 
color predicted_pk_30 , predicted_pocket_30 
show spheres, predicted_pocket_30 
set sphere_scale , 0.3 , predicted_pocket_30 
set sphere_transparency , 0.1 , predicted_pocket_30 
# predicted pocket number 31
select predicted_pocket_31, ( chain B and resi 67+66+71+63 )  or  ( chain A and resi 393+478+480+391+548+395+390 ) 
set_color predicted_pk_31, [ 0, 255, 255 ] 
color predicted_pk_31 , predicted_pocket_31 
show spheres, predicted_pocket_31 
set sphere_scale , 0.3 , predicted_pocket_31 
set sphere_transparency , 0.1 , predicted_pocket_31 
# predicted pocket number 32
select predicted_pocket_32, chain F and resi 131+132+126+411+402+472+469+128+403+470+427+129
set_color predicted_pk_32, [ 0, 255, 255 ] 
color predicted_pk_32 , predicted_pocket_32 
show spheres, predicted_pocket_32 
set sphere_scale , 0.3 , predicted_pocket_32 
set sphere_transparency , 0.1 , predicted_pocket_32 
# predicted pocket number 33
select predicted_pocket_33, ( chain C and resi 101+630+639+633+104+634+637+201+198 )  or  ( chain B and resi 393 ) 
set_color predicted_pk_33, [ 0, 255, 255 ] 
color predicted_pk_33 , predicted_pocket_33 
show spheres, predicted_pocket_33 
set sphere_scale , 0.3 , predicted_pocket_33 
set sphere_transparency , 0.1 , predicted_pocket_33 
# predicted pocket number 34
select predicted_pocket_34, ( chain B and resi 463+464+155+572+467+135+461+153+156+154 )  or  ( chain A and resi 320+323 ) 
set_color predicted_pk_34, [ 0, 255, 255 ] 
color predicted_pk_34 , predicted_pocket_34 
show spheres, predicted_pocket_34 
set sphere_scale , 0.3 , predicted_pocket_34 
set sphere_transparency , 0.1 , predicted_pocket_34 
# predicted pocket number 35
select predicted_pocket_35, chain F and resi 389+544+549+558+485+538+550+388+555+387+547+483+539+551+535
set_color predicted_pk_35, [ 0, 255, 255 ] 
color predicted_pk_35 , predicted_pocket_35 
show spheres, predicted_pocket_35 
set sphere_scale , 0.3 , predicted_pocket_35 
set sphere_transparency , 0.1 , predicted_pocket_35 
# predicted pocket number 36
select predicted_pocket_36, ( chain B and resi 144+146+501+145+154 )  or  ( chain A and resi 326+502+503+505+504 ) 
set_color predicted_pk_36, [ 0, 255, 255 ] 
color predicted_pk_36 , predicted_pocket_36 
show spheres, predicted_pocket_36 
set sphere_scale , 0.3 , predicted_pocket_36 
set sphere_transparency , 0.1 , predicted_pocket_36 
# predicted pocket number 37
select predicted_pocket_37, ( chain B and resi 464+459+468 )  or  ( chain A and resi 320+325+323+75+76+72+319 ) 
set_color predicted_pk_37, [ 0, 255, 255 ] 
color predicted_pk_37 , predicted_pocket_37 
show spheres, predicted_pocket_37 
set sphere_scale , 0.3 , predicted_pocket_37 
set sphere_transparency , 0.1 , predicted_pocket_37 
# predicted pocket number 38
select predicted_pocket_38, chain E and resi 300+352+369+304+367+301+366+303+353+302
set_color predicted_pk_38, [ 0, 255, 255 ] 
color predicted_pk_38 , predicted_pocket_38 
show spheres, predicted_pocket_38 
set sphere_scale , 0.3 , predicted_pocket_38 
set sphere_transparency , 0.1 , predicted_pocket_38 
# predicted pocket number 39
select predicted_pocket_39, chain B and resi 272+119+277+125+278+273+282+275
set_color predicted_pk_39, [ 0, 255, 255 ] 
color predicted_pk_39 , predicted_pocket_39 
show spheres, predicted_pocket_39 
set sphere_scale , 0.3 , predicted_pocket_39 
set sphere_transparency , 0.1 , predicted_pocket_39 
# predicted pocket number 40
select predicted_pocket_40, chain B and resi 639+105+630+104+101+633+198+201+637+634
set_color predicted_pk_40, [ 0, 255, 255 ] 
color predicted_pk_40 , predicted_pocket_40 
show spheres, predicted_pocket_40 
set sphere_scale , 0.3 , predicted_pocket_40 
set sphere_transparency , 0.1 , predicted_pocket_40 
# predicted pocket number 41
select predicted_pocket_41, ( chain D and resi 154+461+153+135+156+155+572+463+464+467 )  or  ( chain C and resi 323 ) 
set_color predicted_pk_41, [ 0, 255, 255 ] 
color predicted_pk_41 , predicted_pocket_41 
show spheres, predicted_pocket_41 
set sphere_scale , 0.3 , predicted_pocket_41 
set sphere_transparency , 0.1 , predicted_pocket_41 
# predicted pocket number 42
select predicted_pocket_42, chain D and resi 201+198+639+101+630+104+633+634+637
set_color predicted_pk_42, [ 0, 255, 255 ] 
color predicted_pk_42 , predicted_pocket_42 
show spheres, predicted_pocket_42 
set sphere_scale , 0.3 , predicted_pocket_42 
set sphere_transparency , 0.1 , predicted_pocket_42 
# predicted pocket number 43
select predicted_pocket_43, chain A and resi 403+404+395+478+472+409+396+399+400+412+479
set_color predicted_pk_43, [ 0, 255, 255 ] 
color predicted_pk_43 , predicted_pocket_43 
show spheres, predicted_pocket_43 
set sphere_scale , 0.3 , predicted_pocket_43 
set sphere_transparency , 0.1 , predicted_pocket_43 
# predicted pocket number 44
select predicted_pocket_44, chain C and resi 256+214+208+250+213+207+253+211+212
set_color predicted_pk_44, [ 0, 255, 255 ] 
color predicted_pk_44 , predicted_pocket_44 
show spheres, predicted_pocket_44 
set sphere_scale , 0.3 , predicted_pocket_44 
set sphere_transparency , 0.1 , predicted_pocket_44 
# predicted pocket number 45
select predicted_pocket_45, ( chain C and resi 320+323 )  or  ( chain D and resi 135+472+471+459+464+467+468 ) 
set_color predicted_pk_45, [ 0, 255, 255 ] 
color predicted_pk_45 , predicted_pocket_45 
show spheres, predicted_pocket_45 
set sphere_scale , 0.3 , predicted_pocket_45 
set sphere_transparency , 0.1 , predicted_pocket_45 
# predicted pocket number 46
select predicted_pocket_46, ( chain E and resi 555+569+556+552+566+557+554+553+460+550+551 )  or  ( chain F and resi 65+68+64 ) 
set_color predicted_pk_46, [ 0, 255, 255 ] 
color predicted_pk_46 , predicted_pocket_46 
show spheres, predicted_pocket_46 
set sphere_scale , 0.3 , predicted_pocket_46 
set sphere_transparency , 0.1 , predicted_pocket_46 
# predicted pocket number 47
select predicted_pocket_47, chain A and resi 207+253+214+213+210+255+212+211+250+208
set_color predicted_pk_47, [ 0, 255, 255 ] 
color predicted_pk_47 , predicted_pocket_47 
show spheres, predicted_pocket_47 
set sphere_scale , 0.3 , predicted_pocket_47 
set sphere_transparency , 0.1 , predicted_pocket_47 
# predicted pocket number 48
select predicted_pocket_48, ( chain D and resi 75+71+67+72 )  or  ( chain C and resi 458+472+478+480+477+468 ) 
set_color predicted_pk_48, [ 0, 255, 255 ] 
color predicted_pk_48 , predicted_pocket_48 
show spheres, predicted_pocket_48 
set sphere_scale , 0.3 , predicted_pocket_48 
set sphere_transparency , 0.1 , predicted_pocket_48 
# predicted pocket number 49
select predicted_pocket_49, chain C and resi 180+493+491+615+492+380+445+181+616+184
set_color predicted_pk_49, [ 0, 255, 255 ] 
color predicted_pk_49 , predicted_pocket_49 
show spheres, predicted_pocket_49 
set sphere_scale , 0.3 , predicted_pocket_49 
set sphere_transparency , 0.1 , predicted_pocket_49 
# predicted pocket number 50
select predicted_pocket_50, chain D and resi 147+515+517+145+146+512+148+514+149+150
set_color predicted_pk_50, [ 0, 255, 255 ] 
color predicted_pk_50 , predicted_pocket_50 
show spheres, predicted_pocket_50 
set sphere_scale , 0.3 , predicted_pocket_50 
set sphere_transparency , 0.1 , predicted_pocket_50 
# predicted pocket number 51
select predicted_pocket_51, ( chain C and resi 287+106+103+104+288+289 )  or  ( chain A and resi 65+62+66+61+70 ) 
set_color predicted_pk_51, [ 0, 255, 255 ] 
color predicted_pk_51 , predicted_pocket_51 
show spheres, predicted_pocket_51 
set sphere_scale , 0.3 , predicted_pocket_51 
set sphere_transparency , 0.1 , predicted_pocket_51 
# predicted pocket number 52
select predicted_pocket_52, ( chain A and resi 502+507+506+508+504+501 )  or  ( chain B and resi 501+507+506+504+502+508 ) 
set_color predicted_pk_52, [ 0, 255, 255 ] 
color predicted_pk_52 , predicted_pocket_52 
show spheres, predicted_pocket_52 
set sphere_scale , 0.3 , predicted_pocket_52 
set sphere_transparency , 0.1 , predicted_pocket_52 
# predicted pocket number 53
select predicted_pocket_53, chain E and resi 469+411+403+427+129+132+402+131+470+473+126+128
set_color predicted_pk_53, [ 0, 255, 255 ] 
color predicted_pk_53 , predicted_pocket_53 
show spheres, predicted_pocket_53 
set sphere_scale , 0.3 , predicted_pocket_53 
set sphere_transparency , 0.1 , predicted_pocket_53 
# predicted pocket number 54
select predicted_pocket_54, ( chain B and resi 322+506+504 )  or  ( chain A and resi 510+141+144+143+154+511+142+508+501 ) 
set_color predicted_pk_54, [ 0, 255, 255 ] 
color predicted_pk_54 , predicted_pocket_54 
show spheres, predicted_pocket_54 
set sphere_scale , 0.3 , predicted_pocket_54 
set sphere_transparency , 0.1 , predicted_pocket_54 
# predicted pocket number 55
select predicted_pocket_55, chain D and resi 492+615+444+184+443+380+616+181+523+447+493+180+445+491
set_color predicted_pk_55, [ 0, 255, 255 ] 
color predicted_pk_55 , predicted_pocket_55 
show spheres, predicted_pocket_55 
set sphere_scale , 0.3 , predicted_pocket_55 
set sphere_transparency , 0.1 , predicted_pocket_55 
# predicted pocket number 56
select predicted_pocket_56, ( chain D and resi 396+231+393+394+395 )  or  ( chain A and resi 204+216+221+217 ) 
set_color predicted_pk_56, [ 0, 255, 255 ] 
color predicted_pk_56 , predicted_pocket_56 
show spheres, predicted_pocket_56 
set sphere_scale , 0.3 , predicted_pocket_56 
set sphere_transparency , 0.1 , predicted_pocket_56 
# predicted pocket number 57
select predicted_pocket_57, chain E and resi 555+558+549+547+538+539+550+535+551
set_color predicted_pk_57, [ 0, 255, 255 ] 
color predicted_pk_57 , predicted_pocket_57 
show spheres, predicted_pocket_57 
set sphere_scale , 0.3 , predicted_pocket_57 
set sphere_transparency , 0.1 , predicted_pocket_57 
# predicted pocket number 58
select predicted_pocket_58, chain A and resi 535+539+555+551+538+549+547+558+550+389
set_color predicted_pk_58, [ 0, 255, 255 ] 
color predicted_pk_58 , predicted_pocket_58 
show spheres, predicted_pocket_58 
set sphere_scale , 0.3 , predicted_pocket_58 
set sphere_transparency , 0.1 , predicted_pocket_58 
# predicted pocket number 59
select predicted_pocket_59, chain C and resi 636+101+102+86+639+104+108+105+637
set_color predicted_pk_59, [ 0, 255, 255 ] 
color predicted_pk_59 , predicted_pocket_59 
show spheres, predicted_pocket_59 
set sphere_scale , 0.3 , predicted_pocket_59 
set sphere_transparency , 0.1 , predicted_pocket_59 
# predicted pocket number 60
select predicted_pocket_60, chain A and resi 447+444+491+492+445+616+443+493+615+380
set_color predicted_pk_60, [ 0, 255, 255 ] 
color predicted_pk_60 , predicted_pocket_60 
show spheres, predicted_pocket_60 
set sphere_scale , 0.3 , predicted_pocket_60 
set sphere_transparency , 0.1 , predicted_pocket_60 
# predicted pocket number 61
select predicted_pocket_61, ( chain F and resi 153+151+569+152 )  or  ( chain E and resi 325+326+327 ) 
set_color predicted_pk_61, [ 0, 255, 255 ] 
color predicted_pk_61 , predicted_pocket_61 
show spheres, predicted_pocket_61 
set sphere_scale , 0.3 , predicted_pocket_61 
set sphere_transparency , 0.1 , predicted_pocket_61 
# predicted pocket number 62
select predicted_pocket_62, ( chain B and resi 420+414+416+413+417 )  or  ( chain C and resi 421+420+419+424+272+122 ) 
set_color predicted_pk_62, [ 0, 255, 255 ] 
color predicted_pk_62 , predicted_pocket_62 
show spheres, predicted_pocket_62 
set sphere_scale , 0.3 , predicted_pocket_62 
set sphere_transparency , 0.1 , predicted_pocket_62 
select TP, true_pocket* and predicted_pocket*
color green, TP
