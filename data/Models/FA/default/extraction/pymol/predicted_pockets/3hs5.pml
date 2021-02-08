load ../../../PDB/pdb3hs5.ent
# ligand_0
select ligand_0, chain A and resi 1 
set_color lg_0, [ 255, 0, 0 ] 
color lg_0 , ligand_0 
show spheres, ligand_0 
set sphere_scale , 1 , ligand_0 
set sphere_transparency , 0.1 , ligand_0 
# ligand_1
select ligand_1, chain B and resi 1 
set_color lg_1, [ 255, 0, 0 ] 
color lg_1 , ligand_1 
show spheres, ligand_1 
set sphere_scale , 1 , ligand_1 
set sphere_transparency , 0.1 , ligand_1 
# true pocket number 0
select true_pocket_0, chain A and resi 530+518+116+531+534+523+385+205+387+348+353+355+381+526+527+349
set_color true_pk_0, [ 0, 0, 255 ] 
color true_pk_0 , true_pocket_0 
show spheres, true_pocket_0 
set sphere_scale , 0.3 , true_pocket_0 
set sphere_transparency , 0.1 , true_pocket_0 
# true pocket number 1
select true_pocket_1, chain B and resi 534+523+377+526+205+385+527+530+228+349+353+387+522+352+533+355+531+348+381+209+344
set_color true_pk_1, [ 0, 0, 255 ] 
color true_pk_1 , true_pocket_1 
show spheres, true_pocket_1 
set sphere_scale , 0.3 , true_pocket_1 
set sphere_transparency , 0.1 , true_pocket_1 
# predicted pocket number 0
select predicted_pocket_0, ( chain A and resi 373+121+45+61+80+369+44+541+33+159+469+51+153+86+151+123+458+85+134+370+48+532+473+152+76+64+79+125+461+122+133+457+60+137+155+43+41+84+47+62+39+471+49+34+157+158+459+147+130+154+542+124+372+367+465+42+472+37+140+52+135+46+543+126+35+474+366+136+156+36+129+468+163+83+371+132+40 )  or  ( chain B and resi 126+118+241+125+371+323+127+327+238+370+117+245+367+61+373+546+543+549+528+535+121+369+542+531+551+330+326+331+120+372+124+548+366+532+242+324+322+122 ) 
set_color predicted_pk_0, [ 0, 255, 255 ] 
color predicted_pk_0 , predicted_pocket_0 
show spheres, predicted_pocket_0 
set sphere_scale , 0.3 , predicted_pocket_0 
set sphere_transparency , 0.1 , predicted_pocket_0 
# predicted pocket number 1
select predicted_pocket_1, ( chain A and resi 378+373+150+235+149+469+216+529+127+151+375+113+143+353+518+532+139+522+387+384+381+535+125+225+352+205+531+237+241+470+526+116+534+228+527+385+226+523+377+224+145+146+236+533+117+227+128+345+538+344+374+348+144+231+359+124+120+537+140+536+126+229+238+530+206+333+376+129+349+142+355+209 )  or  ( chain B and resi 149+126+469+241+192+140+236+516+125+530+353+387+129+376+518+113+209+513+225+238+142+517+352+345+224+536+237+373+144+374+231+216+143+381+385+151+226+355+533+235+227+145+377+205+128+139+531+116+537+359+534+146+526+228+527+150+90+538+522+384+348+120+206+523+229+124+378+532+349+375+333+470+239+529+344 ) 
set_color predicted_pk_1, [ 0, 255, 255 ] 
color predicted_pk_1 , predicted_pocket_1 
show spheres, predicted_pocket_1 
set sphere_scale , 0.3 , predicted_pocket_1 
set sphere_transparency , 0.1 , predicted_pocket_1 
# predicted pocket number 2
select predicted_pocket_2, ( chain B and resi 163+135+123+157+36+37+469+86+152+465+155+43+151+42+46+153+137+132+468+62+64+156+472+76+471+39+47+125+80+130+520+133+154+129+79+34+136+83+45+84+158+159+41+40+44+461+473+85+122+474 )  or  ( chain A and resi 322+327+543+324+326 ) 
set_color predicted_pk_2, [ 0, 255, 255 ] 
color predicted_pk_2 , predicted_pocket_2 
show spheres, predicted_pocket_2 
set sphere_scale , 0.3 , predicted_pocket_2 
set sphere_transparency , 0.1 , predicted_pocket_2 
# predicted pocket number 3
select predicted_pocket_3, chain B and resi 202+203+390+504+382+385+386+458+391+291+289+451+388+274+222+211+212+148+206+237+236+199+383+379+213+290+214+387+454+218+455+447+210+215+207
set_color predicted_pk_3, [ 0, 255, 255 ] 
color predicted_pk_3 , predicted_pocket_3 
show spheres, predicted_pocket_3 
set sphere_scale , 0.3 , predicted_pocket_3 
set sphere_transparency , 0.1 , predicted_pocket_3 
# predicted pocket number 4
select predicted_pocket_4, chain A and resi 447+387+386+202+385+196+199+203+212+408+207+382+391+444+214+392+295+404+390+294+210+206+407+395+200+388
set_color predicted_pk_4, [ 0, 255, 255 ] 
color predicted_pk_4 , predicted_pocket_4 
show spheres, predicted_pocket_4 
set sphere_scale , 0.3 , predicted_pocket_4 
set sphere_transparency , 0.1 , predicted_pocket_4 
# predicted pocket number 5
select predicted_pocket_5, chain B and resi 306+307+573+254+572+311+571+569+261+570+260+314+259+310+251
set_color predicted_pk_5, [ 0, 255, 255 ] 
color predicted_pk_5 , predicted_pocket_5 
show spheres, predicted_pocket_5 
set sphere_scale , 0.3 , predicted_pocket_5 
set sphere_transparency , 0.1 , predicted_pocket_5 
# predicted pocket number 6
select predicted_pocket_6, chain A and resi 310+261+571+573+259+251+311+306+314+572+254+307+570+569+260
set_color predicted_pk_6, [ 0, 255, 255 ] 
color predicted_pk_6 , predicted_pocket_6 
show spheres, predicted_pocket_6 
set sphere_scale , 0.3 , predicted_pocket_6 
set sphere_transparency , 0.1 , predicted_pocket_6 
# predicted pocket number 7
select predicted_pocket_7, ( chain B and resi 59+48+46+57+56+58+60 )  or  ( chain A and resi 552+548+547+553 ) 
set_color predicted_pk_7, [ 0, 255, 255 ] 
color predicted_pk_7 , predicted_pocket_7 
show spheres, predicted_pocket_7 
set sphere_scale , 0.3 , predicted_pocket_7 
set sphere_transparency , 0.1 , predicted_pocket_7 
# predicted pocket number 8
select predicted_pocket_8, chain A and resi 274+211+216+237+212+236+207+213+210+290+224+221+291+289+222+214+215+146
set_color predicted_pk_8, [ 0, 255, 255 ] 
color predicted_pk_8 , predicted_pocket_8 
show spheres, predicted_pocket_8 
set sphere_scale , 0.3 , predicted_pocket_8 
set sphere_transparency , 0.1 , predicted_pocket_8 
# predicted pocket number 9
select predicted_pocket_9, chain B and resi 94+354+511+513+481+90+473+191+514+192+95+515+91+87+512+467+516+480+520+353+510+356+475+85
set_color predicted_pk_9, [ 0, 255, 255 ] 
color predicted_pk_9 , predicted_pocket_9 
show spheres, predicted_pocket_9 
set sphere_scale , 0.3 , predicted_pocket_9 
set sphere_transparency , 0.1 , predicted_pocket_9 
# predicted pocket number 10
select predicted_pocket_10, chain A and resi 465+39+499+166+38+163+462+500+461+37+165
set_color predicted_pk_10, [ 0, 255, 255 ] 
color predicted_pk_10 , predicted_pocket_10 
show spheres, predicted_pocket_10 
set sphere_scale , 0.3 , predicted_pocket_10 
set sphere_transparency , 0.1 , predicted_pocket_10 
# predicted pocket number 11
select predicted_pocket_11, ( chain A and resi 48+58+73+66+60+46+56+57+64+59+65 )  or  ( chain B and resi 553+548+552+547 ) 
set_color predicted_pk_11, [ 0, 255, 255 ] 
color predicted_pk_11 , predicted_pocket_11 
show spheres, predicted_pocket_11 
set sphere_scale , 0.3 , predicted_pocket_11 
set sphere_transparency , 0.1 , predicted_pocket_11 
# predicted pocket number 12
select predicted_pocket_12, chain B and resi 163+462+38+500+165+461+37+39+465+499+166
set_color predicted_pk_12, [ 0, 255, 255 ] 
color predicted_pk_12 , predicted_pocket_12 
show spheres, predicted_pocket_12 
set sphere_scale , 0.3 , predicted_pocket_12 
set sphere_transparency , 0.1 , predicted_pocket_12 
# predicted pocket number 13
select predicted_pocket_13, ( chain B and resi 48+135+136+46+137+47+130 )  or  ( chain A and resi 331+548+323+327+551+549 ) 
set_color predicted_pk_13, [ 0, 255, 255 ] 
color predicted_pk_13 , predicted_pocket_13 
show spheres, predicted_pocket_13 
set sphere_scale , 0.3 , predicted_pocket_13 
set sphere_transparency , 0.1 , predicted_pocket_13 
# predicted pocket number 14
select predicted_pocket_14, ( chain B and resi 33+49+52+34+158+51+35 )  or  ( chain A and resi 322+323+324+327 ) 
set_color predicted_pk_14, [ 0, 255, 255 ] 
color predicted_pk_14 , predicted_pocket_14 
show spheres, predicted_pocket_14 
set sphere_scale , 0.3 , predicted_pocket_14 
set sphere_transparency , 0.1 , predicted_pocket_14 
# predicted pocket number 15
select predicted_pocket_15, chain A and resi 226+223+236+377+225+221+231+227+229+209+148+208
set_color predicted_pk_15, [ 0, 255, 255 ] 
color predicted_pk_15 , predicted_pocket_15 
show spheres, predicted_pocket_15 
set sphere_scale , 0.3 , predicted_pocket_15 
set sphere_transparency , 0.1 , predicted_pocket_15 
# predicted pocket number 16
select predicted_pocket_16, chain A and resi 496+488+492+485+498+479+477+476+497+489+478
set_color predicted_pk_16, [ 0, 255, 255 ] 
color predicted_pk_16 , predicted_pocket_16 
show spheres, predicted_pocket_16 
set sphere_scale , 0.3 , predicted_pocket_16 
set sphere_transparency , 0.1 , predicted_pocket_16 
# predicted pocket number 17
select predicted_pocket_17, chain A and resi 417+573+258+398+415+419+421+262+420+416+418+260
set_color predicted_pk_17, [ 0, 255, 255 ] 
color predicted_pk_17 , predicted_pocket_17 
show spheres, predicted_pocket_17 
set sphere_scale , 0.3 , predicted_pocket_17 
set sphere_transparency , 0.1 , predicted_pocket_17 
# predicted pocket number 18
select predicted_pocket_18, chain A and resi 288+286+306+287+264+244+305+233+302+252+253+204+232
set_color predicted_pk_18, [ 0, 255, 255 ] 
color predicted_pk_18 , predicted_pocket_18 
show spheres, predicted_pocket_18 
set sphere_scale , 0.3 , predicted_pocket_18 
set sphere_transparency , 0.1 , predicted_pocket_18 
# predicted pocket number 19
select predicted_pocket_19, chain A and resi 218+212+454+382+451+386+379+455+458+148+383
set_color predicted_pk_19, [ 0, 255, 255 ] 
color predicted_pk_19 , predicted_pocket_19 
show spheres, predicted_pocket_19 
set sphere_scale , 0.3 , predicted_pocket_19 
set sphere_transparency , 0.1 , predicted_pocket_19 
# predicted pocket number 20
select predicted_pocket_20, chain B and resi 306+264+233+253+288+252+232+286+204+287+244+263+302
set_color predicted_pk_20, [ 0, 255, 255 ] 
color predicted_pk_20 , predicted_pocket_20 
show spheres, predicted_pocket_20 
set sphere_scale , 0.3 , predicted_pocket_20 
set sphere_transparency , 0.1 , predicted_pocket_20 
# predicted pocket number 21
select predicted_pocket_21, chain A and resi 518+119+89+192+84+120+472+97+356+515+581+93+471+523+516+115+351+517+350+514+524+354+352+191+122+86+513+470+90+94+83+123+355+353+85
set_color predicted_pk_21, [ 0, 255, 255 ] 
color predicted_pk_21 , predicted_pocket_21 
show spheres, predicted_pocket_21 
set sphere_scale , 0.3 , predicted_pocket_21 
set sphere_transparency , 0.1 , predicted_pocket_21 
# predicted pocket number 22
select predicted_pocket_22, chain B and resi 415+307+573+258+262+416+572+417+418+260+419+421+420
set_color predicted_pk_22, [ 0, 255, 255 ] 
color predicted_pk_22 , predicted_pocket_22 
show spheres, predicted_pocket_22 
set sphere_scale , 0.3 , predicted_pocket_22 
set sphere_transparency , 0.1 , predicted_pocket_22 
# predicted pocket number 23
select predicted_pocket_23, chain B and resi 120+123+89+83+85+84+472+116+115+355+119+86+93+471+470+524+122
set_color predicted_pk_23, [ 0, 255, 255 ] 
color predicted_pk_23 , predicted_pocket_23 
show spheres, predicted_pocket_23 
set sphere_scale , 0.3 , predicted_pocket_23 
set sphere_transparency , 0.1 , predicted_pocket_23 
# predicted pocket number 24
select predicted_pocket_24, chain B and resi 163+168+494+171+162+172+167+500+170+495+166
set_color predicted_pk_24, [ 0, 255, 255 ] 
color predicted_pk_24 , predicted_pocket_24 
show spheres, predicted_pocket_24 
set sphere_scale , 0.3 , predicted_pocket_24 
set sphere_transparency , 0.1 , predicted_pocket_24 
# predicted pocket number 25
select predicted_pocket_25, chain B and resi 408+395+388+203+404+447+407+295+444+200+296+294+391
set_color predicted_pk_25, [ 0, 255, 255 ] 
color predicted_pk_25 , predicted_pocket_25 
show spheres, predicted_pocket_25 
set sphere_scale , 0.3 , predicted_pocket_25 
set sphere_transparency , 0.1 , predicted_pocket_25 
# predicted pocket number 26
select predicted_pocket_26, chain A and resi 494+162+172+170+171+166+500+163+495+168+167
set_color predicted_pk_26, [ 0, 255, 255 ] 
color predicted_pk_26 , predicted_pocket_26 
show spheres, predicted_pocket_26 
set sphere_scale , 0.3 , predicted_pocket_26 
set sphere_transparency , 0.1 , predicted_pocket_26 
# predicted pocket number 27
select predicted_pocket_27, ( chain A and resi 50+48+56 )  or  ( chain B and resi 553+558+554+319+551+312+555+552+315+320+335+316 ) 
set_color predicted_pk_27, [ 0, 255, 255 ] 
color predicted_pk_27 , predicted_pocket_27 
show spheres, predicted_pocket_27 
set sphere_scale , 0.3 , predicted_pocket_27 
set sphere_transparency , 0.1 , predicted_pocket_27 
# predicted pocket number 28
select predicted_pocket_28, chain B and resi 240+270+271+237+272+222+243+239+290
set_color predicted_pk_28, [ 0, 255, 255 ] 
color predicted_pk_28 , predicted_pocket_28 
show spheres, predicted_pocket_28 
set sphere_scale , 0.3 , predicted_pocket_28 
set sphere_transparency , 0.1 , predicted_pocket_28 
# predicted pocket number 29
select predicted_pocket_29, chain B and resi 477+489+488+479+492+478+485
set_color predicted_pk_29, [ 0, 255, 255 ] 
color predicted_pk_29 , predicted_pocket_29 
show spheres, predicted_pocket_29 
set sphere_scale , 0.3 , predicted_pocket_29 
set sphere_transparency , 0.1 , predicted_pocket_29 
# predicted pocket number 30
select predicted_pocket_30, chain A and resi 561+563+562+566+558+339+343+567+308+570+311
set_color predicted_pk_30, [ 0, 255, 255 ] 
color predicted_pk_30 , predicted_pocket_30 
show spheres, predicted_pocket_30 
set sphere_scale , 0.3 , predicted_pocket_30 
set sphere_transparency , 0.1 , predicted_pocket_30 
# predicted pocket number 31
select predicted_pocket_31, chain B and resi 558+308+563+311+567+566+570+561+339+562+343
set_color predicted_pk_31, [ 0, 255, 255 ] 
color predicted_pk_31 , predicted_pocket_31 
show spheres, predicted_pocket_31 
set sphere_scale , 0.3 , predicted_pocket_31 
set sphere_transparency , 0.1 , predicted_pocket_31 
# predicted pocket number 32
select predicted_pocket_32, chain B and resi 360+362+361+545+556+364+342+363+560
set_color predicted_pk_32, [ 0, 255, 255 ] 
color predicted_pk_32 , predicted_pocket_32 
show spheres, predicted_pocket_32 
set sphere_scale , 0.3 , predicted_pocket_32 
set sphere_transparency , 0.1 , predicted_pocket_32 
# predicted pocket number 33
select predicted_pocket_33, chain A and resi 362+364+365+368+111+114+110+107
set_color predicted_pk_33, [ 0, 255, 255 ] 
color predicted_pk_33 , predicted_pocket_33 
show spheres, predicted_pocket_33 
set sphere_scale , 0.3 , predicted_pocket_33 
set sphere_transparency , 0.1 , predicted_pocket_33 
# predicted pocket number 34
select predicted_pocket_34, chain A and resi 511+513+512+510+90+87+475+520+514
set_color predicted_pk_34, [ 0, 255, 255 ] 
color predicted_pk_34 , predicted_pocket_34 
show spheres, predicted_pocket_34 
set sphere_scale , 0.3 , predicted_pocket_34 
set sphere_transparency , 0.1 , predicted_pocket_34 
# predicted pocket number 35
select predicted_pocket_35, chain B and resi 301+201+208+233+305+230+232+204+205+340+343
set_color predicted_pk_35, [ 0, 255, 255 ] 
color predicted_pk_35 , predicted_pocket_35 
show spheres, predicted_pocket_35 
set sphere_scale , 0.3 , predicted_pocket_35 
set sphere_transparency , 0.1 , predicted_pocket_35 
# predicted pocket number 36
select predicted_pocket_36, chain B and resi 187+394+393+401+396+429+430+392
set_color predicted_pk_36, [ 0, 255, 255 ] 
color predicted_pk_36 , predicted_pocket_36 
show spheres, predicted_pocket_36 
set sphere_scale , 0.3 , predicted_pocket_36 
set sphere_transparency , 0.1 , predicted_pocket_36 
# predicted pocket number 37
select predicted_pocket_37, chain A and resi 301+201+305+205+208+233+340+204+230+232
set_color predicted_pk_37, [ 0, 255, 255 ] 
color predicted_pk_37 , predicted_pocket_37 
show spheres, predicted_pocket_37 
set sphere_scale , 0.3 , predicted_pocket_37 
set sphere_transparency , 0.1 , predicted_pocket_37 
# predicted pocket number 38
select predicted_pocket_38, chain A and resi 162+456+459+460+504+502+171+163+452+505+503+461+455+383
set_color predicted_pk_38, [ 0, 255, 255 ] 
color predicted_pk_38 , predicted_pocket_38 
show spheres, predicted_pocket_38 
set sphere_scale , 0.3 , predicted_pocket_38 
set sphere_transparency , 0.1 , predicted_pocket_38 
# predicted pocket number 39
select predicted_pocket_39, chain A and resi 90+91+87+94+95+515+514
set_color predicted_pk_39, [ 0, 255, 255 ] 
color predicted_pk_39 , predicted_pocket_39 
show spheres, predicted_pocket_39 
set sphere_scale , 0.3 , predicted_pocket_39 
set sphere_transparency , 0.1 , predicted_pocket_39 
# predicted pocket number 40
select predicted_pocket_40, chain B and resi 445+449+446+178+179+175
set_color predicted_pk_40, [ 0, 255, 255 ] 
color predicted_pk_40 , predicted_pocket_40 
show spheres, predicted_pocket_40 
set sphere_scale , 0.3 , predicted_pocket_40 
set sphere_transparency , 0.1 , predicted_pocket_40 
# predicted pocket number 41
select predicted_pocket_41, chain B and resi 452+502+163+171+162+503+383+455+504+459+461+456+505+460
set_color predicted_pk_41, [ 0, 255, 255 ] 
color predicted_pk_41 , predicted_pocket_41 
show spheres, predicted_pocket_41 
set sphere_scale , 0.3 , predicted_pocket_41 
set sphere_transparency , 0.1 , predicted_pocket_41 
# predicted pocket number 42
select predicted_pocket_42, chain B and resi 224+237+236+146+216+222+221+213+220
set_color predicted_pk_42, [ 0, 255, 255 ] 
color predicted_pk_42 , predicted_pocket_42 
show spheres, predicted_pocket_42 
set sphere_scale , 0.3 , predicted_pocket_42 
set sphere_transparency , 0.1 , predicted_pocket_42 
# predicted pocket number 43
select predicted_pocket_43, ( chain B and resi 125+122+43+124+44+61+62+60 )  or  ( chain A and resi 546+543 ) 
set_color predicted_pk_43, [ 0, 255, 255 ] 
color predicted_pk_43 , predicted_pocket_43 
show spheres, predicted_pocket_43 
set sphere_scale , 0.3 , predicted_pocket_43 
set sphere_transparency , 0.1 , predicted_pocket_43 
# predicted pocket number 44
select predicted_pocket_44, ( chain B and resi 134+133+157+147+136+140 )  or  ( chain A and resi 241+330+242+326+238 ) 
set_color predicted_pk_44, [ 0, 255, 255 ] 
color predicted_pk_44 , predicted_pocket_44 
show spheres, predicted_pocket_44 
set sphere_scale , 0.3 , predicted_pocket_44 
set sphere_transparency , 0.1 , predicted_pocket_44 
# predicted pocket number 45
select predicted_pocket_45, chain B and resi 425+401+396+429+400+428+398+399
set_color predicted_pk_45, [ 0, 255, 255 ] 
color predicted_pk_45 , predicted_pocket_45 
show spheres, predicted_pocket_45 
set sphere_scale , 0.3 , predicted_pocket_45 
set sphere_transparency , 0.1 , predicted_pocket_45 
# predicted pocket number 46
select predicted_pocket_46, chain B and resi 89+84+92+115+93+112+100+88+116
set_color predicted_pk_46, [ 0, 255, 255 ] 
color predicted_pk_46 , predicted_pocket_46 
show spheres, predicted_pocket_46 
set sphere_scale , 0.3 , predicted_pocket_46 
set sphere_transparency , 0.1 , predicted_pocket_46 
# predicted pocket number 47
select predicted_pocket_47, chain A and resi 266+267+270+284+281
set_color predicted_pk_47, [ 0, 255, 255 ] 
color predicted_pk_47 , predicted_pocket_47 
show spheres, predicted_pocket_47 
set sphere_scale , 0.3 , predicted_pocket_47 
set sphere_transparency , 0.1 , predicted_pocket_47 
# predicted pocket number 48
select predicted_pocket_48, chain A and resi 370+369+366+121+371+117+118+124+122
set_color predicted_pk_48, [ 0, 255, 255 ] 
color predicted_pk_48 , predicted_pocket_48 
show spheres, predicted_pocket_48 
set sphere_scale , 0.3 , predicted_pocket_48 
set sphere_transparency , 0.1 , predicted_pocket_48 
# predicted pocket number 49
select predicted_pocket_49, chain A and resi 184+185+404+393+443+442+187+392+441
set_color predicted_pk_49, [ 0, 255, 255 ] 
color predicted_pk_49 , predicted_pocket_49 
show spheres, predicted_pocket_49 
set sphere_scale , 0.3 , predicted_pocket_49 
set sphere_transparency , 0.1 , predicted_pocket_49 
select TP, true_pocket* and predicted_pocket*
color green, TP
