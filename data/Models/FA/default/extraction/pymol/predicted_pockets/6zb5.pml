load ../../../PDB/pdb6zb5.ent
# ligand_0
select ligand_0, chain C and resi 1407 
set_color lg_0, [ 255, 0, 0 ] 
color lg_0 , ligand_0 
show spheres, ligand_0 
set sphere_scale , 1 , ligand_0 
set sphere_transparency , 0.1 , ligand_0 
# ligand_1
select ligand_1, chain B and resi 1309 
set_color lg_1, [ 255, 0, 0 ] 
color lg_1 , ligand_1 
show spheres, ligand_1 
set sphere_scale , 1 , ligand_1 
set sphere_transparency , 0.1 , ligand_1 
# ligand_2
select ligand_2, chain B and resi 1310 
set_color lg_2, [ 255, 0, 0 ] 
color lg_2 , ligand_2 
show spheres, ligand_2 
set sphere_scale , 1 , ligand_2 
set sphere_transparency , 0.1 , ligand_2 
# true pocket number 0
select true_pocket_0, ( chain C and resi 408 )  or  ( chain A and resi 395+365+513+377+374+392+363+515 ) 
set_color true_pk_0, [ 0, 0, 255 ] 
color true_pk_0 , true_pocket_0 
show spheres, true_pocket_0 
set sphere_scale , 0.3 , true_pocket_0 
set sphere_transparency , 0.1 , true_pocket_0 
# true pocket number 1
select true_pocket_1, ( chain C and resi 338+363+377+392+369+387+515+513 )  or  ( chain B and resi 409+416+417 ) 
set_color true_pk_1, [ 0, 0, 255 ] 
color true_pk_1 , true_pocket_1 
show spheres, true_pocket_1 
set sphere_scale , 0.3 , true_pocket_1 
set sphere_transparency , 0.1 , true_pocket_1 
# true pocket number 2
select true_pocket_2, ( chain B and resi 369+387+395+374+377+365+358+338+392 )  or  ( chain A and resi 415+416 ) 
set_color true_pk_2, [ 0, 0, 255 ] 
color true_pk_2 , true_pocket_2 
show spheres, true_pocket_2 
set sphere_scale , 0.3 , true_pocket_2 
set sphere_transparency , 0.1 , true_pocket_2 
# predicted pocket number 0
select predicted_pocket_0, ( chain A and resi 907+1044+1066+908+1033+909+1043+1037+1045+904+1028+712+1034+1038+1032+905+886+1035+887+1064+906+910+1105+1036+901+1104+883+1031 )  or  ( chain C and resi 1088+1104+1036+910+1032+1043+1086+1037+1033+1103+901+1040+1045+1090+907+905+1034+904+887+1039+886+906+883+909+1038+1118+1031+1105+1063+1044+1035+1087+1041+1028+1089 )  or  ( chain B and resi 887+1035+1038+906+1036+1045+1089+1037+1034+904+1044+1090+1043+910+1032+1118+1031+901+1033+1088+886+905+1104+883+1087+1028+907 ) 
set_color predicted_pk_0, [ 0, 255, 255 ] 
color predicted_pk_0 , predicted_pocket_0 
show spheres, predicted_pocket_0 
set sphere_scale , 0.3 , predicted_pocket_0 
set sphere_transparency , 0.1 , predicted_pocket_0 
# predicted pocket number 1
select predicted_pocket_1, ( chain B and resi 732+754+762+761+757+856+742+743+736+734+741+740+766+751+765+747+733+758+744 )  or  ( chain A and resi 274+50+276+302+315+301+317+316+298+313+292+321+319+275+299+303+312+304+314+291 ) 
set_color predicted_pk_1, [ 0, 255, 255 ] 
color predicted_pk_1 , predicted_pocket_1 
show spheres, predicted_pocket_1 
set sphere_scale , 0.3 , predicted_pocket_1 
set sphere_transparency , 0.1 , predicted_pocket_1 
# predicted pocket number 2
select predicted_pocket_2, ( chain A and resi 589+556+588+587+557+586+568+569+572+554+555+574+570 )  or  ( chain B and resi 281+837+849+853+46+960+840+845+47+848+846+45+839+852 ) 
set_color predicted_pk_2, [ 0, 255, 255 ] 
color predicted_pk_2 , predicted_pocket_2 
show spheres, predicted_pocket_2 
set sphere_scale , 0.3 , predicted_pocket_2 
set sphere_transparency , 0.1 , predicted_pocket_2 
# predicted pocket number 3
select predicted_pocket_3, ( chain A and resi 846+43+837+45+47+845+46+849+853+839+282+960+852+281+848+840 )  or  ( chain C and resi 589+572+558+570+569+568+554+587+557+586+574+556+555+588 ) 
set_color predicted_pk_3, [ 0, 255, 255 ] 
color predicted_pk_3 , predicted_pocket_3 
show spheres, predicted_pocket_3 
set sphere_scale , 0.3 , predicted_pocket_3 
set sphere_transparency , 0.1 , predicted_pocket_3 
# predicted pocket number 4
select predicted_pocket_4, ( chain C and resi 1009+760+756+955+959+999+1003+944+1018+996+1005+725+1004+1000+1010+762+992+763+954+759+962+1002+998+1011+967+1015+947+995+951+948+753+1006+958+1014+1007 )  or  ( chain B and resi 959+1007+967+962+958+955+1010+753+999+995+1003+1011+1000+1004+951+1006+954+996+1002+992 )  or  ( chain A and resi 756+1003+760+762+759+967+770+763+999+766+1016+753+773+996+1009+767+998+1006+1002+994+995+992 ) 
set_color predicted_pk_4, [ 0, 255, 255 ] 
color predicted_pk_4 , predicted_pocket_4 
show spheres, predicted_pocket_4 
set sphere_scale , 0.3 , predicted_pocket_4 
set sphere_transparency , 0.1 , predicted_pocket_4 
# predicted pocket number 5
select predicted_pocket_5, ( chain A and resi 850+956+772+830+860+859+949+864+957+857+731+730+867+862+729+863+952+861+775+728+776+727+1054+825+858+829+953+847+1055+771 )  or  ( chain C and resi 646+668 ) 
set_color predicted_pk_5, [ 0, 255, 255 ] 
color predicted_pk_5 , predicted_pocket_5 
show spheres, predicted_pocket_5 
set sphere_scale , 0.3 , predicted_pocket_5 
set sphere_transparency , 0.1 , predicted_pocket_5 
# predicted pocket number 6
select predicted_pocket_6, ( chain B and resi 956+857+823+1055+728+865+825+830+858+862+1054+729+949+847+850+829+863+859+864+953+730+860+731+952+820 )  or  ( chain A and resi 646+668 ) 
set_color predicted_pk_6, [ 0, 255, 255 ] 
color predicted_pk_6 , predicted_pocket_6 
show spheres, predicted_pocket_6 
set sphere_scale , 0.3 , predicted_pocket_6 
set sphere_transparency , 0.1 , predicted_pocket_6 
# predicted pocket number 7
select predicted_pocket_7, ( chain A and resi 50+48+961+966+302+965+49+964+304+958+303+962 )  or  ( chain B and resi 754+762+753+751+752+755+759+758 )  or  ( chain C and resi 569+571 ) 
set_color predicted_pk_7, [ 0, 255, 255 ] 
color predicted_pk_7 , predicted_pocket_7 
show spheres, predicted_pocket_7 
set sphere_scale , 0.3 , predicted_pocket_7 
set sphere_transparency , 0.1 , predicted_pocket_7 
# predicted pocket number 8
select predicted_pocket_8, ( chain C and resi 298+302+301+291+304+274+292+50+321+316+319 )  or  ( chain A and resi 754+751+744+741+758+736+742+743+747 ) 
set_color predicted_pk_8, [ 0, 255, 255 ] 
color predicted_pk_8 , predicted_pocket_8 
show spheres, predicted_pocket_8 
set sphere_scale , 0.3 , predicted_pocket_8 
set sphere_transparency , 0.1 , predicted_pocket_8 
# predicted pocket number 9
select predicted_pocket_9, ( chain B and resi 298+314+315+316+317+302 )  or  ( chain C and resi 736+734+732+758+733+757+751+735+754+761 ) 
set_color predicted_pk_9, [ 0, 255, 255 ] 
color predicted_pk_9 , predicted_pocket_9 
show spheres, predicted_pocket_9 
set sphere_scale , 0.3 , predicted_pocket_9 
set sphere_transparency , 0.1 , predicted_pocket_9 
# predicted pocket number 10
select predicted_pocket_10, ( chain C and resi 1009+777+767+1023+773+1024+762+763+1020+781+1027+1016+1028+766+770 )  or  ( chain B and resi 1039+1025+1007+1021+725+1017+1036+1018+944+1010+1014+724+722+1011+1037+951+1038+948+947+1015 ) 
set_color predicted_pk_10, [ 0, 255, 255 ] 
color predicted_pk_10 , predicted_pocket_10 
show spheres, predicted_pocket_10 
set sphere_scale , 0.3 , predicted_pocket_10 
set sphere_transparency , 0.1 , predicted_pocket_10 
# predicted pocket number 11
select predicted_pocket_11, ( chain A and resi 540+572+548+547+549 )  or  ( chain B and resi 743+741+740+745+742+978+744+975+974+973 ) 
set_color predicted_pk_11, [ 0, 255, 255 ] 
color predicted_pk_11 , predicted_pocket_11 
show spheres, predicted_pocket_11 
set sphere_scale , 0.3 , predicted_pocket_11 
set sphere_transparency , 0.1 , predicted_pocket_11 
# predicted pocket number 12
select predicted_pocket_12, ( chain A and resi 1101+1104+1108+1089+1087+907+1102+904+909+1116+1103+1110+908+1090 )  or  ( chain C and resi 1118+1088 ) 
set_color predicted_pk_12, [ 0, 255, 255 ] 
color predicted_pk_12 , predicted_pocket_12 
show spheres, predicted_pocket_12 
set sphere_scale , 0.3 , predicted_pocket_12 
set sphere_transparency , 0.1 , predicted_pocket_12 
# predicted pocket number 13
select predicted_pocket_13, ( chain B and resi 301+292+291+274+319+304+298+316+302 )  or  ( chain C and resi 736+758+747+751+754 ) 
set_color predicted_pk_13, [ 0, 255, 255 ] 
color predicted_pk_13 , predicted_pocket_13 
show spheres, predicted_pocket_13 
set sphere_scale , 0.3 , predicted_pocket_13 
set sphere_transparency , 0.1 , predicted_pocket_13 
# predicted pocket number 14
select predicted_pocket_14, ( chain B and resi 589+587+573+572+588+548+549+590 )  or  ( chain C and resi 973+743+852+740+741+853+975+974+742 ) 
set_color predicted_pk_14, [ 0, 255, 255 ] 
color predicted_pk_14 , predicted_pocket_14 
show spheres, predicted_pocket_14 
set sphere_scale , 0.3 , predicted_pocket_14 
set sphere_transparency , 0.1 , predicted_pocket_14 
# predicted pocket number 15
select predicted_pocket_15, ( chain B and resi 853+741+975+852+742 )  or  ( chain A and resi 573+589+588+550+590+572+587+541+548+547+549 ) 
set_color predicted_pk_15, [ 0, 255, 255 ] 
color predicted_pk_15 , predicted_pocket_15 
show spheres, predicted_pocket_15 
set sphere_scale , 0.3 , predicted_pocket_15 
set sphere_transparency , 0.1 , predicted_pocket_15 
# predicted pocket number 16
select predicted_pocket_16, ( chain A and resi 761+734+757+758+732+733+735 )  or  ( chain C and resi 298+313+299+314+315+302+316 ) 
set_color predicted_pk_16, [ 0, 255, 255 ] 
color predicted_pk_16 , predicted_pocket_16 
show spheres, predicted_pocket_16 
set sphere_scale , 0.3 , predicted_pocket_16 
set sphere_transparency , 0.1 , predicted_pocket_16 
# predicted pocket number 17
select predicted_pocket_17, ( chain A and resi 540+542+528+541+386+326+548+547+325+549+327 )  or  ( chain B and resi 745+978+975 ) 
set_color predicted_pk_17, [ 0, 255, 255 ] 
color predicted_pk_17 , predicted_pocket_17 
show spheres, predicted_pocket_17 
set sphere_scale , 0.3 , predicted_pocket_17 
set sphere_transparency , 0.1 , predicted_pocket_17 
# predicted pocket number 18
select predicted_pocket_18, chain C and resi 1108+909+1110+1089+1102+1087+1103+1090+1116+1101
set_color predicted_pk_18, [ 0, 255, 255 ] 
color predicted_pk_18 , predicted_pocket_18 
show spheres, predicted_pocket_18 
set sphere_scale , 0.3 , predicted_pocket_18 
set sphere_transparency , 0.1 , predicted_pocket_18 
# predicted pocket number 19
select predicted_pocket_19, ( chain C and resi 469+472+457+456+467+459+454+458+473+471 )  or  ( chain A and resi 108+234+113+109+114 ) 
set_color predicted_pk_19, [ 0, 255, 255 ] 
color predicted_pk_19 , predicted_pocket_19 
show spheres, predicted_pocket_19 
set sphere_scale , 0.3 , predicted_pocket_19 
set sphere_transparency , 0.1 , predicted_pocket_19 
# predicted pocket number 20
select predicted_pocket_20, ( chain B and resi 1108+909+1089+1087+1102+1110+910+904+1101+1090+1103+907+1116+908 )  or  ( chain A and resi 1088+1104+1089+1118+1087+1090 ) 
set_color predicted_pk_20, [ 0, 255, 255 ] 
color predicted_pk_20 , predicted_pocket_20 
show spheres, predicted_pocket_20 
set sphere_scale , 0.3 , predicted_pocket_20 
set sphere_transparency , 0.1 , predicted_pocket_20 
# predicted pocket number 21
select predicted_pocket_21, ( chain A and resi 974+740+744+741+743+745+975+742 )  or  ( chain C and resi 549+547+548+540 ) 
set_color predicted_pk_21, [ 0, 255, 255 ] 
color predicted_pk_21 , predicted_pocket_21 
show spheres, predicted_pocket_21 
set sphere_scale , 0.3 , predicted_pocket_21 
set sphere_transparency , 0.1 , predicted_pocket_21 
# predicted pocket number 22
select predicted_pocket_22, ( chain A and resi 1091+710+1104+711+709+1105 )  or  ( chain B and resi 893+898+884+883+902+901+882+881+892+891 ) 
set_color predicted_pk_22, [ 0, 255, 255 ] 
color predicted_pk_22 , predicted_pocket_22 
show spheres, predicted_pocket_22 
set sphere_scale , 0.3 , predicted_pocket_22 
set sphere_transparency , 0.1 , predicted_pocket_22 
# predicted pocket number 23
select predicted_pocket_23, ( chain C and resi 568+589+549+574+541+587+573+588+572 )  or  ( chain A and resi 853+852+741+975+742 ) 
set_color predicted_pk_23, [ 0, 255, 255 ] 
color predicted_pk_23 , predicted_pocket_23 
show spheres, predicted_pocket_23 
set sphere_scale , 0.3 , predicted_pocket_23 
set sphere_transparency , 0.1 , predicted_pocket_23 
# predicted pocket number 24
select predicted_pocket_24, ( chain A and resi 373+437+440+503+506+439+508 )  or  ( chain C and resi 502+500+501+405+504+503+505 ) 
set_color predicted_pk_24, [ 0, 255, 255 ] 
color predicted_pk_24 , predicted_pocket_24 
show spheres, predicted_pocket_24 
set sphere_scale , 0.3 , predicted_pocket_24 
set sphere_transparency , 0.1 , predicted_pocket_24 
# predicted pocket number 25
select predicted_pocket_25, chain A and resi 315+316+293+294+298+636+291+292+595+319+295
set_color predicted_pk_25, [ 0, 255, 255 ] 
color predicted_pk_25 , predicted_pocket_25 
show spheres, predicted_pocket_25 
set sphere_scale , 0.3 , predicted_pocket_25 
set sphere_transparency , 0.1 , predicted_pocket_25 
# predicted pocket number 26
select predicted_pocket_26, ( chain C and resi 1037+1039+722+1021+1038+1036+1025 )  or  ( chain A and resi 1023+781+1024+1028+1020+1027+777 ) 
set_color predicted_pk_26, [ 0, 255, 255 ] 
color predicted_pk_26 , predicted_pocket_26 
show spheres, predicted_pocket_26 
set sphere_scale , 0.3 , predicted_pocket_26 
set sphere_transparency , 0.1 , predicted_pocket_26 
# predicted pocket number 27
select predicted_pocket_27, ( chain C and resi 469+457+467+466+468+465 )  or  ( chain A and resi 108+234+132+113+233+114+115 ) 
set_color predicted_pk_27, [ 0, 255, 255 ] 
color predicted_pk_27 , predicted_pocket_27 
show spheres, predicted_pocket_27 
set sphere_scale , 0.3 , predicted_pocket_27 
set sphere_transparency , 0.1 , predicted_pocket_27 
# predicted pocket number 28
select predicted_pocket_28, ( chain C and resi 462+464+463+465 )  or  ( chain A and resi 197+88+198+234+87+231+233+235+196+199+232 ) 
set_color predicted_pk_28, [ 0, 255, 255 ] 
color predicted_pk_28 , predicted_pocket_28 
show spheres, predicted_pocket_28 
set sphere_scale , 0.3 , predicted_pocket_28 
set sphere_transparency , 0.1 , predicted_pocket_28 
# predicted pocket number 29
select predicted_pocket_29, chain C and resi 595+298+295+610+636+294+291+292+315+316+293
set_color predicted_pk_29, [ 0, 255, 255 ] 
color predicted_pk_29 , predicted_pocket_29 
show spheres, predicted_pocket_29 
set sphere_scale , 0.3 , predicted_pocket_29 
set sphere_transparency , 0.1 , predicted_pocket_29 
# predicted pocket number 30
select predicted_pocket_30, chain B and resi 775+861+1056+1052+772+779+1055+728+727+771+726+862+1054+867+1053+776+812+864+730+860+820
set_color predicted_pk_30, [ 0, 255, 255 ] 
color predicted_pk_30 , predicted_pocket_30 
show spheres, predicted_pocket_30 
set sphere_scale , 0.3 , predicted_pocket_30 
set sphere_transparency , 0.1 , predicted_pocket_30 
# predicted pocket number 31
select predicted_pocket_31, ( chain C and resi 709+1105+710+1104+711 )  or  ( chain A and resi 891+892+883+898+884+893+882+881+902+901 ) 
set_color predicted_pk_31, [ 0, 255, 255 ] 
color predicted_pk_31 , predicted_pocket_31 
show spheres, predicted_pocket_31 
set sphere_scale , 0.3 , predicted_pocket_31 
set sphere_transparency , 0.1 , predicted_pocket_31 
# predicted pocket number 32
select predicted_pocket_32, ( chain B and resi 1020+781+1023+1028+1027+777+1024 )  or  ( chain A and resi 1036+1037+1039+1025+1038+722+1021 ) 
set_color predicted_pk_32, [ 0, 255, 255 ] 
color predicted_pk_32 , predicted_pocket_32 
show spheres, predicted_pocket_32 
set sphere_scale , 0.3 , predicted_pocket_32 
set sphere_transparency , 0.1 , predicted_pocket_32 
# predicted pocket number 33
select predicted_pocket_33, ( chain C and resi 113+114+109+234+108 )  or  ( chain B and resi 457+459+467+469+471+458 ) 
set_color predicted_pk_33, [ 0, 255, 255 ] 
color predicted_pk_33 , predicted_pocket_33 
show spheres, predicted_pocket_33 
set sphere_scale , 0.3 , predicted_pocket_33 
set sphere_transparency , 0.1 , predicted_pocket_33 
# predicted pocket number 34
select predicted_pocket_34, ( chain A and resi 1018+1007+1003+1021+1014+1008+954+959+1017+1000+724+1010+725+958+1011+951+1004+955+962+944 )  or  ( chain B and resi 762+767+774+1020+773+770+766+756+763+1009+1016+759+777 ) 
set_color predicted_pk_34, [ 0, 255, 255 ] 
color predicted_pk_34 , predicted_pocket_34 
show spheres, predicted_pocket_34 
set sphere_scale , 0.3 , predicted_pocket_34 
set sphere_transparency , 0.1 , predicted_pocket_34 
# predicted pocket number 35
select predicted_pocket_35, ( chain C and resi 113+115+114+234+108+132+233 )  or  ( chain B and resi 466+457+467+469+465+468 ) 
set_color predicted_pk_35, [ 0, 255, 255 ] 
color predicted_pk_35 , predicted_pocket_35 
show spheres, predicted_pocket_35 
set sphere_scale , 0.3 , predicted_pocket_35 
set sphere_transparency , 0.1 , predicted_pocket_35 
# predicted pocket number 36
select predicted_pocket_36, chain B and resi 33+606+59+306+289+290+288+297+300+287+293+294+58
set_color predicted_pk_36, [ 0, 255, 255 ] 
color predicted_pk_36 , predicted_pocket_36 
show spheres, predicted_pocket_36 
set sphere_scale , 0.3 , predicted_pocket_36 
set sphere_transparency , 0.1 , predicted_pocket_36 
# predicted pocket number 37
select predicted_pocket_37, ( chain A and resi 467+457+465+468+466+469 )  or  ( chain B and resi 233+234+114+115+113+108+132 ) 
set_color predicted_pk_37, [ 0, 255, 255 ] 
color predicted_pk_37 , predicted_pocket_37 
show spheres, predicted_pocket_37 
set sphere_scale , 0.3 , predicted_pocket_37 
set sphere_transparency , 0.1 , predicted_pocket_37 
# predicted pocket number 38
select predicted_pocket_38, ( chain A and resi 707+704+1075+1127+706+1128+1076+1074 )  or  ( chain B and resi 895+914+896+894+897+793+795+917 ) 
set_color predicted_pk_38, [ 0, 255, 255 ] 
color predicted_pk_38 , predicted_pocket_38 
show spheres, predicted_pocket_38 
set sphere_scale , 0.3 , predicted_pocket_38 
set sphere_transparency , 0.1 , predicted_pocket_38 
# predicted pocket number 39
select predicted_pocket_39, chain A and resi 1030+1048+883+1032+1031+1049+1029+882+1047+902+878
set_color predicted_pk_39, [ 0, 255, 255 ] 
color predicted_pk_39 , predicted_pocket_39 
show spheres, predicted_pocket_39 
set sphere_scale , 0.3 , predicted_pocket_39 
set sphere_transparency , 0.1 , predicted_pocket_39 
# predicted pocket number 40
select predicted_pocket_40, chain A and resi 524+395+365+361+513+358+338+337+387+342+341+392+336+363+515
set_color predicted_pk_40, [ 0, 255, 255 ] 
color predicted_pk_40 , predicted_pocket_40 
show spheres, predicted_pocket_40 
set sphere_scale , 0.3 , predicted_pocket_40 
set sphere_transparency , 0.1 , predicted_pocket_40 
# predicted pocket number 41
select predicted_pocket_41, ( chain C and resi 1076+707+1074+1075+1127+1128+706+704 )  or  ( chain A and resi 793+897+795+894+917+914+895+896 ) 
set_color predicted_pk_41, [ 0, 255, 255 ] 
color predicted_pk_41 , predicted_pocket_41 
show spheres, predicted_pocket_41 
set sphere_scale , 0.3 , predicted_pocket_41 
set sphere_transparency , 0.1 , predicted_pocket_41 
# predicted pocket number 42
select predicted_pocket_42, ( chain B and resi 857+856+851+830+769+858+829+859+768+765+730+831 )  or  ( chain A and resi 614+646+666+596+647+613+611+665+314+312 ) 
set_color predicted_pk_42, [ 0, 255, 255 ] 
color predicted_pk_42 , predicted_pocket_42 
show spheres, predicted_pocket_42 
set sphere_scale , 0.3 , predicted_pocket_42 
set sphere_transparency , 0.1 , predicted_pocket_42 
# predicted pocket number 43
select predicted_pocket_43, chain C and resi 524+336+363+338+341+337+392+397+342+361+513+515+358+395
set_color predicted_pk_43, [ 0, 255, 255 ] 
color predicted_pk_43 , predicted_pocket_43 
show spheres, predicted_pocket_43 
set sphere_scale , 0.3 , predicted_pocket_43 
set sphere_transparency , 0.1 , predicted_pocket_43 
# predicted pocket number 44
select predicted_pocket_44, ( chain A and resi 593+613+594+595+592+612+318+615+614+634 )  or  ( chain B and resi 834 ) 
set_color predicted_pk_44, [ 0, 255, 255 ] 
color predicted_pk_44 , predicted_pocket_44 
show spheres, predicted_pocket_44 
set sphere_scale , 0.3 , predicted_pocket_44 
set sphere_transparency , 0.1 , predicted_pocket_44 
# predicted pocket number 45
select predicted_pocket_45, ( chain B and resi 502+503+504+405+505 )  or  ( chain C and resi 373+375+508+437+506+503+436 ) 
set_color predicted_pk_45, [ 0, 255, 255 ] 
color predicted_pk_45 , predicted_pocket_45 
show spheres, predicted_pocket_45 
set sphere_scale , 0.3 , predicted_pocket_45 
set sphere_transparency , 0.1 , predicted_pocket_45 
# predicted pocket number 46
select predicted_pocket_46, ( chain B and resi 49+48+965+964+961+304+50 )  or  ( chain C and resi 752+753+751+755+754 )  or  ( chain A and resi 569 ) 
set_color predicted_pk_46, [ 0, 255, 255 ] 
color predicted_pk_46 , predicted_pocket_46 
show spheres, predicted_pocket_46 
set sphere_scale , 0.3 , predicted_pocket_46 
set sphere_transparency , 0.1 , predicted_pocket_46 
# predicted pocket number 47
select predicted_pocket_47, ( chain B and resi 965+962+302+958+961+303+304 )  or  ( chain C and resi 756+758+753+755+762+754 ) 
set_color predicted_pk_47, [ 0, 255, 255 ] 
color predicted_pk_47 , predicted_pocket_47 
show spheres, predicted_pocket_47 
set sphere_scale , 0.3 , predicted_pocket_47 
set sphere_transparency , 0.1 , predicted_pocket_47 
# predicted pocket number 48
select predicted_pocket_48, ( chain C and resi 723+1021+722+1014+724+725+1017+1018+944 )  or  ( chain A and resi 773+1016+1020+777 ) 
set_color predicted_pk_48, [ 0, 255, 255 ] 
color predicted_pk_48 , predicted_pocket_48 
show spheres, predicted_pocket_48 
set sphere_scale , 0.3 , predicted_pocket_48 
set sphere_transparency , 0.1 , predicted_pocket_48 
# predicted pocket number 49
select predicted_pocket_49, ( chain B and resi 864+811+806+876+865+872+868+812+809+786+869+810+873+787+788+785+803+804 )  or  ( chain A and resi 699 ) 
set_color predicted_pk_49, [ 0, 255, 255 ] 
color predicted_pk_49 , predicted_pocket_49 
show spheres, predicted_pocket_49 
set sphere_scale , 0.3 , predicted_pocket_49 
set sphere_transparency , 0.1 , predicted_pocket_49 
# predicted pocket number 50
select predicted_pocket_50, chain C and resi 373+372+374+438+509+437+371+342+436+343+441
set_color predicted_pk_50, [ 0, 255, 255 ] 
color predicted_pk_50 , predicted_pocket_50 
show spheres, predicted_pocket_50 
set sphere_scale , 0.3 , predicted_pocket_50 
set sphere_transparency , 0.1 , predicted_pocket_50 
# predicted pocket number 51
select predicted_pocket_51, ( chain C and resi 849+852+960+839+853+848 )  or  ( chain B and resi 589+587+572+569+588+568+570+574 ) 
set_color predicted_pk_51, [ 0, 255, 255 ] 
color predicted_pk_51 , predicted_pocket_51 
show spheres, predicted_pocket_51 
set sphere_scale , 0.3 , predicted_pocket_51 
set sphere_transparency , 0.1 , predicted_pocket_51 
# predicted pocket number 52
select predicted_pocket_52, ( chain C and resi 514+516+464+430+426+429+515+428 )  or  ( chain A and resi 197+198+200+202 ) 
set_color predicted_pk_52, [ 0, 255, 255 ] 
color predicted_pk_52 , predicted_pocket_52 
show spheres, predicted_pocket_52 
set sphere_scale , 0.3 , predicted_pocket_52 
set sphere_transparency , 0.1 , predicted_pocket_52 
# predicted pocket number 53
select predicted_pocket_53, chain B and resi 1004+732+959+956+764+850+855+857+733+731+856
set_color predicted_pk_53, [ 0, 255, 255 ] 
color predicted_pk_53 , predicted_pocket_53 
show spheres, predicted_pocket_53 
set sphere_scale , 0.3 , predicted_pocket_53 
set sphere_transparency , 0.1 , predicted_pocket_53 
# predicted pocket number 54
select predicted_pocket_54, ( chain C and resi 881+883+892+902+884+891+882+901+898+893 )  or  ( chain B and resi 709+1091+711+710+1105+1104 ) 
set_color predicted_pk_54, [ 0, 255, 255 ] 
color predicted_pk_54 , predicted_pocket_54 
show spheres, predicted_pocket_54 
set sphere_scale , 0.3 , predicted_pocket_54 
set sphere_transparency , 0.1 , predicted_pocket_54 
# predicted pocket number 55
select predicted_pocket_55, ( chain A and resi 1122+1121+1126+1086+1125+1120+1084 )  or  ( chain B and resi 914+911+915+916 ) 
set_color predicted_pk_55, [ 0, 255, 255 ] 
color predicted_pk_55 , predicted_pocket_55 
show spheres, predicted_pocket_55 
set sphere_scale , 0.3 , predicted_pocket_55 
set sphere_transparency , 0.1 , predicted_pocket_55 
# predicted pocket number 56
select predicted_pocket_56, ( chain C and resi 570+572 )  or  ( chain A and resi 974+853+740+972+973+737+741+738+739+963+997 ) 
set_color predicted_pk_56, [ 0, 255, 255 ] 
color predicted_pk_56 , predicted_pocket_56 
show spheres, predicted_pocket_56 
set sphere_scale , 0.3 , predicted_pocket_56 
set sphere_transparency , 0.1 , predicted_pocket_56 
# predicted pocket number 57
select predicted_pocket_57, chain B and resi 292+291+319+636+295+273+293+298+316+294+321
set_color predicted_pk_57, [ 0, 255, 255 ] 
color predicted_pk_57 , predicted_pocket_57 
show spheres, predicted_pocket_57 
set sphere_scale , 0.3 , predicted_pocket_57 
set sphere_transparency , 0.1 , predicted_pocket_57 
# predicted pocket number 58
select predicted_pocket_58, ( chain A and resi 491+467+457+456+459+454+471+473+472+458+469 )  or  ( chain B and resi 114+113 ) 
set_color predicted_pk_58, [ 0, 255, 255 ] 
color predicted_pk_58 , predicted_pocket_58 
show spheres, predicted_pocket_58 
set sphere_scale , 0.3 , predicted_pocket_58 
set sphere_transparency , 0.1 , predicted_pocket_58 
# predicted pocket number 59
select predicted_pocket_59, ( chain A and resi 434+369+365+513+368+377+338+374+342+387 )  or  ( chain C and resi 416+415+408 ) 
set_color predicted_pk_59, [ 0, 255, 255 ] 
color predicted_pk_59 , predicted_pocket_59 
show spheres, predicted_pocket_59 
set sphere_scale , 0.3 , predicted_pocket_59 
set sphere_transparency , 0.1 , predicted_pocket_59 
# predicted pocket number 60
select predicted_pocket_60, ( chain C and resi 958+303+304+302+961 )  or  ( chain A and resi 762+758+759+755 ) 
set_color predicted_pk_60, [ 0, 255, 255 ] 
color predicted_pk_60 , predicted_pocket_60 
show spheres, predicted_pocket_60 
set sphere_scale , 0.3 , predicted_pocket_60 
set sphere_transparency , 0.1 , predicted_pocket_60 
# predicted pocket number 61
select predicted_pocket_61, chain B and resi 799+794+792+797+800+804+803+798
set_color predicted_pk_61, [ 0, 255, 255 ] 
color predicted_pk_61 , predicted_pocket_61 
show spheres, predicted_pocket_61 
set sphere_scale , 0.3 , predicted_pocket_61 
set sphere_transparency , 0.1 , predicted_pocket_61 
# predicted pocket number 62
select predicted_pocket_62, ( chain A and resi 725+947+1018+1014+948+951+1015+724+944 )  or  ( chain B and resi 773 ) 
set_color predicted_pk_62, [ 0, 255, 255 ] 
color predicted_pk_62 , predicted_pocket_62 
show spheres, predicted_pocket_62 
set sphere_scale , 0.3 , predicted_pocket_62 
set sphere_transparency , 0.1 , predicted_pocket_62 
# predicted pocket number 63
select predicted_pocket_63, chain A and resi 1055+816+812+820+867+1052+864+1054+1053+819
set_color predicted_pk_63, [ 0, 255, 255 ] 
color predicted_pk_63 , predicted_pocket_63 
show spheres, predicted_pocket_63 
set sphere_scale , 0.3 , predicted_pocket_63 
set sphere_transparency , 0.1 , predicted_pocket_63 
# predicted pocket number 64
select predicted_pocket_64, ( chain A and resi 378+382+377+379+384+383 )  or  ( chain C and resi 413+414 )  or  ( chain B and resi 982+985 ) 
set_color predicted_pk_64, [ 0, 255, 255 ] 
color predicted_pk_64 , predicted_pocket_64 
show spheres, predicted_pocket_64 
set sphere_scale , 0.3 , predicted_pocket_64 
set sphere_transparency , 0.1 , predicted_pocket_64 
# predicted pocket number 65
select predicted_pocket_65, ( chain C and resi 49+276+48+964+304+50+961 )  or  ( chain A and resi 752+755+751 )  or  ( chain B and resi 569+571 ) 
set_color predicted_pk_65, [ 0, 255, 255 ] 
color predicted_pk_65 , predicted_pocket_65 
show spheres, predicted_pocket_65 
set sphere_scale , 0.3 , predicted_pocket_65 
set sphere_transparency , 0.1 , predicted_pocket_65 
# predicted pocket number 66
select predicted_pocket_66, ( chain A and resi 274+272+52+290+273+291+292 )  or  ( chain B and resi 748+747+744 ) 
set_color predicted_pk_66, [ 0, 255, 255 ] 
color predicted_pk_66 , predicted_pocket_66 
show spheres, predicted_pocket_66 
set sphere_scale , 0.3 , predicted_pocket_66 
set sphere_transparency , 0.1 , predicted_pocket_66 
# predicted pocket number 67
select predicted_pocket_67, ( chain A and resi 408+405+504+404+375+435+407+376+503+508 )  or  ( chain B and resi 375 ) 
set_color predicted_pk_67, [ 0, 255, 255 ] 
color predicted_pk_67 , predicted_pocket_67 
show spheres, predicted_pocket_67 
set sphere_scale , 0.3 , predicted_pocket_67 
set sphere_transparency , 0.1 , predicted_pocket_67 
# predicted pocket number 68
select predicted_pocket_68, ( chain C and resi 907+909+908+1089+1103+904+1104 )  or  ( chain B and resi 1088 ) 
set_color predicted_pk_68, [ 0, 255, 255 ] 
color predicted_pk_68 , predicted_pocket_68 
show spheres, predicted_pocket_68 
set sphere_scale , 0.3 , predicted_pocket_68 
set sphere_transparency , 0.1 , predicted_pocket_68 
# predicted pocket number 69
select predicted_pocket_69, ( chain A and resi 1068+712+1069+1105+1044+1066+1067 )  or  ( chain B and resi 889+884+887+888+891 ) 
set_color predicted_pk_69, [ 0, 255, 255 ] 
color predicted_pk_69 , predicted_pocket_69 
show spheres, predicted_pocket_69 
set sphere_scale , 0.3 , predicted_pocket_69 
set sphere_transparency , 0.1 , predicted_pocket_69 
# predicted pocket number 70
select predicted_pocket_70, chain A and resi 372+373+343+368+509+374+342+371+436+441
set_color predicted_pk_70, [ 0, 255, 255 ] 
color predicted_pk_70 , predicted_pocket_70 
show spheres, predicted_pocket_70 
set sphere_scale , 0.3 , predicted_pocket_70 
set sphere_transparency , 0.1 , predicted_pocket_70 
# predicted pocket number 71
select predicted_pocket_71, chain A and resi 802+865+816+812+871+872+868+869+875+1051+811+813+804
set_color predicted_pk_71, [ 0, 255, 255 ] 
color predicted_pk_71 , predicted_pocket_71 
show spheres, predicted_pocket_71 
set sphere_scale , 0.3 , predicted_pocket_71 
set sphere_transparency , 0.1 , predicted_pocket_71 
# predicted pocket number 72
select predicted_pocket_72, ( chain C and resi 987+991+988+984 )  or  ( chain B and resi 968+970+969+989+992 ) 
set_color predicted_pk_72, [ 0, 255, 255 ] 
color predicted_pk_72 , predicted_pocket_72 
show spheres, predicted_pocket_72 
set sphere_scale , 0.3 , predicted_pocket_72 
set sphere_transparency , 0.1 , predicted_pocket_72 
# predicted pocket number 73
select predicted_pocket_73, ( chain A and resi 372+373+369+368+374 )  or  ( chain C and resi 416+408+406+405+409+417+403 ) 
set_color predicted_pk_73, [ 0, 255, 255 ] 
color predicted_pk_73 , predicted_pocket_73 
show spheres, predicted_pocket_73 
set sphere_scale , 0.3 , predicted_pocket_73 
set sphere_transparency , 0.1 , predicted_pocket_73 
# predicted pocket number 74
select predicted_pocket_74, ( chain C and resi 889+887+884+891+888 )  or  ( chain B and resi 1044+712+1067+1066+1068+1069+1105 ) 
set_color predicted_pk_74, [ 0, 255, 255 ] 
color predicted_pk_74 , predicted_pocket_74 
show spheres, predicted_pocket_74 
set sphere_scale , 0.3 , predicted_pocket_74 
set sphere_transparency , 0.1 , predicted_pocket_74 
# predicted pocket number 75
select predicted_pocket_75, ( chain B and resi 1127+1125+1124 )  or  ( chain C and resi 915+918+914+916+919+917 ) 
set_color predicted_pk_75, [ 0, 255, 255 ] 
color predicted_pk_75 , predicted_pocket_75 
show spheres, predicted_pocket_75 
set sphere_scale , 0.3 , predicted_pocket_75 
set sphere_transparency , 0.1 , predicted_pocket_75 
# predicted pocket number 76
select predicted_pocket_76, chain B and resi 374+436+372+368+373+342+509+338+371+343
set_color predicted_pk_76, [ 0, 255, 255 ] 
color predicted_pk_76 , predicted_pocket_76 
show spheres, predicted_pocket_76 
set sphere_scale , 0.3 , predicted_pocket_76 
set sphere_transparency , 0.1 , predicted_pocket_76 
# predicted pocket number 77
select predicted_pocket_77, ( chain C and resi 1092+1076+1074+1075+1087+1091+1090 )  or  ( chain A and resi 897+900+914+910+901 ) 
set_color predicted_pk_77, [ 0, 255, 255 ] 
color predicted_pk_77 , predicted_pocket_77 
show spheres, predicted_pocket_77 
set sphere_scale , 0.3 , predicted_pocket_77 
set sphere_transparency , 0.1 , predicted_pocket_77 
# predicted pocket number 78
select predicted_pocket_78, ( chain A and resi 1091+1092+1087+1075+1076+1074+1090 )  or  ( chain B and resi 900+914+910+897+901 ) 
set_color predicted_pk_78, [ 0, 255, 255 ] 
color predicted_pk_78 , predicted_pocket_78 
show spheres, predicted_pocket_78 
set sphere_scale , 0.3 , predicted_pocket_78 
set sphere_transparency , 0.1 , predicted_pocket_78 
# predicted pocket number 79
select predicted_pocket_79, chain A and resi 1062+920+913+799+795+1046+717+917+899+1047+903+1049+797+895+924+896
set_color predicted_pk_79, [ 0, 255, 255 ] 
color predicted_pk_79 , predicted_pocket_79 
show spheres, predicted_pocket_79 
set sphere_scale , 0.3 , predicted_pocket_79 
set sphere_transparency , 0.1 , predicted_pocket_79 
# predicted pocket number 80
select predicted_pocket_80, ( chain B and resi 1074+1087+1091+1090+1076+1075+1092 )  or  ( chain C and resi 914+897+901+910+900 ) 
set_color predicted_pk_80, [ 0, 255, 255 ] 
color predicted_pk_80 , predicted_pocket_80 
show spheres, predicted_pocket_80 
set sphere_scale , 0.3 , predicted_pocket_80 
set sphere_transparency , 0.1 , predicted_pocket_80 
# predicted pocket number 81
select predicted_pocket_81, chain C and resi 339+338+368+372+374+367+371+342+343
set_color predicted_pk_81, [ 0, 255, 255 ] 
color predicted_pk_81 , predicted_pocket_81 
show spheres, predicted_pocket_81 
set sphere_scale , 0.3 , predicted_pocket_81 
set sphere_transparency , 0.1 , predicted_pocket_81 
# predicted pocket number 82
select predicted_pocket_82, ( chain A and resi 699+659+698+695+694+693+696+697 )  or  ( chain B and resi 869+785 ) 
set_color predicted_pk_82, [ 0, 255, 255 ] 
color predicted_pk_82 , predicted_pocket_82 
show spheres, predicted_pocket_82 
set sphere_scale , 0.3 , predicted_pocket_82 
set sphere_transparency , 0.1 , predicted_pocket_82 
# predicted pocket number 83
select predicted_pocket_83, ( chain C and resi 1067+1044+1068+1069+712+1105+1066 )  or  ( chain A and resi 891+884+889+888+887 ) 
set_color predicted_pk_83, [ 0, 255, 255 ] 
color predicted_pk_83 , predicted_pocket_83 
show spheres, predicted_pocket_83 
set sphere_scale , 0.3 , predicted_pocket_83 
set sphere_transparency , 0.1 , predicted_pocket_83 
# predicted pocket number 84
select predicted_pocket_84, ( chain A and resi 1113+1111+1116+1115+1110 )  or  ( chain C and resi 1119+1117+1114+1088+1118 ) 
set_color predicted_pk_84, [ 0, 255, 255 ] 
color predicted_pk_84 , predicted_pocket_84 
show spheres, predicted_pocket_84 
set sphere_scale , 0.3 , predicted_pocket_84 
set sphere_transparency , 0.1 , predicted_pocket_84 
# predicted pocket number 85
select predicted_pocket_85, chain B and resi 802+799+924+925+800+928+801+798
set_color predicted_pk_85, [ 0, 255, 255 ] 
color predicted_pk_85 , predicted_pocket_85 
show spheres, predicted_pocket_85 
set sphere_scale , 0.3 , predicted_pocket_85 
set sphere_transparency , 0.1 , predicted_pocket_85 
# predicted pocket number 86
select predicted_pocket_86, chain A and resi 399+347+354+344+348+341+356+346+340
set_color predicted_pk_86, [ 0, 255, 255 ] 
color predicted_pk_86 , predicted_pocket_86 
show spheres, predicted_pocket_86 
set sphere_scale , 0.3 , predicted_pocket_86 
set sphere_transparency , 0.1 , predicted_pocket_86 
# predicted pocket number 87
select predicted_pocket_87, chain B and resi 895+1047+717+799+896+913+903+1046+1062+924+920+1049+797+795+917+899
set_color predicted_pk_87, [ 0, 255, 255 ] 
color predicted_pk_87 , predicted_pocket_87 
show spheres, predicted_pocket_87 
set sphere_scale , 0.3 , predicted_pocket_87 
set sphere_transparency , 0.1 , predicted_pocket_87 
# predicted pocket number 88
select predicted_pocket_88, ( chain C and resi 1108+915+911+1110+1109+1111 )  or  ( chain B and resi 1121+1119+1120 ) 
set_color predicted_pk_88, [ 0, 255, 255 ] 
color predicted_pk_88 , predicted_pocket_88 
show spheres, predicted_pocket_88 
set sphere_scale , 0.3 , predicted_pocket_88 
set sphere_transparency , 0.1 , predicted_pocket_88 
# predicted pocket number 89
select predicted_pocket_89, ( chain A and resi 274+50+52+51 )  or  ( chain B and resi 748+751+752 ) 
set_color predicted_pk_89, [ 0, 255, 255 ] 
color predicted_pk_89 , predicted_pocket_89 
show spheres, predicted_pocket_89 
set sphere_scale , 0.3 , predicted_pocket_89 
set sphere_transparency , 0.1 , predicted_pocket_89 
# predicted pocket number 90
select predicted_pocket_90, ( chain B and resi 861+730+769+772+859 )  or  ( chain A and resi 666+665+312+667 ) 
set_color predicted_pk_90, [ 0, 255, 255 ] 
color predicted_pk_90 , predicted_pocket_90 
show spheres, predicted_pocket_90 
set sphere_scale , 0.3 , predicted_pocket_90 
set sphere_transparency , 0.1 , predicted_pocket_90 
# predicted pocket number 91
select predicted_pocket_91, ( chain C and resi 1009+1017+1010+1020+1016+1013+1014 )  or  ( chain B and resi 1013+1020+1017+1010+1014+1009+1016 )  or  ( chain A and resi 1020+1013+1014+1016+1017+1009+1010 ) 
set_color predicted_pk_91, [ 0, 255, 255 ] 
color predicted_pk_91 , predicted_pocket_91 
show spheres, predicted_pocket_91 
set sphere_scale , 0.3 , predicted_pocket_91 
set sphere_transparency , 0.1 , predicted_pocket_91 
# predicted pocket number 92
select predicted_pocket_92, ( chain B and resi 914+915+916+918+917+919 )  or  ( chain A and resi 1125+1127 ) 
set_color predicted_pk_92, [ 0, 255, 255 ] 
color predicted_pk_92 , predicted_pocket_92 
show spheres, predicted_pocket_92 
set sphere_scale , 0.3 , predicted_pocket_92 
set sphere_transparency , 0.1 , predicted_pocket_92 
# predicted pocket number 93
select predicted_pocket_93, ( chain A and resi 408+409+415+416+417 )  or  ( chain B and resi 369+387+374+377+372+368+365 ) 
set_color predicted_pk_93, [ 0, 255, 255 ] 
color predicted_pk_93 , predicted_pocket_93 
show spheres, predicted_pocket_93 
set sphere_scale , 0.3 , predicted_pocket_93 
set sphere_transparency , 0.1 , predicted_pocket_93 
# predicted pocket number 94
select predicted_pocket_94, chain B and resi 753+754+750+756+747+757+751+998+739+736
set_color predicted_pk_94, [ 0, 255, 255 ] 
color predicted_pk_94 , predicted_pocket_94 
show spheres, predicted_pocket_94 
set sphere_scale , 0.3 , predicted_pocket_94 
set sphere_transparency , 0.1 , predicted_pocket_94 
# predicted pocket number 95
select predicted_pocket_95, ( chain B and resi 415+408+409+416 )  or  ( chain C and resi 377+434+369+374+387+365 ) 
set_color predicted_pk_95, [ 0, 255, 255 ] 
color predicted_pk_95 , predicted_pocket_95 
show spheres, predicted_pocket_95 
set sphere_scale , 0.3 , predicted_pocket_95 
set sphere_transparency , 0.1 , predicted_pocket_95 
# predicted pocket number 96
select predicted_pocket_96, ( chain B and resi 732+764+761+858+731+768+765 )  or  ( chain A and resi 313+314+312 ) 
set_color predicted_pk_96, [ 0, 255, 255 ] 
color predicted_pk_96 , predicted_pocket_96 
show spheres, predicted_pocket_96 
set sphere_scale , 0.3 , predicted_pocket_96 
set sphere_transparency , 0.1 , predicted_pocket_96 
# predicted pocket number 97
select predicted_pocket_97, ( chain A and resi 1005+1009+1006+1002 )  or  ( chain C and resi 1006+1002+1003+1007+1010 ) 
set_color predicted_pk_97, [ 0, 255, 255 ] 
color predicted_pk_97 , predicted_pocket_97 
show spheres, predicted_pocket_97 
set sphere_scale , 0.3 , predicted_pocket_97 
set sphere_transparency , 0.1 , predicted_pocket_97 
# predicted pocket number 98
select predicted_pocket_98, chain A and resi 798+928+802+799+1060+801+924+1049
set_color predicted_pk_98, [ 0, 255, 255 ] 
color predicted_pk_98 , predicted_pocket_98 
show spheres, predicted_pocket_98 
set sphere_scale , 0.3 , predicted_pocket_98 
set sphere_transparency , 0.1 , predicted_pocket_98 
# predicted pocket number 99
select predicted_pocket_99, ( chain C and resi 969+970+965+966+967+968+980 )  or  ( chain A and resi 756+752+991+749+987+753 )  or  ( chain B and resi 428+430 ) 
set_color predicted_pk_99, [ 0, 255, 255 ] 
color predicted_pk_99 , predicted_pocket_99 
show spheres, predicted_pocket_99 
set sphere_scale , 0.3 , predicted_pocket_99 
set sphere_transparency , 0.1 , predicted_pocket_99 
# predicted pocket number 100
select predicted_pocket_100, ( chain B and resi 408+409+416+417+406+403 )  or  ( chain C and resi 368+372+374+369+365 ) 
set_color predicted_pk_100, [ 0, 255, 255 ] 
color predicted_pk_100 , predicted_pocket_100 
show spheres, predicted_pocket_100 
set sphere_scale , 0.3 , predicted_pocket_100 
set sphere_transparency , 0.1 , predicted_pocket_100 
# predicted pocket number 101
select predicted_pocket_101, ( chain B and resi 753+756+994+999+995+1002+998 )  or  ( chain A and resi 999+967 ) 
set_color predicted_pk_101, [ 0, 255, 255 ] 
color predicted_pk_101 , predicted_pocket_101 
show spheres, predicted_pocket_101 
set sphere_scale , 0.3 , predicted_pocket_101 
set sphere_transparency , 0.1 , predicted_pocket_101 
# predicted pocket number 102
select predicted_pocket_102, ( chain C and resi 352+355+466+353+354 )  or  ( chain A and resi 130+231+168+230+167 ) 
set_color predicted_pk_102, [ 0, 255, 255 ] 
color predicted_pk_102 , predicted_pocket_102 
show spheres, predicted_pocket_102 
set sphere_scale , 0.3 , predicted_pocket_102 
set sphere_transparency , 0.1 , predicted_pocket_102 
# predicted pocket number 103
select predicted_pocket_103, chain A and resi 518+544+565+577+543+522+576+579+520+564+328
set_color predicted_pk_103, [ 0, 255, 255 ] 
color predicted_pk_103 , predicted_pocket_103 
show spheres, predicted_pocket_103 
set sphere_scale , 0.3 , predicted_pocket_103 
set sphere_transparency , 0.1 , predicted_pocket_103 
# predicted pocket number 104
select predicted_pocket_104, ( chain A and resi 1088+1089+1087+1115+1116 )  or  ( chain B and resi 1115+1088 )  or  ( chain C and resi 1088+1115 ) 
set_color predicted_pk_104, [ 0, 255, 255 ] 
color predicted_pk_104 , predicted_pocket_104 
show spheres, predicted_pocket_104 
set sphere_scale , 0.3 , predicted_pocket_104 
set sphere_transparency , 0.1 , predicted_pocket_104 
# predicted pocket number 105
select predicted_pocket_105, ( chain B and resi 984+991+753+995+987+988+992 )  or  ( chain A and resi 991+967+989+968+987+753+988+969+984+995+970+992 )  or  ( chain C and resi 989+992+967+995+970+968 ) 
set_color predicted_pk_105, [ 0, 255, 255 ] 
color predicted_pk_105 , predicted_pocket_105 
show spheres, predicted_pocket_105 
set sphere_scale , 0.3 , predicted_pocket_105 
set sphere_transparency , 0.1 , predicted_pocket_105 
# predicted pocket number 106
select predicted_pocket_106, ( chain B and resi 1020+1017+1021 )  or  ( chain C and resi 1021+1020+1017 )  or  ( chain A and resi 1017+1020+1021 ) 
set_color predicted_pk_106, [ 0, 255, 255 ] 
color predicted_pk_106 , predicted_pocket_106 
show spheres, predicted_pocket_106 
set sphere_scale , 0.3 , predicted_pocket_106 
set sphere_transparency , 0.1 , predicted_pocket_106 
# predicted pocket number 107
select predicted_pocket_107, ( chain A and resi 1036+1024+1021 )  or  ( chain B and resi 1020+1017+1024+1039+1036+1021 )  or  ( chain C and resi 1039+1021+1024+1036 ) 
set_color predicted_pk_107, [ 0, 255, 255 ] 
color predicted_pk_107 , predicted_pocket_107 
show spheres, predicted_pocket_107 
set sphere_scale , 0.3 , predicted_pocket_107 
set sphere_transparency , 0.1 , predicted_pocket_107 
select TP, true_pocket* and predicted_pocket*
color green, TP
