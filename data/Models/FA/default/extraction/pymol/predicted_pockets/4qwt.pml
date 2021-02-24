load ../../../PDB/pdb4qwt.ent
# ligand_0
select ligand_0, chain C and resi 715 
set_color lg_0, [ 255, 0, 0 ] 
color lg_0 , ligand_0 
show spheres, ligand_0 
set sphere_scale , 1 , ligand_0 
set sphere_transparency , 0.1 , ligand_0 
# true pocket number 0
select true_pocket_0, chain C and resi 427+385+626+627+623+178+380+423+384+442+182+620+431+438+437+441+389+581
set_color true_pk_0, [ 0, 0, 255 ] 
color true_pk_0 , true_pocket_0 
show spheres, true_pocket_0 
set sphere_scale , 0.3 , true_pocket_0 
set sphere_transparency , 0.1 , true_pocket_0 
# predicted pocket number 0
select predicted_pocket_0, ( chain B and resi 415+105+662+170+629+169+665+642+85+635+103+669+411+685+418+692+417+215+637+173+634+47+16+661+171+659+400+213+658+638+166+212+180+176+174+83+690+188+414+191+421+181+631+636+632+177+688+168+633+419+13+641+48+172+640+643+17+625+15+183+184+639+104+689+167+684+187+214+14 )  or  ( chain A and resi 79+85+632+417+396+23+19+170+634+167+180+47+173+176+174+43+643+215+419+16+213+48+689+688+76+642+421+171+415+183+40+184+39+105+103+21+639+168+641+177+11+45+640+14+690+78+214+635+187+13+41+166+629+633+104+24+18+22+17+191+15+172+83+625+400+20+414+692+44+169+212+46+418+188+411 )  or  ( chain D and resi 195+198+197+194+199 )  or  ( chain C and resi 199+200+198+195+197+194 ) 
set_color predicted_pk_0, [ 0, 255, 255 ] 
color predicted_pk_0 , predicted_pocket_0 
show spheres, predicted_pocket_0 
set sphere_scale , 0.3 , predicted_pocket_0 
set sphere_transparency , 0.1 , predicted_pocket_0 
# predicted pocket number 1
select predicted_pocket_1, ( chain C and resi 16+184+176+180+414+15+685+642+421+632+658+629+173+400+633+684+415+422+641+630+48+661+662+669+643+13+417+172+103+665+636+639+171+690+85+167+104+169+83+638+637+177+168+174+419+692+14+689+670+635+688+105+640+46+631+411+659+666+625+170+418+634+17+181+47+166 )  or  ( chain D and resi 21+78+46+571+217+103+680+44+22+635+176+75+15+83+628+47+40+630+634+14+686+173+180+17+642+632+53+13+215+24+636+629+171+16+681+79+177+20+579+216+43+76+45+631+85+41+74+23+48+578+639+575+641+77+19+633+625 ) 
set_color predicted_pk_1, [ 0, 255, 255 ] 
color predicted_pk_1 , predicted_pocket_1 
show spheres, predicted_pocket_1 
set sphere_scale , 0.3 , predicted_pocket_1 
set sphere_transparency , 0.1 , predicted_pocket_1 
# predicted pocket number 2
select predicted_pocket_2, chain C and resi 626+185+627+432+577+442+178+148+390+431+616+584+155+376+440+153+623+384+182+453+437+619+154+617+389+624+427+589+436+587+381+216+424+693+428+189+620+582+438+441+622+430+581+385+590+435+186+578+612+380+152+423+450+426+621+393
set_color predicted_pk_2, [ 0, 255, 255 ] 
color predicted_pk_2 , predicted_pocket_2 
show spheres, predicted_pocket_2 
set sphere_scale , 0.3 , predicted_pocket_2 
set sphere_transparency , 0.1 , predicted_pocket_2 
# predicted pocket number 3
select predicted_pocket_3, ( chain C and resi 641+85+648+639+655+646+644+88+99+101+643+658+103+11+651+86+645+654+652+640 )  or  ( chain D and resi 52+51+44+53+50+89+54+88+9+41+49+46+42+8+48+90+7+55+39 ) 
set_color predicted_pk_3, [ 0, 255, 255 ] 
color predicted_pk_3 , predicted_pocket_3 
show spheres, predicted_pocket_3 
set sphere_scale , 0.3 , predicted_pocket_3 
set sphere_transparency , 0.1 , predicted_pocket_3 
# predicted pocket number 4
select predicted_pocket_4, ( chain B and resi 46+23+75+44+21+45+79+76+77+78+17+74+19+20+71+47 )  or  ( chain A and resi 684+665+662+638+685+637+669+636+666+661+639+658 ) 
set_color predicted_pk_4, [ 0, 255, 255 ] 
color predicted_pk_4 , predicted_pocket_4 
show spheres, predicted_pocket_4 
set sphere_scale , 0.3 , predicted_pocket_4 
set sphere_transparency , 0.1 , predicted_pocket_4 
# predicted pocket number 5
select predicted_pocket_5, ( chain C and resi 46+78+21+43+44+19+17+45+20+76+79 )  or  ( chain D and resi 637+665+658+662+661+685+659+669+638+684+636+639 ) 
set_color predicted_pk_5, [ 0, 255, 255 ] 
color predicted_pk_5 , predicted_pocket_5 
show spheres, predicted_pocket_5 
set sphere_scale , 0.3 , predicted_pocket_5 
set sphere_transparency , 0.1 , predicted_pocket_5 
# predicted pocket number 6
select predicted_pocket_6, chain D and resi 421+105+642+415+643+633+635+631+170+689+83+15+688+172+692+634+166+167+414+174+639+104+419+169+171+173+417+16+411+103+168+690+640+400+418
set_color predicted_pk_6, [ 0, 255, 255 ] 
color predicted_pk_6 , predicted_pocket_6 
show spheres, predicted_pocket_6 
set sphere_scale , 0.3 , predicted_pocket_6 
set sphere_transparency , 0.1 , predicted_pocket_6 
# predicted pocket number 7
select predicted_pocket_7, chain A and resi 623+590+587+390+620+431+436+589+582+428+438+432+617+624+216+435+442+178+384+588+612+389+376+424+616+440+385+578+581+426+441+584+182+381+380+626+693+430+423+621+427+577+437+627
set_color predicted_pk_7, [ 0, 255, 255 ] 
color predicted_pk_7 , predicted_pocket_7 
show spheres, predicted_pocket_7 
set sphere_scale , 0.3 , predicted_pocket_7 
set sphere_transparency , 0.1 , predicted_pocket_7 
# predicted pocket number 8
select predicted_pocket_8, chain B and resi 404+67+105+139+165+112+400+132+111+138+406+644+115+114+134+142+405+411+101+109+414+117+410+110+135+113+104+143+131+167+107+102+116
set_color predicted_pk_8, [ 0, 255, 255 ] 
color predicted_pk_8 , predicted_pocket_8 
show spheres, predicted_pocket_8 
set sphere_scale , 0.3 , predicted_pocket_8 
set sphere_transparency , 0.1 , predicted_pocket_8 
# predicted pocket number 9
select predicted_pocket_9, chain D and resi 118+120+404+122+110+116+124+111+113+63+134+128+406+132+114+135+123+119+115+125+64+414+62+104+405+109+101+117+410+102+411+644+129+138+112+131
set_color predicted_pk_9, [ 0, 255, 255 ] 
color predicted_pk_9 , predicted_pocket_9 
show spheres, predicted_pocket_9 
set sphere_scale , 0.3 , predicted_pocket_9 
set sphere_transparency , 0.1 , predicted_pocket_9 
# predicted pocket number 10
select predicted_pocket_10, ( chain D and resi 615+214+193+619+196+209+213+188+210+614+189+618+192 )  or  ( chain A and resi 195 ) 
set_color predicted_pk_10, [ 0, 255, 255 ] 
color predicted_pk_10 , predicted_pocket_10 
show spheres, predicted_pocket_10 
set sphere_scale , 0.3 , predicted_pocket_10 
set sphere_transparency , 0.1 , predicted_pocket_10 
# predicted pocket number 11
select predicted_pocket_11, chain C and resi 132+104+123+411+414+102+644+119+101+118+406+114+128+112+410+113+122+115+404+120+111+116+124+135+117+129+405
set_color predicted_pk_11, [ 0, 255, 255 ] 
color predicted_pk_11 , predicted_pocket_11 
show spheres, predicted_pocket_11 
set sphere_scale , 0.3 , predicted_pocket_11 
set sphere_transparency , 0.1 , predicted_pocket_11 
# predicted pocket number 12
select predicted_pocket_12, chain A and resi 143+111+132+139+138+110+134+135+101+167+114+405+131+400+165+115+116+109+105+166+104+117+142+107+404+112+406+113+411
set_color predicted_pk_12, [ 0, 255, 255 ] 
color predicted_pk_12 , predicted_pocket_12 
show spheres, predicted_pocket_12 
set sphere_scale , 0.3 , predicted_pocket_12 
set sphere_transparency , 0.1 , predicted_pocket_12 
# predicted pocket number 13
select predicted_pocket_13, ( chain A and resi 214+192+193+189+618+209+196+621+188+619+213+615+210+614 )  or  ( chain D and resi 195 ) 
set_color predicted_pk_13, [ 0, 255, 255 ] 
color predicted_pk_13 , predicted_pocket_13 
show spheres, predicted_pocket_13 
set sphere_scale , 0.3 , predicted_pocket_13 
set sphere_transparency , 0.1 , predicted_pocket_13 
# predicted pocket number 14
select predicted_pocket_14, chain B and resi 601+352+604+344+367+603+607+303+606+362+598+369+204+596+350+594+351+370+354+343+610+366+365+602+363+595
set_color predicted_pk_14, [ 0, 255, 255 ] 
color predicted_pk_14 , predicted_pocket_14 
show spheres, predicted_pocket_14 
set sphere_scale , 0.3 , predicted_pocket_14 
set sphere_transparency , 0.1 , predicted_pocket_14 
# predicted pocket number 15
select predicted_pocket_15, ( chain B and resi 97+651+652+99+655+646+648+88+86+116 )  or  ( chain A and resi 89+53+52+88+90+54+9+42+8+7 ) 
set_color predicted_pk_15, [ 0, 255, 255 ] 
color predicted_pk_15 , predicted_pocket_15 
show spheres, predicted_pocket_15 
set sphere_scale , 0.3 , predicted_pocket_15 
set sphere_transparency , 0.1 , predicted_pocket_15 
# predicted pocket number 16
select predicted_pocket_16, ( chain A and resi 11+9+51+88+10+50+49+52+44+46+86+48 )  or  ( chain B and resi 655+85+651+641+640+654+88+658+643+103+11+645+9+639+86 ) 
set_color predicted_pk_16, [ 0, 255, 255 ] 
color predicted_pk_16 , predicted_pocket_16 
show spheres, predicted_pocket_16 
set sphere_scale , 0.3 , predicted_pocket_16 
set sphere_transparency , 0.1 , predicted_pocket_16 
# predicted pocket number 17
select predicted_pocket_17, ( chain C and resi 50+46+9+49+48+44+52+51 )  or  ( chain D and resi 11+658+643+86+654+50+648+88+645+85+9+10+655+639+651+641+652+103+640 ) 
set_color predicted_pk_17, [ 0, 255, 255 ] 
color predicted_pk_17 , predicted_pocket_17 
show spheres, predicted_pocket_17 
set sphere_scale , 0.3 , predicted_pocket_17 
set sphere_transparency , 0.1 , predicted_pocket_17 
# predicted pocket number 18
select predicted_pocket_18, ( chain A and resi 11+640+651+101+645+88+654+648+644+643+658+646+103+639+86+99+641 )  or  ( chain B and resi 46+52+44+49+51+9+50 ) 
set_color predicted_pk_18, [ 0, 255, 255 ] 
color predicted_pk_18 , predicted_pocket_18 
show spheres, predicted_pocket_18 
set sphere_scale , 0.3 , predicted_pocket_18 
set sphere_transparency , 0.1 , predicted_pocket_18 
# predicted pocket number 19
select predicted_pocket_19, ( chain A and resi 186+190+197+619+189+194+193 )  or  ( chain C and resi 213+615+197+193+194+190+210+619+196+618+189+192+188+209+186+214+621+614 )  or  ( chain B and resi 195 ) 
set_color predicted_pk_19, [ 0, 255, 255 ] 
color predicted_pk_19 , predicted_pocket_19 
show spheres, predicted_pocket_19 
set sphere_scale , 0.3 , predicted_pocket_19 
set sphere_transparency , 0.1 , predicted_pocket_19 
# predicted pocket number 20
select predicted_pocket_20, chain B and resi 376+384+390+441+427+582+590+584+627+428+623+578+385+437+389+621+577+620+431+216+380+423+616+438+612+424+581+617+381+693+442+587+624+432+589
set_color predicted_pk_20, [ 0, 255, 255 ] 
color predicted_pk_20 , predicted_pocket_20 
show spheres, predicted_pocket_20 
set sphere_scale , 0.3 , predicted_pocket_20 
set sphere_transparency , 0.1 , predicted_pocket_20 
# predicted pocket number 21
select predicted_pocket_21, chain B and resi 97+96+125+123+122+120+132+406+114+115+99+646+63+98+62+128+64+129+118+113+124+119+116
set_color predicted_pk_21, [ 0, 255, 255 ] 
color predicted_pk_21 , predicted_pocket_21 
show spheres, predicted_pocket_21 
set sphere_scale , 0.3 , predicted_pocket_21 
set sphere_transparency , 0.1 , predicted_pocket_21 
# predicted pocket number 22
select predicted_pocket_22, chain C and resi 400+105+111+110+131+138+167+143+104+135+134+113+108+109+142+165+139+107
set_color predicted_pk_22, [ 0, 255, 255 ] 
color predicted_pk_22 , predicted_pocket_22 
show spheres, predicted_pocket_22 
set sphere_scale , 0.3 , predicted_pocket_22 
set sphere_transparency , 0.1 , predicted_pocket_22 
# predicted pocket number 23
select predicted_pocket_23, chain B and resi 262+339+265+271+281+259+263+329+266+272+270+275
set_color predicted_pk_23, [ 0, 255, 255 ] 
color predicted_pk_23 , predicted_pocket_23 
show spheres, predicted_pocket_23 
set sphere_scale , 0.3 , predicted_pocket_23 
set sphere_transparency , 0.1 , predicted_pocket_23 
# predicted pocket number 24
select predicted_pocket_24, ( chain A and resi 21+23+77+74+75+76 )  or  ( chain B and resi 662+665+669+666 ) 
set_color predicted_pk_24, [ 0, 255, 255 ] 
color predicted_pk_24 , predicted_pocket_24 
show spheres, predicted_pocket_24 
set sphere_scale , 0.3 , predicted_pocket_24 
set sphere_transparency , 0.1 , predicted_pocket_24 
# predicted pocket number 25
select predicted_pocket_25, chain B and resi 240+217+222+235+679+578+234+218+221+576+580+681+579+678+677+680+219+239+238
set_color predicted_pk_25, [ 0, 255, 255 ] 
color predicted_pk_25 , predicted_pocket_25 
show spheres, predicted_pocket_25 
set sphere_scale , 0.3 , predicted_pocket_25 
set sphere_transparency , 0.1 , predicted_pocket_25 
# predicted pocket number 26
select predicted_pocket_26, chain D and resi 601+594+591+363+593+610+354+598+607+606+596+366+370+343+367+602
set_color predicted_pk_26, [ 0, 255, 255 ] 
color predicted_pk_26 , predicted_pocket_26 
show spheres, predicted_pocket_26 
set sphere_scale , 0.3 , predicted_pocket_26 
set sphere_transparency , 0.1 , predicted_pocket_26 
# predicted pocket number 27
select predicted_pocket_27, chain D and resi 619+623+380+186+389+622+427+437+385+440+442+381+426+185+423+384+627+626+428+178+693+189+424+431+430+182+390+432+441+438
set_color predicted_pk_27, [ 0, 255, 255 ] 
color predicted_pk_27 , predicted_pocket_27 
show spheres, predicted_pocket_27 
set sphere_scale , 0.3 , predicted_pocket_27 
set sphere_transparency , 0.1 , predicted_pocket_27 
# predicted pocket number 28
select predicted_pocket_28, ( chain D and resi 666+669+662+665 )  or  ( chain C and resi 22+23+76+75+21+74+77+71+73 ) 
set_color predicted_pk_28, [ 0, 255, 255 ] 
color predicted_pk_28 , predicted_pocket_28 
show spheres, predicted_pocket_28 
set sphere_scale , 0.3 , predicted_pocket_28 
set sphere_transparency , 0.1 , predicted_pocket_28 
# predicted pocket number 29
select predicted_pocket_29, chain A and resi 160+178+161+425+172+170+430+175+429+426+182+159+179+162
set_color predicted_pk_29, [ 0, 255, 255 ] 
color predicted_pk_29 , predicted_pocket_29 
show spheres, predicted_pocket_29 
set sphere_scale , 0.3 , predicted_pocket_29 
set sphere_transparency , 0.1 , predicted_pocket_29 
# predicted pocket number 30
select predicted_pocket_30, chain C and resi 455+293+451+290+291+292+289+448+452+288
set_color predicted_pk_30, [ 0, 255, 255 ] 
color predicted_pk_30 , predicted_pocket_30 
show spheres, predicted_pocket_30 
set sphere_scale , 0.3 , predicted_pocket_30 
set sphere_transparency , 0.1 , predicted_pocket_30 
# predicted pocket number 31
select predicted_pocket_31, chain A and resi 610+343+593+607+609+602+366+354+370+594+606+596+363+601+598+367
set_color predicted_pk_31, [ 0, 255, 255 ] 
color predicted_pk_31 , predicted_pocket_31 
show spheres, predicted_pocket_31 
set sphere_scale , 0.3 , predicted_pocket_31 
set sphere_transparency , 0.1 , predicted_pocket_31 
# predicted pocket number 32
select predicted_pocket_32, ( chain C and resi 184+187+180+183+188 )  or  ( chain D and resi 188+187+214+184+215+212+191+213+183+180+625 )  or  ( chain A and resi 199+197+194+198+195 )  or  ( chain B and resi 198 ) 
set_color predicted_pk_32, [ 0, 255, 255 ] 
color predicted_pk_32 , predicted_pocket_32 
show spheres, predicted_pocket_32 
set sphere_scale , 0.3 , predicted_pocket_32 
set sphere_transparency , 0.1 , predicted_pocket_32 
# predicted pocket number 33
select predicted_pocket_33, chain B and resi 448+452+293+455+292+288+290+444+451+291+289
set_color predicted_pk_33, [ 0, 255, 255 ] 
color predicted_pk_33 , predicted_pocket_33 
show spheres, predicted_pocket_33 
set sphere_scale , 0.3 , predicted_pocket_33 
set sphere_transparency , 0.1 , predicted_pocket_33 
# predicted pocket number 34
select predicted_pocket_34, chain C and resi 565+392+462+395+465+558+561+534+562
set_color predicted_pk_34, [ 0, 255, 255 ] 
color predicted_pk_34 , predicted_pocket_34 
show spheres, predicted_pocket_34 
set sphere_scale , 0.3 , predicted_pocket_34 
set sphere_transparency , 0.1 , predicted_pocket_34 
# predicted pocket number 35
select predicted_pocket_35, chain A and resi 395+462+562+558+465+392+565+561+534
set_color predicted_pk_35, [ 0, 255, 255 ] 
color predicted_pk_35 , predicted_pocket_35 
show spheres, predicted_pocket_35 
set sphere_scale , 0.3 , predicted_pocket_35 
set sphere_transparency , 0.1 , predicted_pocket_35 
# predicted pocket number 36
select predicted_pocket_36, chain D and resi 569+388+464+382+473+387+487+471+469+463+243+474+470+565+465+467+564+383+378
set_color predicted_pk_36, [ 0, 255, 255 ] 
color predicted_pk_36 , predicted_pocket_36 
show spheres, predicted_pocket_36 
set sphere_scale , 0.3 , predicted_pocket_36 
set sphere_transparency , 0.1 , predicted_pocket_36 
# predicted pocket number 37
select predicted_pocket_37, chain B and resi 387+487+469+463+569+464+383+473+470+474+471+465+564+378+467+388+243+565+382
set_color predicted_pk_37, [ 0, 255, 255 ] 
color predicted_pk_37 , predicted_pocket_37 
show spheres, predicted_pocket_37 
set sphere_scale , 0.3 , predicted_pocket_37 
set sphere_transparency , 0.1 , predicted_pocket_37 
# predicted pocket number 38
select predicted_pocket_38, chain A and resi 122+62+63+123+118+128+115+96+125+124+64+116+114+406+113
set_color predicted_pk_38, [ 0, 255, 255 ] 
color predicted_pk_38 , predicted_pocket_38 
show spheres, predicted_pocket_38 
set sphere_scale , 0.3 , predicted_pocket_38 
set sphere_transparency , 0.1 , predicted_pocket_38 
# predicted pocket number 39
select predicted_pocket_39, ( chain B and resi 189+188+197+213+614+618+210+214+615+209+196+192+193 )  or  ( chain D and resi 186 )  or  ( chain C and resi 195 ) 
set_color predicted_pk_39, [ 0, 255, 255 ] 
color predicted_pk_39 , predicted_pocket_39 
show spheres, predicted_pocket_39 
set sphere_scale , 0.3 , predicted_pocket_39 
set sphere_transparency , 0.1 , predicted_pocket_39 
# predicted pocket number 40
select predicted_pocket_40, chain B and resi 558+534+561+562+465+395+462+392+565
set_color predicted_pk_40, [ 0, 255, 255 ] 
color predicted_pk_40 , predicted_pocket_40 
show spheres, predicted_pocket_40 
set sphere_scale , 0.3 , predicted_pocket_40 
set sphere_transparency , 0.1 , predicted_pocket_40 
# predicted pocket number 41
select predicted_pocket_41, ( chain B and resi 216+218+220+214+208+211+219+215+212 )  or  ( chain C and resi 200+199+198+201+206+202 ) 
set_color predicted_pk_41, [ 0, 255, 255 ] 
color predicted_pk_41 , predicted_pocket_41 
show spheres, predicted_pocket_41 
set sphere_scale , 0.3 , predicted_pocket_41 
set sphere_transparency , 0.1 , predicted_pocket_41 
# predicted pocket number 42
select predicted_pocket_42, chain A and resi 178+631+630+629+170+626+634+692+174+693+575+688+690+181+570+177
set_color predicted_pk_42, [ 0, 255, 255 ] 
color predicted_pk_42 , predicted_pocket_42 
show spheres, predicted_pocket_42 
set sphere_scale , 0.3 , predicted_pocket_42 
set sphere_transparency , 0.1 , predicted_pocket_42 
# predicted pocket number 43
select predicted_pocket_43, chain D and resi 558+392+562+462+465+565+395+534+561
set_color predicted_pk_43, [ 0, 255, 255 ] 
color predicted_pk_43 , predicted_pocket_43 
show spheres, predicted_pocket_43 
set sphere_scale , 0.3 , predicted_pocket_43 
set sphere_transparency , 0.1 , predicted_pocket_43 
# predicted pocket number 44
select predicted_pocket_44, chain D and resi 455+448+292+452+451+289+288+447+290+291+293
set_color predicted_pk_44, [ 0, 255, 255 ] 
color predicted_pk_44 , predicted_pocket_44 
show spheres, predicted_pocket_44 
set sphere_scale , 0.3 , predicted_pocket_44 
set sphere_transparency , 0.1 , predicted_pocket_44 
# predicted pocket number 45
select predicted_pocket_45, chain B and resi 189+436+623+435+440+626+185+619+182+437+441+178+429+430+434+622+627+431+186
set_color predicted_pk_45, [ 0, 255, 255 ] 
color predicted_pk_45 , predicted_pocket_45 
show spheres, predicted_pocket_45 
set sphere_scale , 0.3 , predicted_pocket_45 
set sphere_transparency , 0.1 , predicted_pocket_45 
# predicted pocket number 46
select predicted_pocket_46, chain B and resi 387+244+246+464+473+459+474+288+285+378+456+243+382
set_color predicted_pk_46, [ 0, 255, 255 ] 
color predicted_pk_46 , predicted_pocket_46 
show spheres, predicted_pocket_46 
set sphere_scale , 0.3 , predicted_pocket_46 
set sphere_transparency , 0.1 , predicted_pocket_46 
# predicted pocket number 47
select predicted_pocket_47, chain A and resi 292+291+293+290+288+289+455+447+451+448+452
set_color predicted_pk_47, [ 0, 255, 255 ] 
color predicted_pk_47 , predicted_pocket_47 
show spheres, predicted_pocket_47 
set sphere_scale , 0.3 , predicted_pocket_47 
set sphere_transparency , 0.1 , predicted_pocket_47 
# predicted pocket number 48
select predicted_pocket_48, chain C and resi 580+235+221+679+240+579+222+677+680+678+681+576+239+234+238
set_color predicted_pk_48, [ 0, 255, 255 ] 
color predicted_pk_48 , predicted_pocket_48 
show spheres, predicted_pocket_48 
set sphere_scale , 0.3 , predicted_pocket_48 
set sphere_transparency , 0.1 , predicted_pocket_48 
# predicted pocket number 49
select predicted_pocket_49, ( chain B and resi 23+43+24+40+22+53+45+20+44+21+41 )  or  ( chain A and resi 659+662 ) 
set_color predicted_pk_49, [ 0, 255, 255 ] 
color predicted_pk_49 , predicted_pocket_49 
show spheres, predicted_pocket_49 
set sphere_scale , 0.3 , predicted_pocket_49 
set sphere_transparency , 0.1 , predicted_pocket_49 
# predicted pocket number 50
select predicted_pocket_50, chain A and resi 221+679+579+239+681+680+238+222+235+580+678+240+576+677+234
set_color predicted_pk_50, [ 0, 255, 255 ] 
color predicted_pk_50 , predicted_pocket_50 
show spheres, predicted_pocket_50 
set sphere_scale , 0.3 , predicted_pocket_50 
set sphere_transparency , 0.1 , predicted_pocket_50 
# predicted pocket number 51
select predicted_pocket_51, ( chain C and resi 188+214+213+191+187+212+215 )  or  ( chain B and resi 198+194+199+197+195+196 )  or  ( chain D and resi 183+187 ) 
set_color predicted_pk_51, [ 0, 255, 255 ] 
color predicted_pk_51 , predicted_pocket_51 
show spheres, predicted_pocket_51 
set sphere_scale , 0.3 , predicted_pocket_51 
set sphere_transparency , 0.1 , predicted_pocket_51 
# predicted pocket number 52
select predicted_pocket_52, chain C and resi 161+175+425+178+159+426+429+160+182+170+179+162+430
set_color predicted_pk_52, [ 0, 255, 255 ] 
color predicted_pk_52 , predicted_pocket_52 
show spheres, predicted_pocket_52 
set sphere_scale , 0.3 , predicted_pocket_52 
set sphere_transparency , 0.1 , predicted_pocket_52 
# predicted pocket number 53
select predicted_pocket_53, chain D and resi 222+579+681+239+234+679+235+221+680+238+678+576+580+677+240
set_color predicted_pk_53, [ 0, 255, 255 ] 
color predicted_pk_53 , predicted_pocket_53 
show spheres, predicted_pocket_53 
set sphere_scale , 0.3 , predicted_pocket_53 
set sphere_transparency , 0.1 , predicted_pocket_53 
# predicted pocket number 54
select predicted_pocket_54, ( chain D and resi 683+669+672+680+673+678+686+685 )  or  ( chain C and resi 78+76+75+77 ) 
set_color predicted_pk_54, [ 0, 255, 255 ] 
color predicted_pk_54 , predicted_pocket_54 
show spheres, predicted_pocket_54 
set sphere_scale , 0.3 , predicted_pocket_54 
set sphere_transparency , 0.1 , predicted_pocket_54 
# predicted pocket number 55
select predicted_pocket_55, ( chain C and resi 43+22+41+40+45+44+20+24+53+23+21 )  or  ( chain D and resi 662+659 ) 
set_color predicted_pk_55, [ 0, 255, 255 ] 
color predicted_pk_55 , predicted_pocket_55 
show spheres, predicted_pocket_55 
set sphere_scale , 0.3 , predicted_pocket_55 
set sphere_transparency , 0.1 , predicted_pocket_55 
# predicted pocket number 56
select predicted_pocket_56, chain C and resi 565+378+470+569+382+243+469+463+465+383+471+464+564+473+474+387+487+467
set_color predicted_pk_56, [ 0, 255, 255 ] 
color predicted_pk_56 , predicted_pocket_56 
show spheres, predicted_pocket_56 
set sphere_scale , 0.3 , predicted_pocket_56 
set sphere_transparency , 0.1 , predicted_pocket_56 
# predicted pocket number 57
select predicted_pocket_57, ( chain D and resi 50+85+11+12+48+14 )  or  ( chain C and resi 50+14+85+48+12+11 ) 
set_color predicted_pk_57, [ 0, 255, 255 ] 
color predicted_pk_57 , predicted_pocket_57 
show spheres, predicted_pocket_57 
set sphere_scale , 0.3 , predicted_pocket_57 
set sphere_transparency , 0.1 , predicted_pocket_57 
# predicted pocket number 58
select predicted_pocket_58, chain A and resi 254+346+287+302+253+345+347
set_color predicted_pk_58, [ 0, 255, 255 ] 
color predicted_pk_58 , predicted_pocket_58 
show spheres, predicted_pocket_58 
set sphere_scale , 0.3 , predicted_pocket_58 
set sphere_transparency , 0.1 , predicted_pocket_58 
# predicted pocket number 59
select predicted_pocket_59, ( chain B and resi 90+54+55+41+7+53+88+39+9+89+8+52+42 )  or  ( chain A and resi 652+655+651+648 ) 
set_color predicted_pk_59, [ 0, 255, 255 ] 
color predicted_pk_59 , predicted_pocket_59 
show spheres, predicted_pocket_59 
set sphere_scale , 0.3 , predicted_pocket_59 
set sphere_transparency , 0.1 , predicted_pocket_59 
# predicted pocket number 60
select predicted_pocket_60, chain B and resi 159+160+162+426+179+429+161+425+430
set_color predicted_pk_60, [ 0, 255, 255 ] 
color predicted_pk_60 , predicted_pocket_60 
show spheres, predicted_pocket_60 
set sphere_scale , 0.3 , predicted_pocket_60 
set sphere_transparency , 0.1 , predicted_pocket_60 
# predicted pocket number 61
select predicted_pocket_61, chain A and resi 588+372+236+586+587+369+375+235+580+232+585+368+365+371+226+227
set_color predicted_pk_61, [ 0, 255, 255 ] 
color predicted_pk_61 , predicted_pocket_61 
show spheres, predicted_pocket_61 
set sphere_scale , 0.3 , predicted_pocket_61 
set sphere_transparency , 0.1 , predicted_pocket_61 
# predicted pocket number 62
select predicted_pocket_62, chain C and resi 542+530+531+537+543+534+544+545+535+536
set_color predicted_pk_62, [ 0, 255, 255 ] 
color predicted_pk_62 , predicted_pocket_62 
show spheres, predicted_pocket_62 
set sphere_scale , 0.3 , predicted_pocket_62 
set sphere_transparency , 0.1 , predicted_pocket_62 
# predicted pocket number 63
select predicted_pocket_63, chain B and resi 369+232+226+588+235+586+585+365+368+227+372
set_color predicted_pk_63, [ 0, 255, 255 ] 
color predicted_pk_63 , predicted_pocket_63 
show spheres, predicted_pocket_63 
set sphere_scale , 0.3 , predicted_pocket_63 
set sphere_transparency , 0.1 , predicted_pocket_63 
# predicted pocket number 64
select predicted_pocket_64, chain D and resi 232+369+226+368+365+372+375+235+588+585+236+227+371+580+586
set_color predicted_pk_64, [ 0, 255, 255 ] 
color predicted_pk_64 , predicted_pocket_64 
show spheres, predicted_pocket_64 
set sphere_scale , 0.3 , predicted_pocket_64 
set sphere_transparency , 0.1 , predicted_pocket_64 
# predicted pocket number 65
select predicted_pocket_65, chain C and resi 594+370+610+593+596+609+607+606+366+602+601
set_color predicted_pk_65, [ 0, 255, 255 ] 
color predicted_pk_65 , predicted_pocket_65 
show spheres, predicted_pocket_65 
set sphere_scale , 0.3 , predicted_pocket_65 
set sphere_transparency , 0.1 , predicted_pocket_65 
# predicted pocket number 66
select predicted_pocket_66, chain A and resi 446+293+445+296+294+295+448+297
set_color predicted_pk_66, [ 0, 255, 255 ] 
color predicted_pk_66 , predicted_pocket_66 
show spheres, predicted_pocket_66 
set sphere_scale , 0.3 , predicted_pocket_66 
set sphere_transparency , 0.1 , predicted_pocket_66 
# predicted pocket number 67
select predicted_pocket_67, chain C and resi 226+588+372+585+369+368+227+586+232+365
set_color predicted_pk_67, [ 0, 255, 255 ] 
color predicted_pk_67 , predicted_pocket_67 
show spheres, predicted_pocket_67 
set sphere_scale , 0.3 , predicted_pocket_67 
set sphere_transparency , 0.1 , predicted_pocket_67 
# predicted pocket number 68
select predicted_pocket_68, ( chain A and resi 11+50+14+48+12 )  or  ( chain B and resi 50+85+48+49+12+11+14 ) 
set_color predicted_pk_68, [ 0, 255, 255 ] 
color predicted_pk_68 , predicted_pocket_68 
show spheres, predicted_pocket_68 
set sphere_scale , 0.3 , predicted_pocket_68 
set sphere_transparency , 0.1 , predicted_pocket_68 
# predicted pocket number 69
select predicted_pocket_69, chain D and resi 623+380+216+590+581+582+589+577+376+624+211+621+617+442+627+612+578+587+616+441+620+584
set_color predicted_pk_69, [ 0, 255, 255 ] 
color predicted_pk_69 , predicted_pocket_69 
show spheres, predicted_pocket_69 
set sphere_scale , 0.3 , predicted_pocket_69 
set sphere_transparency , 0.1 , predicted_pocket_69 
# predicted pocket number 70
select predicted_pocket_70, chain B and resi 207+201+203+199+609+612+605+592+614+200+608+613
set_color predicted_pk_70, [ 0, 255, 255 ] 
color predicted_pk_70 , predicted_pocket_70 
show spheres, predicted_pocket_70 
set sphere_scale , 0.3 , predicted_pocket_70 
set sphere_transparency , 0.1 , predicted_pocket_70 
# predicted pocket number 71
select predicted_pocket_71, chain A and resi 244+387+473+465+378+383+246+569+382+464+243+467+565+470+564+474+487
set_color predicted_pk_71, [ 0, 255, 255 ] 
color predicted_pk_71 , predicted_pocket_71 
show spheres, predicted_pocket_71 
set sphere_scale , 0.3 , predicted_pocket_71 
set sphere_transparency , 0.1 , predicted_pocket_71 
# predicted pocket number 72
select predicted_pocket_72, chain D and resi 448+445+446+297+296+294+295+293
set_color predicted_pk_72, [ 0, 255, 255 ] 
color predicted_pk_72 , predicted_pocket_72 
show spheres, predicted_pocket_72 
set sphere_scale , 0.3 , predicted_pocket_72 
set sphere_transparency , 0.1 , predicted_pocket_72 
# predicted pocket number 73
select predicted_pocket_73, chain C and resi 200+612+199+197+592+203+207+201+613+614+608
set_color predicted_pk_73, [ 0, 255, 255 ] 
color predicted_pk_73 , predicted_pocket_73 
show spheres, predicted_pocket_73 
set sphere_scale , 0.3 , predicted_pocket_73 
set sphere_transparency , 0.1 , predicted_pocket_73 
# predicted pocket number 74
select predicted_pocket_74, chain A and resi 348+350+346+303+597+349+351+347
set_color predicted_pk_74, [ 0, 255, 255 ] 
color predicted_pk_74 , predicted_pocket_74 
show spheres, predicted_pocket_74 
set sphere_scale , 0.3 , predicted_pocket_74 
set sphere_transparency , 0.1 , predicted_pocket_74 
# predicted pocket number 75
select predicted_pocket_75, chain D and resi 109+104+135+107+105+142+138+139+167+165+110+143+400
set_color predicted_pk_75, [ 0, 255, 255 ] 
color predicted_pk_75 , predicted_pocket_75 
show spheres, predicted_pocket_75 
set sphere_scale , 0.3 , predicted_pocket_75 
set sphere_transparency , 0.1 , predicted_pocket_75 
# predicted pocket number 76
select predicted_pocket_76, chain C and resi 63+118+125+114+116+124+128+96+62+123+64
set_color predicted_pk_76, [ 0, 255, 255 ] 
color predicted_pk_76 , predicted_pocket_76 
show spheres, predicted_pocket_76 
set sphere_scale , 0.3 , predicted_pocket_76 
set sphere_transparency , 0.1 , predicted_pocket_76 
# predicted pocket number 77
select predicted_pocket_77, ( chain C and resi 211+218+216+219+220+214+212+215+217 )  or  ( chain B and resi 201+198+199+200+206 ) 
set_color predicted_pk_77, [ 0, 255, 255 ] 
color predicted_pk_77 , predicted_pocket_77 
show spheres, predicted_pocket_77 
set sphere_scale , 0.3 , predicted_pocket_77 
set sphere_transparency , 0.1 , predicted_pocket_77 
# predicted pocket number 78
select predicted_pocket_78, chain C and resi 348+347+597+351+303+350+346+349
set_color predicted_pk_78, [ 0, 255, 255 ] 
color predicted_pk_78 , predicted_pocket_78 
show spheres, predicted_pocket_78 
set sphere_scale , 0.3 , predicted_pocket_78 
set sphere_transparency , 0.1 , predicted_pocket_78 
# predicted pocket number 79
select predicted_pocket_79, chain A and resi 554+558+462+463+546+557+466+544+561+461
set_color predicted_pk_79, [ 0, 255, 255 ] 
color predicted_pk_79 , predicted_pocket_79 
show spheres, predicted_pocket_79 
set sphere_scale , 0.3 , predicted_pocket_79 
set sphere_transparency , 0.1 , predicted_pocket_79 
# predicted pocket number 80
select predicted_pocket_80, ( chain A and resi 669+683+673+680+678+672+685+686 )  or  ( chain B and resi 76 ) 
set_color predicted_pk_80, [ 0, 255, 255 ] 
color predicted_pk_80 , predicted_pocket_80 
show spheres, predicted_pocket_80 
set sphere_scale , 0.3 , predicted_pocket_80 
set sphere_transparency , 0.1 , predicted_pocket_80 
# predicted pocket number 81
select predicted_pocket_81, chain D and resi 557+554+558+463+462+544+466+461+561+546
set_color predicted_pk_81, [ 0, 255, 255 ] 
color predicted_pk_81 , predicted_pocket_81 
show spheres, predicted_pocket_81 
set sphere_scale , 0.3 , predicted_pocket_81 
set sphere_transparency , 0.1 , predicted_pocket_81 
# predicted pocket number 82
select predicted_pocket_82, chain A and resi 230+674+330+334+336+237+335+482+333+675+486+483+484+677+234+231+676
set_color predicted_pk_82, [ 0, 255, 255 ] 
color predicted_pk_82 , predicted_pocket_82 
show spheres, predicted_pocket_82 
set sphere_scale , 0.3 , predicted_pocket_82 
set sphere_transparency , 0.1 , predicted_pocket_82 
# predicted pocket number 83
select predicted_pocket_83, chain B and resi 393+148+432+390+453+450+152+155+154+428+153
set_color predicted_pk_83, [ 0, 255, 255 ] 
color predicted_pk_83 , predicted_pocket_83 
show spheres, predicted_pocket_83 
set sphere_scale , 0.3 , predicted_pocket_83 
set sphere_transparency , 0.1 , predicted_pocket_83 
# predicted pocket number 84
select predicted_pocket_84, chain B and resi 262+273+272+257+251+340+339+276+327+248+281+258+261+250
set_color predicted_pk_84, [ 0, 255, 255 ] 
color predicted_pk_84 , predicted_pocket_84 
show spheres, predicted_pocket_84 
set sphere_scale , 0.3 , predicted_pocket_84 
set sphere_transparency , 0.1 , predicted_pocket_84 
# predicted pocket number 85
select predicted_pocket_85, chain D and resi 552+500+503+556+504+506+507+553
set_color predicted_pk_85, [ 0, 255, 255 ] 
color predicted_pk_85 , predicted_pocket_85 
show spheres, predicted_pocket_85 
set sphere_scale , 0.3 , predicted_pocket_85 
set sphere_transparency , 0.1 , predicted_pocket_85 
# predicted pocket number 86
select predicted_pocket_86, chain D and resi 455+287+345+288+459+290+302
set_color predicted_pk_86, [ 0, 255, 255 ] 
color predicted_pk_86 , predicted_pocket_86 
show spheres, predicted_pocket_86 
set sphere_scale , 0.3 , predicted_pocket_86 
set sphere_transparency , 0.1 , predicted_pocket_86 
# predicted pocket number 87
select predicted_pocket_87, chain A and resi 205+361+204+365+226+203+227
set_color predicted_pk_87, [ 0, 255, 255 ] 
color predicted_pk_87 , predicted_pocket_87 
show spheres, predicted_pocket_87 
set sphere_scale , 0.3 , predicted_pocket_87 
set sphere_transparency , 0.1 , predicted_pocket_87 
# predicted pocket number 88
select predicted_pocket_88, chain C and resi 556+503+553+506+507+552
set_color predicted_pk_88, [ 0, 255, 255 ] 
color predicted_pk_88 , predicted_pocket_88 
show spheres, predicted_pocket_88 
set sphere_scale , 0.3 , predicted_pocket_88 
set sphere_transparency , 0.1 , predicted_pocket_88 
# predicted pocket number 89
select predicted_pocket_89, chain A and resi 343+304+350+344+595+305+303+354+597+594+596+352+351
set_color predicted_pk_89, [ 0, 255, 255 ] 
color predicted_pk_89 , predicted_pocket_89 
show spheres, predicted_pocket_89 
set sphere_scale , 0.3 , predicted_pocket_89 
set sphere_transparency , 0.1 , predicted_pocket_89 
# predicted pocket number 90
select predicted_pocket_90, chain A and resi 271+270+266+263+267+269+274
set_color predicted_pk_90, [ 0, 255, 255 ] 
color predicted_pk_90 , predicted_pocket_90 
show spheres, predicted_pocket_90 
set sphere_scale , 0.3 , predicted_pocket_90 
set sphere_transparency , 0.1 , predicted_pocket_90 
# predicted pocket number 91
select predicted_pocket_91, chain D and resi 96+114+98+97+63+115+99+62+646+116
set_color predicted_pk_91, [ 0, 255, 255 ] 
color predicted_pk_91 , predicted_pocket_91 
show spheres, predicted_pocket_91 
set sphere_scale , 0.3 , predicted_pocket_91 
set sphere_transparency , 0.1 , predicted_pocket_91 
# predicted pocket number 92
select predicted_pocket_92, chain A and resi 357+329+338+331+337+339+267+356+265+229+264
set_color predicted_pk_92, [ 0, 255, 255 ] 
color predicted_pk_92 , predicted_pocket_92 
show spheres, predicted_pocket_92 
set sphere_scale , 0.3 , predicted_pocket_92 
set sphere_transparency , 0.1 , predicted_pocket_92 
# predicted pocket number 93
select predicted_pocket_93, chain A and resi 504+553+556+552+503+500+507+506
set_color predicted_pk_93, [ 0, 255, 255 ] 
color predicted_pk_93 , predicted_pocket_93 
show spheres, predicted_pocket_93 
set sphere_scale , 0.3 , predicted_pocket_93 
set sphere_transparency , 0.1 , predicted_pocket_93 
# predicted pocket number 94
select predicted_pocket_94, chain D and resi 594+352+354+344+350+597+305+351+596+304+595+343+303
set_color predicted_pk_94, [ 0, 255, 255 ] 
color predicted_pk_94 , predicted_pocket_94 
show spheres, predicted_pocket_94 
set sphere_scale , 0.3 , predicted_pocket_94 
set sphere_transparency , 0.1 , predicted_pocket_94 
# predicted pocket number 95
select predicted_pocket_95, chain B and resi 371+232+375+235+586+587+580+286+236+372
set_color predicted_pk_95, [ 0, 255, 255 ] 
color predicted_pk_95 , predicted_pocket_95 
show spheres, predicted_pocket_95 
set sphere_scale , 0.3 , predicted_pocket_95 
set sphere_transparency , 0.1 , predicted_pocket_95 
# predicted pocket number 96
select predicted_pocket_96, ( chain C and resi 41+42+54+53+55+52+51+39 )  or  ( chain D and resi 652+655 ) 
set_color predicted_pk_96, [ 0, 255, 255 ] 
color predicted_pk_96 , predicted_pocket_96 
show spheres, predicted_pocket_96 
set sphere_scale , 0.3 , predicted_pocket_96 
set sphere_transparency , 0.1 , predicted_pocket_96 
# predicted pocket number 97
select predicted_pocket_97, chain B and resi 506+503+552+556+553+507
set_color predicted_pk_97, [ 0, 255, 255 ] 
color predicted_pk_97 , predicted_pocket_97 
show spheres, predicted_pocket_97 
set sphere_scale , 0.3 , predicted_pocket_97 
set sphere_transparency , 0.1 , predicted_pocket_97 
# predicted pocket number 98
select predicted_pocket_98, chain C and resi 594+597+352+351+596+595+303+306+350+343+304+354+305+344
set_color predicted_pk_98, [ 0, 255, 255 ] 
color predicted_pk_98 , predicted_pocket_98 
show spheres, predicted_pocket_98 
set sphere_scale , 0.3 , predicted_pocket_98 
set sphere_transparency , 0.1 , predicted_pocket_98 
# predicted pocket number 99
select predicted_pocket_99, chain A and resi 646+98+96+115+97+116+648+99+114
set_color predicted_pk_99, [ 0, 255, 255 ] 
color predicted_pk_99 , predicted_pocket_99 
show spheres, predicted_pocket_99 
set sphere_scale , 0.3 , predicted_pocket_99 
set sphere_transparency , 0.1 , predicted_pocket_99 
# predicted pocket number 100
select predicted_pocket_100, chain B and resi 337+331+338+339+356+265+357+267+264+329+266+229
set_color predicted_pk_100, [ 0, 255, 255 ] 
color predicted_pk_100 , predicted_pocket_100 
show spheres, predicted_pocket_100 
set sphere_scale , 0.3 , predicted_pocket_100 
set sphere_transparency , 0.1 , predicted_pocket_100 
# predicted pocket number 101
select predicted_pocket_101, chain D and resi 157+147+429+146+158+159+425+428+156+148+155
set_color predicted_pk_101, [ 0, 255, 255 ] 
color predicted_pk_101 , predicted_pocket_101 
show spheres, predicted_pocket_101 
set sphere_scale , 0.3 , predicted_pocket_101 
set sphere_transparency , 0.1 , predicted_pocket_101 
# predicted pocket number 102
select predicted_pocket_102, chain B and resi 558+561+463+557+553+544+462+554+546+466
set_color predicted_pk_102, [ 0, 255, 255 ] 
color predicted_pk_102 , predicted_pocket_102 
show spheres, predicted_pocket_102 
set sphere_scale , 0.3 , predicted_pocket_102 
set sphere_transparency , 0.1 , predicted_pocket_102 
# predicted pocket number 103
select predicted_pocket_103, chain C and resi 580+587+235+236+286+372+375+586+371+232
set_color predicted_pk_103, [ 0, 255, 255 ] 
color predicted_pk_103 , predicted_pocket_103 
show spheres, predicted_pocket_103 
set sphere_scale , 0.3 , predicted_pocket_103 
set sphere_transparency , 0.1 , predicted_pocket_103 
# predicted pocket number 104
select predicted_pocket_104, chain D and resi 657+656+500+496+653+501+660+504+497
set_color predicted_pk_104, [ 0, 255, 255 ] 
color predicted_pk_104 , predicted_pocket_104 
show spheres, predicted_pocket_104 
set sphere_scale , 0.3 , predicted_pocket_104 
set sphere_transparency , 0.1 , predicted_pocket_104 
# predicted pocket number 105
select predicted_pocket_105, chain C and resi 348+347+352+351+599+256+261+342+353+349
set_color predicted_pk_105, [ 0, 255, 255 ] 
color predicted_pk_105 , predicted_pocket_105 
show spheres, predicted_pocket_105 
set sphere_scale , 0.3 , predicted_pocket_105 
set sphere_transparency , 0.1 , predicted_pocket_105 
# predicted pocket number 106
select predicted_pocket_106, chain D and resi 482+486+484+234+237+330+335+230+483+334+336
set_color predicted_pk_106, [ 0, 255, 255 ] 
color predicted_pk_106 , predicted_pocket_106 
show spheres, predicted_pocket_106 
set sphere_scale , 0.3 , predicted_pocket_106 
set sphere_transparency , 0.1 , predicted_pocket_106 
# predicted pocket number 107
select predicted_pocket_107, chain D and resi 120+129+521+133+136+520+132
set_color predicted_pk_107, [ 0, 255, 255 ] 
color predicted_pk_107 , predicted_pocket_107 
show spheres, predicted_pocket_107 
set sphere_scale , 0.3 , predicted_pocket_107 
set sphere_transparency , 0.1 , predicted_pocket_107 
# predicted pocket number 108
select predicted_pocket_108, ( chain C and resi 212+206+208+205 )  or  ( chain B and resi 211+212+205+208 ) 
set_color predicted_pk_108, [ 0, 255, 255 ] 
color predicted_pk_108 , predicted_pocket_108 
show spheres, predicted_pocket_108 
set sphere_scale , 0.3 , predicted_pocket_108 
set sphere_transparency , 0.1 , predicted_pocket_108 
# predicted pocket number 109
select predicted_pocket_109, ( chain D and resi 205 )  or  ( chain A and resi 211+205+219+226+223+208+224+227+220 ) 
set_color predicted_pk_109, [ 0, 255, 255 ] 
color predicted_pk_109 , predicted_pocket_109 
show spheres, predicted_pocket_109 
set sphere_scale , 0.3 , predicted_pocket_109 
set sphere_transparency , 0.1 , predicted_pocket_109 
# predicted pocket number 110
select predicted_pocket_110, chain C and resi 671+490+489+493+664+667+668
set_color predicted_pk_110, [ 0, 255, 255 ] 
color predicted_pk_110 , predicted_pocket_110 
show spheres, predicted_pocket_110 
set sphere_scale , 0.3 , predicted_pocket_110 
set sphere_transparency , 0.1 , predicted_pocket_110 
# predicted pocket number 111
select predicted_pocket_111, ( chain D and resi 224+205+212+226+208+211+223+219+227 )  or  ( chain A and resi 205 ) 
set_color predicted_pk_111, [ 0, 255, 255 ] 
color predicted_pk_111 , predicted_pocket_111 
show spheres, predicted_pocket_111 
set sphere_scale , 0.3 , predicted_pocket_111 
set sphere_transparency , 0.1 , predicted_pocket_111 
# predicted pocket number 112
select predicted_pocket_112, ( chain C and resi 188+184+625+214+213+629+215 )  or  ( chain B and resi 198 )  or  ( chain D and resi 183+180 ) 
set_color predicted_pk_112, [ 0, 255, 255 ] 
color predicted_pk_112 , predicted_pocket_112 
show spheres, predicted_pocket_112 
set sphere_scale , 0.3 , predicted_pocket_112 
set sphere_transparency , 0.1 , predicted_pocket_112 
# predicted pocket number 113
select predicted_pocket_113, chain B and resi 132+521+136+520+133+129+120
set_color predicted_pk_113, [ 0, 255, 255 ] 
color predicted_pk_113 , predicted_pocket_113 
show spheres, predicted_pocket_113 
set sphere_scale , 0.3 , predicted_pocket_113 
set sphere_transparency , 0.1 , predicted_pocket_113 
# predicted pocket number 114
select predicted_pocket_114, chain A and resi 664+671+493+668+667+490+489
set_color predicted_pk_114, [ 0, 255, 255 ] 
color predicted_pk_114 , predicted_pocket_114 
show spheres, predicted_pocket_114 
set sphere_scale , 0.3 , predicted_pocket_114 
set sphere_transparency , 0.1 , predicted_pocket_114 
# predicted pocket number 115
select predicted_pocket_115, chain C and resi 594+301+297+299+296+306+298+318+320+305
set_color predicted_pk_115, [ 0, 255, 255 ] 
color predicted_pk_115 , predicted_pocket_115 
show spheres, predicted_pocket_115 
set sphere_scale , 0.3 , predicted_pocket_115 
set sphere_transparency , 0.1 , predicted_pocket_115 
# predicted pocket number 116
select predicted_pocket_116, chain D and resi 263+270+269+274+271+266+268+267+264
set_color predicted_pk_116, [ 0, 255, 255 ] 
color predicted_pk_116 , predicted_pocket_116 
show spheres, predicted_pocket_116 
set sphere_scale , 0.3 , predicted_pocket_116 
set sphere_transparency , 0.1 , predicted_pocket_116 
# predicted pocket number 117
select predicted_pocket_117, chain D and resi 154+390+152+432+153+450+393+428+148+453+155
set_color predicted_pk_117, [ 0, 255, 255 ] 
color predicted_pk_117 , predicted_pocket_117 
show spheres, predicted_pocket_117 
set sphere_scale , 0.3 , predicted_pocket_117 
set sphere_transparency , 0.1 , predicted_pocket_117 
# predicted pocket number 118
select predicted_pocket_118, chain B and resi 490+668+489+667+671+493+664
set_color predicted_pk_118, [ 0, 255, 255 ] 
color predicted_pk_118 , predicted_pocket_118 
show spheres, predicted_pocket_118 
set sphere_scale , 0.3 , predicted_pocket_118 
set sphere_transparency , 0.1 , predicted_pocket_118 
# predicted pocket number 119
select predicted_pocket_119, chain C and resi 486+237+676+483+333+230+674+675+330+335+482+234+336+484+334
set_color predicted_pk_119, [ 0, 255, 255 ] 
color predicted_pk_119 , predicted_pocket_119 
show spheres, predicted_pocket_119 
set sphere_scale , 0.3 , predicted_pocket_119 
set sphere_transparency , 0.1 , predicted_pocket_119 
# predicted pocket number 120
select predicted_pocket_120, chain A and resi 279+277+247+478+278+249+276+481
set_color predicted_pk_120, [ 0, 255, 255 ] 
color predicted_pk_120 , predicted_pocket_120 
show spheres, predicted_pocket_120 
set sphere_scale , 0.3 , predicted_pocket_120 
set sphere_transparency , 0.1 , predicted_pocket_120 
# predicted pocket number 121
select predicted_pocket_121, chain D and resi 551+558+554+550+557+553
set_color predicted_pk_121, [ 0, 255, 255 ] 
color predicted_pk_121 , predicted_pocket_121 
show spheres, predicted_pocket_121 
set sphere_scale , 0.3 , predicted_pocket_121 
set sphere_transparency , 0.1 , predicted_pocket_121 
# predicted pocket number 122
select predicted_pocket_122, chain D and resi 667+493+490+668+664+489+671
set_color predicted_pk_122, [ 0, 255, 255 ] 
color predicted_pk_122 , predicted_pocket_122 
show spheres, predicted_pocket_122 
set sphere_scale , 0.3 , predicted_pocket_122 
set sphere_transparency , 0.1 , predicted_pocket_122 
# predicted pocket number 123
select predicted_pocket_123, chain A and resi 664+504+493+660+496+500+497+501+656+653+657+667
set_color predicted_pk_123, [ 0, 255, 255 ] 
color predicted_pk_123 , predicted_pocket_123 
show spheres, predicted_pocket_123 
set sphere_scale , 0.3 , predicted_pocket_123 
set sphere_transparency , 0.1 , predicted_pocket_123 
# predicted pocket number 124
select predicted_pocket_124, chain B and resi 170+175+162+179+172+161+426+178
set_color predicted_pk_124, [ 0, 255, 255 ] 
color predicted_pk_124 , predicted_pocket_124 
show spheres, predicted_pocket_124 
set sphere_scale , 0.3 , predicted_pocket_124 
set sphere_transparency , 0.1 , predicted_pocket_124 
# predicted pocket number 125
select predicted_pocket_125, chain D and resi 170+426+175+162+178+179+161
set_color predicted_pk_125, [ 0, 255, 255 ] 
color predicted_pk_125 , predicted_pocket_125 
show spheres, predicted_pocket_125 
set sphere_scale , 0.3 , predicted_pocket_125 
set sphere_transparency , 0.1 , predicted_pocket_125 
# predicted pocket number 126
select predicted_pocket_126, chain A and resi 158+148+146+425+155+429+156+147+159+428
set_color predicted_pk_126, [ 0, 255, 255 ] 
color predicted_pk_126 , predicted_pocket_126 
show spheres, predicted_pocket_126 
set sphere_scale , 0.3 , predicted_pocket_126 
set sphere_transparency , 0.1 , predicted_pocket_126 
# predicted pocket number 127
select predicted_pocket_127, ( chain D and resi 218+216+214+209+208+211+220+206+212+215+219+199+217+205+202+200+198 )  or  ( chain A and resi 202+211+209+218+208+224+206+217+214+199+216+205+212+200+215+198+219+220 ) 
set_color predicted_pk_127, [ 0, 255, 255 ] 
color predicted_pk_127 , predicted_pocket_127 
show spheres, predicted_pocket_127 
set sphere_scale , 0.3 , predicted_pocket_127 
set sphere_transparency , 0.1 , predicted_pocket_127 
# predicted pocket number 128
select predicted_pocket_128, chain A and resi 217+628+579+215+630+629+681+680+575+624+216+578+632+686+625
set_color predicted_pk_128, [ 0, 255, 255 ] 
color predicted_pk_128 , predicted_pocket_128 
show spheres, predicted_pocket_128 
set sphere_scale , 0.3 , predicted_pocket_128 
set sphere_transparency , 0.1 , predicted_pocket_128 
# predicted pocket number 129
select predicted_pocket_129, chain B and resi 284+252+244+246+249+283+248+285+247+250
set_color predicted_pk_129, [ 0, 255, 255 ] 
color predicted_pk_129 , predicted_pocket_129 
show spheres, predicted_pocket_129 
set sphere_scale , 0.3 , predicted_pocket_129 
set sphere_transparency , 0.1 , predicted_pocket_129 
# predicted pocket number 130
select predicted_pocket_130, chain B and resi 65+111+29+27+131+34+127+67
set_color predicted_pk_130, [ 0, 255, 255 ] 
color predicted_pk_130 , predicted_pocket_130 
show spheres, predicted_pocket_130 
set sphere_scale , 0.3 , predicted_pocket_130 
set sphere_transparency , 0.1 , predicted_pocket_130 
# predicted pocket number 131
select predicted_pocket_131, chain D and resi 202+609+608+604+200+592+605+201
set_color predicted_pk_131, [ 0, 255, 255 ] 
color predicted_pk_131 , predicted_pocket_131 
show spheres, predicted_pocket_131 
set sphere_scale , 0.3 , predicted_pocket_131 
set sphere_transparency , 0.1 , predicted_pocket_131 
# predicted pocket number 132
select predicted_pocket_132, ( chain B and resi 50+51+53+52+42 )  or  ( chain A and resi 655+651+654+658 ) 
set_color predicted_pk_132, [ 0, 255, 255 ] 
color predicted_pk_132 , predicted_pocket_132 
show spheres, predicted_pocket_132 
set sphere_scale , 0.3 , predicted_pocket_132 
set sphere_transparency , 0.1 , predicted_pocket_132 
# predicted pocket number 133
select predicted_pocket_133, chain B and resi 217+625+628+629+578+624+686+681+630+579+575+680+215+216
set_color predicted_pk_133, [ 0, 255, 255 ] 
color predicted_pk_133 , predicted_pocket_133 
show spheres, predicted_pocket_133 
set sphere_scale , 0.3 , predicted_pocket_133 
set sphere_transparency , 0.1 , predicted_pocket_133 
# predicted pocket number 134
select predicted_pocket_134, chain C and resi 216+578+630+579+628+624+680+625+575+681+629+686+217+215+571
set_color predicted_pk_134, [ 0, 255, 255 ] 
color predicted_pk_134 , predicted_pocket_134 
show spheres, predicted_pocket_134 
set sphere_scale , 0.3 , predicted_pocket_134 
set sphere_transparency , 0.1 , predicted_pocket_134 
# predicted pocket number 135
select predicted_pocket_135, chain A and resi 244+285+252+387+459+288+378+246+287+283+243+284+474
set_color predicted_pk_135, [ 0, 255, 255 ] 
color predicted_pk_135 , predicted_pocket_135 
show spheres, predicted_pocket_135 
set sphere_scale , 0.3 , predicted_pocket_135 
set sphere_transparency , 0.1 , predicted_pocket_135 
# predicted pocket number 136
select predicted_pocket_136, ( chain A and resi 186+622+623+183+626+189+185+430+440+619+437+441+179+182 )  or  ( chain C and resi 198 ) 
set_color predicted_pk_136, [ 0, 255, 255 ] 
color predicted_pk_136 , predicted_pocket_136 
show spheres, predicted_pocket_136 
set sphere_scale , 0.3 , predicted_pocket_136 
set sphere_transparency , 0.1 , predicted_pocket_136 
# predicted pocket number 137
select predicted_pocket_137, chain D and resi 205+203+226+204+604+365+227
set_color predicted_pk_137, [ 0, 255, 255 ] 
color predicted_pk_137 , predicted_pocket_137 
show spheres, predicted_pocket_137 
set sphere_scale , 0.3 , predicted_pocket_137 
set sphere_transparency , 0.1 , predicted_pocket_137 
# predicted pocket number 138
select predicted_pocket_138, chain B and resi 322+298+299+321+320+304+292+300+444+294+289
set_color predicted_pk_138, [ 0, 255, 255 ] 
color predicted_pk_138 , predicted_pocket_138 
show spheres, predicted_pocket_138 
set sphere_scale , 0.3 , predicted_pocket_138 
set sphere_transparency , 0.1 , predicted_pocket_138 
# predicted pocket number 139
select predicted_pocket_139, chain B and resi 660+500+657+656+501+496+653+504+497+493+664
set_color predicted_pk_139, [ 0, 255, 255 ] 
color predicted_pk_139 , predicted_pocket_139 
show spheres, predicted_pocket_139 
set sphere_scale , 0.3 , predicted_pocket_139 
set sphere_transparency , 0.1 , predicted_pocket_139 
# predicted pocket number 140
select predicted_pocket_140, chain B and resi 317+616+316+318+615+592+319+613
set_color predicted_pk_140, [ 0, 255, 255 ] 
color predicted_pk_140 , predicted_pocket_140 
show spheres, predicted_pocket_140 
set sphere_scale , 0.3 , predicted_pocket_140 
set sphere_transparency , 0.1 , predicted_pocket_140 
# predicted pocket number 141
select predicted_pocket_141, chain B and resi 537+542+535+531+530+532+536
set_color predicted_pk_141, [ 0, 255, 255 ] 
color predicted_pk_141 , predicted_pocket_141 
show spheres, predicted_pocket_141 
set sphere_scale , 0.3 , predicted_pocket_141 
set sphere_transparency , 0.1 , predicted_pocket_141 
# predicted pocket number 142
select predicted_pocket_142, chain D and resi 511+656+508+649+652+504+653+507
set_color predicted_pk_142, [ 0, 255, 255 ] 
color predicted_pk_142 , predicted_pocket_142 
show spheres, predicted_pocket_142 
set sphere_scale , 0.3 , predicted_pocket_142 
set sphere_transparency , 0.1 , predicted_pocket_142 
# predicted pocket number 143
select predicted_pocket_143, chain D and resi 615+616+316+592+317+318+613+319
set_color predicted_pk_143, [ 0, 255, 255 ] 
color predicted_pk_143 , predicted_pocket_143 
show spheres, predicted_pocket_143 
set sphere_scale , 0.3 , predicted_pocket_143 
set sphere_transparency , 0.1 , predicted_pocket_143 
# predicted pocket number 144
select predicted_pocket_144, chain C and resi 616+316+318+319+592+615+317+613
set_color predicted_pk_144, [ 0, 255, 255 ] 
color predicted_pk_144 , predicted_pocket_144 
show spheres, predicted_pocket_144 
set sphere_scale , 0.3 , predicted_pocket_144 
set sphere_transparency , 0.1 , predicted_pocket_144 
# predicted pocket number 145
select predicted_pocket_145, chain A and resi 593+609+616+319+317+318+320+592
set_color predicted_pk_145, [ 0, 255, 255 ] 
color predicted_pk_145 , predicted_pocket_145 
show spheres, predicted_pocket_145 
set sphere_scale , 0.3 , predicted_pocket_145 
set sphere_transparency , 0.1 , predicted_pocket_145 
# predicted pocket number 146
select predicted_pocket_146, chain B and resi 29+31+125+33+126+64+34+30+127
set_color predicted_pk_146, [ 0, 255, 255 ] 
color predicted_pk_146 , predicted_pocket_146 
show spheres, predicted_pocket_146 
set sphere_scale , 0.3 , predicted_pocket_146 
set sphere_transparency , 0.1 , predicted_pocket_146 
# predicted pocket number 147
select predicted_pocket_147, ( chain C and resi 211+209+208+212+205 )  or  ( chain B and resi 212+208+209 ) 
set_color predicted_pk_147, [ 0, 255, 255 ] 
color predicted_pk_147 , predicted_pocket_147 
show spheres, predicted_pocket_147 
set sphere_scale , 0.3 , predicted_pocket_147 
set sphere_transparency , 0.1 , predicted_pocket_147 
# predicted pocket number 148
select predicted_pocket_148, ( chain D and resi 193+190+186+189+197+194 )  or  ( chain B and resi 189+194+197+190+186+193 ) 
set_color predicted_pk_148, [ 0, 255, 255 ] 
color predicted_pk_148 , predicted_pocket_148 
show spheres, predicted_pocket_148 
set sphere_scale , 0.3 , predicted_pocket_148 
set sphere_transparency , 0.1 , predicted_pocket_148 
select TP, true_pocket* and predicted_pocket*
color green, TP
