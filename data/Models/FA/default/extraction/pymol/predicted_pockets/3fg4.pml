load ../../../PDB/pdb3fg4.ent
# ligand_0
select ligand_0, chain A and resi 2001 
set_color lg_0, [ 255, 0, 0 ] 
color lg_0 , ligand_0 
show spheres, ligand_0 
set sphere_scale , 1 , ligand_0 
set sphere_transparency , 0.1 , ligand_0 
# ligand_1
select ligand_1, chain B and resi 2001 
set_color lg_1, [ 255, 0, 0 ] 
color lg_1 , ligand_1 
show spheres, ligand_1 
set sphere_scale , 1 , ligand_1 
set sphere_transparency , 0.1 , ligand_1 
# ligand_2
select ligand_2, chain C and resi 2001 
set_color lg_2, [ 255, 0, 0 ] 
color lg_2 , ligand_2 
show spheres, ligand_2 
set sphere_scale , 1 , ligand_2 
set sphere_transparency , 0.1 , ligand_2 
# ligand_3
select ligand_3, chain D and resi 2001 
set_color lg_3, [ 255, 0, 0 ] 
color lg_3 , ligand_3 
show spheres, ligand_3 
set sphere_scale , 1 , ligand_3 
set sphere_transparency , 0.1 , ligand_3 
# true pocket number 0
select true_pocket_0, chain A and resi 800+763+797+796
set_color true_pk_0, [ 0, 0, 255 ] 
color true_pk_0 , true_pocket_0 
show spheres, true_pocket_0 
set sphere_scale , 0.3 , true_pocket_0 
set sphere_transparency , 0.1 , true_pocket_0 
# true pocket number 1
select true_pocket_1, chain B and resi 796+826+797+800+762+801+763
set_color true_pk_1, [ 0, 0, 255 ] 
color true_pk_1 , true_pocket_1 
show spheres, true_pocket_1 
set sphere_scale , 0.3 , true_pocket_1 
set sphere_transparency , 0.1 , true_pocket_1 
# true pocket number 2
select true_pocket_2, chain C and resi 763+797+800+758+762+1066+796
set_color true_pk_2, [ 0, 0, 255 ] 
color true_pk_2 , true_pocket_2 
show spheres, true_pocket_2 
set sphere_scale , 0.3 , true_pocket_2 
set sphere_transparency , 0.1 , true_pocket_2 
# true pocket number 3
select true_pocket_3, chain D and resi 758+763+796+762+797+801+800
set_color true_pk_3, [ 0, 0, 255 ] 
color true_pk_3 , true_pocket_3 
show spheres, true_pocket_3 
set sphere_scale , 0.3 , true_pocket_3 
set sphere_transparency , 0.1 , true_pocket_3 
# predicted pocket number 0
select predicted_pocket_0, ( chain A and resi 378+409+411+1005+588+790+451+590+423+477+541+547+952+1015+476+414+1009+1059+424+998+544+1011+1002+458+1053+380+1012+589+1003+545+546+387+379+384+426+1013+549+540+456+1008+1034+410+948+1038+394+391+463+539+381+413+392+1057+773+390+421+425+461+1010+427+462+1004+1006+769+787+792+791+1007+794+386+385+382+1016+377+1035+1065+1062+550+542+428+1058+553+788+944+1042+418+383+1014+1001+543+452+420+478+419+412+1054+1063+951+393+422+389+1031 )  or  ( chain B and resi 1013+418+419+451+1017+1010+1014+389+557+1027+1008+1004+387+1059+1002+1015+1035+1038+554+382+386+458+459+452+545+1012+414+423+1034+1057+1019+546+1006+449+549+552+381+1025+1007+420+385+391+1021+1032+1031+1018+556+998+1009+1016+474+390+476+1058+421+456+1024+422+553+388+384+544+383+1003+1028+550+1005 ) 
set_color predicted_pk_0, [ 0, 255, 255 ] 
color predicted_pk_0 , predicted_pocket_0 
show spheres, predicted_pocket_0 
set sphere_scale , 0.3 , predicted_pocket_0 
set sphere_transparency , 0.1 , predicted_pocket_0 
# predicted pocket number 1
select predicted_pocket_1, ( chain C and resi 413+391+411+998+386+382+388+1059+557+390+1006+1012+550+452+549+383+392+412+546+458+414+410+1014+419+381+387+449+1009+423+421+385+456+1005+476+389+1007+418+1004+553+451+420+554+1002+1035+1058+1015+384+1008 )  or  ( chain D and resi 389+1035+418+385+1006+1015+391+542+1004+1016+394+420+392+1002+540+426+414+787+546+413+545+423+539+452+382+792+791+1014+419+387+383+456+1058+384+1003+1005+1032+451+393+788+1008+411+794+476+458+412+1042+421+773+478+1007+1062+790+543+549+550+1013+541+544+477+410+1059+1012+386+553+390+1009+381 ) 
set_color predicted_pk_1, [ 0, 255, 255 ] 
color predicted_pk_1 , predicted_pocket_1 
show spheres, predicted_pocket_1 
set sphere_scale , 0.3 , predicted_pocket_1 
set sphere_transparency , 0.1 , predicted_pocket_1 
# predicted pocket number 2
select predicted_pocket_2, chain C and resi 589+955+800+999+796+993+815+801+1066+963+994+996+990+521+985+525+960+1000+989+807+814+762+754+954+763+752+822+799+758+962+950+757+997+809+961+823+951+811+810+1001+803+753+551+797+555+826+957
set_color predicted_pk_2, [ 0, 255, 255 ] 
color predicted_pk_2 , predicted_pocket_2 
show spheres, predicted_pocket_2 
set sphere_scale , 0.3 , predicted_pocket_2 
set sphere_transparency , 0.1 , predicted_pocket_2 
# predicted pocket number 3
select predicted_pocket_3, chain A and resi 812+762+1066+796+526+527+551+763+558+999+766+559+800+797+813+802+803+808+562+809+799+1000+823+996+822+826+525+555+757+528+758+811+801+521+995+992+810
set_color predicted_pk_3, [ 0, 255, 255 ] 
color predicted_pk_3 , predicted_pocket_3 
show spheres, predicted_pocket_3 
set sphere_scale , 0.3 , predicted_pocket_3 
set sphere_transparency , 0.1 , predicted_pocket_3 
# predicted pocket number 4
select predicted_pocket_4, chain C and resi 542+547+769+788+1063+385+787+456+773+478+791+476+546+794+543+544+1062+386+1015+1061+540+1016+477+1013+541+1006+1012+545+1007+790+1065+792+539+1008
set_color predicted_pk_4, [ 0, 255, 255 ] 
color predicted_pk_4 , predicted_pocket_4 
show spheres, predicted_pocket_4 
set sphere_scale , 0.3 , predicted_pocket_4 
set sphere_transparency , 0.1 , predicted_pocket_4 
# predicted pocket number 5
select predicted_pocket_5, chain B and resi 811+826+754+521+762+812+757+1066+763+758+996+823+796+822+797+800+1000+801+803
set_color predicted_pk_5, [ 0, 255, 255 ] 
color predicted_pk_5 , predicted_pocket_5 
show spheres, predicted_pocket_5 
set sphere_scale , 0.3 , predicted_pocket_5 
set sphere_transparency , 0.1 , predicted_pocket_5 
# predicted pocket number 6
select predicted_pocket_6, chain D and resi 757+1000+811+810+758+826+796+804+809+812+762+1066+823+521+763+797+801+800+822+525
set_color predicted_pk_6, [ 0, 255, 255 ] 
color predicted_pk_6 , predicted_pocket_6 
show spheres, predicted_pocket_6 
set sphere_scale , 0.3 , predicted_pocket_6 
set sphere_transparency , 0.1 , predicted_pocket_6 
# predicted pocket number 7
select predicted_pocket_7, chain B and resi 1013+791+476+1007+478+385+540+456+386+541+773+1062+769+794+1061+1065+544+545+1012+1008+788+477+1016+542+539+546+1006+543+792+787+1015+790+1063
set_color predicted_pk_7, [ 0, 255, 255 ] 
color predicted_pk_7 , predicted_pocket_7 
show spheres, predicted_pocket_7 
set sphere_scale , 0.3 , predicted_pocket_7 
set sphere_transparency , 0.1 , predicted_pocket_7 
# predicted pocket number 8
select predicted_pocket_8, ( chain C and resi 570+566 )  or  ( chain A and resi 561+563+565+562+566+987+992+559+988+582+991+586+994+583+569+587 )  or  ( chain D and resi 568 ) 
set_color predicted_pk_8, [ 0, 255, 255 ] 
color predicted_pk_8 , predicted_pocket_8 
show spheres, predicted_pocket_8 
set sphere_scale , 0.3 , predicted_pocket_8 
set sphere_transparency , 0.1 , predicted_pocket_8 
# predicted pocket number 9
select predicted_pocket_9, chain C and resi 512+516+511+484+477+481+508+440+504+773+478+480+483+515+486+538+540+507+482
set_color predicted_pk_9, [ 0, 255, 255 ] 
color predicted_pk_9 , predicted_pocket_9 
show spheres, predicted_pocket_9 
set sphere_scale , 0.3 , predicted_pocket_9 
set sphere_transparency , 0.1 , predicted_pocket_9 
# predicted pocket number 10
select predicted_pocket_10, ( chain C and resi 570+562+987+994+559+586+992+566+991+582+561+569+587+988+565+583+563 )  or  ( chain A and resi 566+570 )  or  ( chain B and resi 568 ) 
set_color predicted_pk_10, [ 0, 255, 255 ] 
color predicted_pk_10 , predicted_pocket_10 
show spheres, predicted_pocket_10 
set sphere_scale , 0.3 , predicted_pocket_10 
set sphere_transparency , 0.1 , predicted_pocket_10 
# predicted pocket number 11
select predicted_pocket_11, ( chain C and resi 568 )  or  ( chain B and resi 583+587+565+988+563+987+586+569+566+994+561+570+992+562+559+582+991 )  or  ( chain D and resi 570+566 ) 
set_color predicted_pk_11, [ 0, 255, 255 ] 
color predicted_pk_11 , predicted_pocket_11 
show spheres, predicted_pocket_11 
set sphere_scale , 0.3 , predicted_pocket_11 
set sphere_transparency , 0.1 , predicted_pocket_11 
# predicted pocket number 12
select predicted_pocket_12, chain A and resi 846+837+756+617+860+760+844+751+937+755+842+619+832+843+839+938+840+616+836+847+942+838+761
set_color predicted_pk_12, [ 0, 255, 255 ] 
color predicted_pk_12 , predicted_pocket_12 
show spheres, predicted_pocket_12 
set sphere_scale , 0.3 , predicted_pocket_12 
set sphere_transparency , 0.1 , predicted_pocket_12 
# predicted pocket number 13
select predicted_pocket_13, ( chain D and resi 586+561+992+587+583+582+565+987+562+569+566+991+988 )  or  ( chain A and resi 568 ) 
set_color predicted_pk_13, [ 0, 255, 255 ] 
color predicted_pk_13 , predicted_pocket_13 
show spheres, predicted_pocket_13 
set sphere_scale , 0.3 , predicted_pocket_13 
set sphere_transparency , 0.1 , predicted_pocket_13 
# predicted pocket number 14
select predicted_pocket_14, chain A and resi 482+784+515+540+488+487+484+477+516+539+508+507+478+486+474+773+485+779+1017+480+489+505+475+511+504+778+483+538+783+512+490+787
set_color predicted_pk_14, [ 0, 255, 255 ] 
color predicted_pk_14 , predicted_pocket_14 
show spheres, predicted_pocket_14 
set sphere_scale , 0.3 , predicted_pocket_14 
set sphere_transparency , 0.1 , predicted_pocket_14 
# predicted pocket number 15
select predicted_pocket_15, chain B and resi 761+942+842+619+837+938+617+832+843+844+840+847+756+937+838+751+616+755+760+846+839+836+860
set_color predicted_pk_15, [ 0, 255, 255 ] 
color predicted_pk_15 , predicted_pocket_15 
show spheres, predicted_pocket_15 
set sphere_scale , 0.3 , predicted_pocket_15 
set sphere_transparency , 0.1 , predicted_pocket_15 
# predicted pocket number 16
select predicted_pocket_16, chain A and resi 979+740+966+980+967+716+982+678+971+681+676+968+723+739+679+743+693+983+969+727+736+672+975+691+669+974+670+677+674+970+671
set_color predicted_pk_16, [ 0, 255, 255 ] 
color predicted_pk_16 , predicted_pocket_16 
show spheres, predicted_pocket_16 
set sphere_scale , 0.3 , predicted_pocket_16 
set sphere_transparency , 0.1 , predicted_pocket_16 
# predicted pocket number 17
select predicted_pocket_17, chain B and resi 501+489+491+487+486+437+436+488+1019+472+435+497+469+496+471+470+498
set_color predicted_pk_17, [ 0, 255, 255 ] 
color predicted_pk_17 , predicted_pocket_17 
show spheres, predicted_pocket_17 
set sphere_scale , 0.3 , predicted_pocket_17 
set sphere_transparency , 0.1 , predicted_pocket_17 
# predicted pocket number 18
select predicted_pocket_18, chain D and resi 860+756+942+840+838+760+846+847+937+844+837+751+839+843+755+836+616+938
set_color predicted_pk_18, [ 0, 255, 255 ] 
color predicted_pk_18 , predicted_pocket_18 
show spheres, predicted_pocket_18 
set sphere_scale , 0.3 , predicted_pocket_18 
set sphere_transparency , 0.1 , predicted_pocket_18 
# predicted pocket number 19
select predicted_pocket_19, ( chain A and resi 449+447+393+448+391+444+450+446 )  or  ( chain B and resi 1039+1042+1035+1038 ) 
set_color predicted_pk_19, [ 0, 255, 255 ] 
color predicted_pk_19 , predicted_pocket_19 
show spheres, predicted_pocket_19 
set sphere_scale , 0.3 , predicted_pocket_19 
set sphere_transparency , 0.1 , predicted_pocket_19 
# predicted pocket number 20
select predicted_pocket_20, chain C and resi 969+739+983+736+743+970+982+680+971+740+980+967+979+966+968+716+975+974+727
set_color predicted_pk_20, [ 0, 255, 255 ] 
color predicted_pk_20 , predicted_pocket_20 
show spheres, predicted_pocket_20 
set sphere_scale , 0.3 , predicted_pocket_20 
set sphere_transparency , 0.1 , predicted_pocket_20 
# predicted pocket number 21
select predicted_pocket_21, chain A and resi 931+765+907+935+934+938+835+838+768
set_color predicted_pk_21, [ 0, 255, 255 ] 
color predicted_pk_21 , predicted_pocket_21 
show spheres, predicted_pocket_21 
set sphere_scale , 0.3 , predicted_pocket_21 
set sphere_transparency , 0.1 , predicted_pocket_21 
# predicted pocket number 22
select predicted_pocket_22, ( chain D and resi 391+393+448+449+450+444+392+446+447 )  or  ( chain C and resi 1039+1042+1035+1038 ) 
set_color predicted_pk_22, [ 0, 255, 255 ] 
color predicted_pk_22 , predicted_pocket_22 
show spheres, predicted_pocket_22 
set sphere_scale , 0.3 , predicted_pocket_22 
set sphere_transparency , 0.1 , predicted_pocket_22 
# predicted pocket number 23
select predicted_pocket_23, ( chain D and resi 1034+1058+1038+1009+1010+1035+1031+1057+1011+1012 )  or  ( chain C and resi 419+391+414 ) 
set_color predicted_pk_23, [ 0, 255, 255 ] 
color predicted_pk_23 , predicted_pocket_23 
show spheres, predicted_pocket_23 
set sphere_scale , 0.3 , predicted_pocket_23 
set sphere_transparency , 0.1 , predicted_pocket_23 
# predicted pocket number 24
select predicted_pocket_24, chain C and resi 934+907+927+931+838+930+935+926+938+836+839+919+768+835+917+765
set_color predicted_pk_24, [ 0, 255, 255 ] 
color predicted_pk_24 , predicted_pocket_24 
show spheres, predicted_pocket_24 
set sphere_scale , 0.3 , predicted_pocket_24 
set sphere_transparency , 0.1 , predicted_pocket_24 
# predicted pocket number 25
select predicted_pocket_25, ( chain D and resi 391+414+419 )  or  ( chain C and resi 1009+1031+1034+1035+1038+1058+1011+1010+1012+1057 ) 
set_color predicted_pk_25, [ 0, 255, 255 ] 
color predicted_pk_25 , predicted_pocket_25 
show spheres, predicted_pocket_25 
set sphere_scale , 0.3 , predicted_pocket_25 
set sphere_transparency , 0.1 , predicted_pocket_25 
# predicted pocket number 26
select predicted_pocket_26, chain B and resi 990+989+962+584+957+960+955+753+749+950+589+951+993+961+985+994+954+996+814+815+963+997
set_color predicted_pk_26, [ 0, 255, 255 ] 
color predicted_pk_26 , predicted_pocket_26 
show spheres, predicted_pocket_26 
set sphere_scale , 0.3 , predicted_pocket_26 
set sphere_transparency , 0.1 , predicted_pocket_26 
# predicted pocket number 27
select predicted_pocket_27, chain D and resi 969+975+740+971+983+966+982+739+979+736+974+727+743+716+980+967
set_color predicted_pk_27, [ 0, 255, 255 ] 
color predicted_pk_27 , predicted_pocket_27 
show spheres, predicted_pocket_27 
set sphere_scale , 0.3 , predicted_pocket_27 
set sphere_transparency , 0.1 , predicted_pocket_27 
# predicted pocket number 28
select predicted_pocket_28, chain A and resi 436+491+496+488+487+435+469+508+486+437+498+779+501+497+505+489+493+492+502+495+777
set_color predicted_pk_28, [ 0, 255, 255 ] 
color predicted_pk_28 , predicted_pocket_28 
show spheres, predicted_pocket_28 
set sphere_scale , 0.3 , predicted_pocket_28 
set sphere_transparency , 0.1 , predicted_pocket_28 
# predicted pocket number 29
select predicted_pocket_29, chain C and resi 760+837+840+619+844+860+756+842+616+751+938+755+937+846+847+836+838+942+761+843
set_color predicted_pk_29, [ 0, 255, 255 ] 
color predicted_pk_29 , predicted_pocket_29 
show spheres, predicted_pocket_29 
set sphere_scale , 0.3 , predicted_pocket_29 
set sphere_transparency , 0.1 , predicted_pocket_29 
# predicted pocket number 30
select predicted_pocket_30, chain D and resi 608+595+1050+949+612+607+953+1054+613+594+1051+1052+952+611
set_color predicted_pk_30, [ 0, 255, 255 ] 
color predicted_pk_30 , predicted_pocket_30 
show spheres, predicted_pocket_30 
set sphere_scale , 0.3 , predicted_pocket_30 
set sphere_transparency , 0.1 , predicted_pocket_30 
# predicted pocket number 31
select predicted_pocket_31, chain C and resi 662+821+661+664+666+665+825+828+824+663
set_color predicted_pk_31, [ 0, 255, 255 ] 
color predicted_pk_31 , predicted_pocket_31 
show spheres, predicted_pocket_31 
set sphere_scale , 0.3 , predicted_pocket_31 
set sphere_transparency , 0.1 , predicted_pocket_31 
# predicted pocket number 32
select predicted_pocket_32, chain C and resi 777+779+487+502+489+492+491+508+501+486+495+493+497+505
set_color predicted_pk_32, [ 0, 255, 255 ] 
color predicted_pk_32 , predicted_pocket_32 
show spheres, predicted_pocket_32 
set sphere_scale , 0.3 , predicted_pocket_32 
set sphere_transparency , 0.1 , predicted_pocket_32 
# predicted pocket number 33
select predicted_pocket_33, chain D and resi 508+484+488+485+515+477+784+480+489+783+483+507+512+474+482+475+516+478+486+1017+778+490+487+511+505+540+779+787+538+504
set_color predicted_pk_33, [ 0, 255, 255 ] 
color predicted_pk_33 , predicted_pocket_33 
show spheres, predicted_pocket_33 
set sphere_scale , 0.3 , predicted_pocket_33 
set sphere_transparency , 0.1 , predicted_pocket_33 
# predicted pocket number 34
select predicted_pocket_34, ( chain B and resi 391+450+449+393+447+448 )  or  ( chain A and resi 1042+1039+1038+1035 ) 
set_color predicted_pk_34, [ 0, 255, 255 ] 
color predicted_pk_34 , predicted_pocket_34 
show spheres, predicted_pocket_34 
set sphere_scale , 0.3 , predicted_pocket_34 
set sphere_transparency , 0.1 , predicted_pocket_34 
# predicted pocket number 35
select predicted_pocket_35, ( chain B and resi 412+409+426+377+425+427+378+463+461+411+379 )  or  ( chain A and resi 1025+470+1028+1024+1021 ) 
set_color predicted_pk_35, [ 0, 255, 255 ] 
color predicted_pk_35 , predicted_pocket_35 
show spheres, predicted_pocket_35 
set sphere_scale , 0.3 , predicted_pocket_35 
set sphere_transparency , 0.1 , predicted_pocket_35 
# predicted pocket number 36
select predicted_pocket_36, chain A and resi 824+664+662+828+666+661+665+663+821+825
set_color predicted_pk_36, [ 0, 255, 255 ] 
color predicted_pk_36 , predicted_pocket_36 
show spheres, predicted_pocket_36 
set sphere_scale , 0.3 , predicted_pocket_36 
set sphere_transparency , 0.1 , predicted_pocket_36 
# predicted pocket number 37
select predicted_pocket_37, chain D and resi 935+907+765+934+838+835+768+931+938
set_color predicted_pk_37, [ 0, 255, 255 ] 
color predicted_pk_37 , predicted_pocket_37 
show spheres, predicted_pocket_37 
set sphere_scale , 0.3 , predicted_pocket_37 
set sphere_transparency , 0.1 , predicted_pocket_37 
# predicted pocket number 38
select predicted_pocket_38, chain D and resi 799+802+803+533+552+798+555+548+534+535+551+543
set_color predicted_pk_38, [ 0, 255, 255 ] 
color predicted_pk_38 , predicted_pocket_38 
show spheres, predicted_pocket_38 
set sphere_scale , 0.3 , predicted_pocket_38 
set sphere_transparency , 0.1 , predicted_pocket_38 
# predicted pocket number 39
select predicted_pocket_39, ( chain B and resi 424+422+419+414+423 )  or  ( chain A and resi 1014+459+1018+1012+1016+476+1024+1013+1028+1027+1031 ) 
set_color predicted_pk_39, [ 0, 255, 255 ] 
color predicted_pk_39 , predicted_pocket_39 
show spheres, predicted_pocket_39 
set sphere_scale , 0.3 , predicted_pocket_39 
set sphere_transparency , 0.1 , predicted_pocket_39 
# predicted pocket number 40
select predicted_pocket_40, chain B and resi 477+508+773+484+480+482+512+483+478+516+511+540+538+515
set_color predicted_pk_40, [ 0, 255, 255 ] 
color predicted_pk_40 , predicted_pocket_40 
show spheres, predicted_pocket_40 
set sphere_scale , 0.3 , predicted_pocket_40 
set sphere_transparency , 0.1 , predicted_pocket_40 
# predicted pocket number 41
select predicted_pocket_41, chain A and resi 613+611+594+612+949+608+952+1052+953+607+595+1054+1053+1051+1050
set_color predicted_pk_41, [ 0, 255, 255 ] 
color predicted_pk_41 , predicted_pocket_41 
show spheres, predicted_pocket_41 
set sphere_scale , 0.3 , predicted_pocket_41 
set sphere_transparency , 0.1 , predicted_pocket_41 
# predicted pocket number 42
select predicted_pocket_42, chain C and resi 595+953+611+608+594+1050+949+607+1053+1051+1052+1054+613+612+952
set_color predicted_pk_42, [ 0, 255, 255 ] 
color predicted_pk_42 , predicted_pocket_42 
show spheres, predicted_pocket_42 
set sphere_scale , 0.3 , predicted_pocket_42 
set sphere_transparency , 0.1 , predicted_pocket_42 
# predicted pocket number 43
select predicted_pocket_43, chain B and resi 743+968+979+727+716+740+971+983+969+980+975+739+967+736+974
set_color predicted_pk_43, [ 0, 255, 255 ] 
color predicted_pk_43 , predicted_pocket_43 
show spheres, predicted_pocket_43 
set sphere_scale , 0.3 , predicted_pocket_43 
set sphere_transparency , 0.1 , predicted_pocket_43 
# predicted pocket number 44
select predicted_pocket_44, ( chain A and resi 570+567+568+572+571 )  or  ( chain D and resi 561+588+998+587+557+556+586+564+553+585+560 )  or  ( chain C and resi 560+561+553+585+564+998+587+557+586+556+588 )  or  ( chain B and resi 567+569+572+568+570+571 ) 
set_color predicted_pk_44, [ 0, 255, 255 ] 
color predicted_pk_44 , predicted_pocket_44 
show spheres, predicted_pocket_44 
set sphere_scale , 0.3 , predicted_pocket_44 
set sphere_transparency , 0.1 , predicted_pocket_44 
# predicted pocket number 45
select predicted_pocket_45, ( chain C and resi 1019+1031+461+1016+1014+1013+459+381+476+1012+1024+1027+1018 )  or  ( chain D and resi 414+422+423+379+424+419 ) 
set_color predicted_pk_45, [ 0, 255, 255 ] 
color predicted_pk_45 , predicted_pocket_45 
show spheres, predicted_pocket_45 
set sphere_scale , 0.3 , predicted_pocket_45 
set sphere_transparency , 0.1 , predicted_pocket_45 
# predicted pocket number 46
select predicted_pocket_46, chain D and resi 819+821+828+663+820+824+825+665+666+661+664
set_color predicted_pk_46, [ 0, 255, 255 ] 
color predicted_pk_46 , predicted_pocket_46 
show spheres, predicted_pocket_46 
set sphere_scale , 0.3 , predicted_pocket_46 
set sphere_transparency , 0.1 , predicted_pocket_46 
# predicted pocket number 47
select predicted_pocket_47, chain B and resi 934+838+931+935+835+907+938+768+765
set_color predicted_pk_47, [ 0, 255, 255 ] 
color predicted_pk_47 , predicted_pocket_47 
show spheres, predicted_pocket_47 
set sphere_scale , 0.3 , predicted_pocket_47 
set sphere_transparency , 0.1 , predicted_pocket_47 
# predicted pocket number 48
select predicted_pocket_48, chain B and resi 949+1051+612+953+595+951+592+608+594+590+1054+607+1052+611+1053+952+1050
set_color predicted_pk_48, [ 0, 255, 255 ] 
color predicted_pk_48 , predicted_pocket_48 
show spheres, predicted_pocket_48 
set sphere_scale , 0.3 , predicted_pocket_48 
set sphere_transparency , 0.1 , predicted_pocket_48 
# predicted pocket number 49
select predicted_pocket_49, chain C and resi 535+799+802+798+803+533+551+534+548+552+543
set_color predicted_pk_49, [ 0, 255, 255 ] 
color predicted_pk_49 , predicted_pocket_49 
show spheres, predicted_pocket_49 
set sphere_scale , 0.3 , predicted_pocket_49 
set sphere_transparency , 0.1 , predicted_pocket_49 
# predicted pocket number 50
select predicted_pocket_50, ( chain B and resi 391+410+394+413+393+418+390+446+414+447+411+444+392 )  or  ( chain A and resi 1032+1035 ) 
set_color predicted_pk_50, [ 0, 255, 255 ] 
color predicted_pk_50 , predicted_pocket_50 
show spheres, predicted_pocket_50 
set sphere_scale , 0.3 , predicted_pocket_50 
set sphere_transparency , 0.1 , predicted_pocket_50 
# predicted pocket number 51
select predicted_pocket_51, ( chain D and resi 426+379+428+425+378+463+411+377+427+462+409+461+412 )  or  ( chain C and resi 1028+1021+1024+1025 ) 
set_color predicted_pk_51, [ 0, 255, 255 ] 
color predicted_pk_51 , predicted_pocket_51 
show spheres, predicted_pocket_51 
set sphere_scale , 0.3 , predicted_pocket_51 
set sphere_transparency , 0.1 , predicted_pocket_51 
# predicted pocket number 52
select predicted_pocket_52, ( chain D and resi 1018+1028+474+1027+459+1013+1024+1031+1016+1014+476+1019+1017+1012 )  or  ( chain C and resi 419+424+423+414+422 ) 
set_color predicted_pk_52, [ 0, 255, 255 ] 
color predicted_pk_52 , predicted_pocket_52 
show spheres, predicted_pocket_52 
set sphere_scale , 0.3 , predicted_pocket_52 
set sphere_transparency , 0.1 , predicted_pocket_52 
# predicted pocket number 53
select predicted_pocket_53, ( chain B and resi 587+586+553+556+561+1003+590+557+998+560+589+564+951+585+588+1002+1001 )  or  ( chain A and resi 556+588+549+587+561+560+557+586+585+564+553 )  or  ( chain D and resi 568+572+571+570+567 )  or  ( chain C and resi 570+572+569+571+568+567 ) 
set_color predicted_pk_53, [ 0, 255, 255 ] 
color predicted_pk_53 , predicted_pocket_53 
show spheres, predicted_pocket_53 
set sphere_scale , 0.3 , predicted_pocket_53 
set sphere_transparency , 0.1 , predicted_pocket_53 
# predicted pocket number 54
select predicted_pocket_54, chain C and resi 595+745+744+953+605+959+600+958+608+609+960+748+599+604+741+742+738+961
set_color predicted_pk_54, [ 0, 255, 255 ] 
color predicted_pk_54 , predicted_pocket_54 
show spheres, predicted_pocket_54 
set sphere_scale , 0.3 , predicted_pocket_54 
set sphere_transparency , 0.1 , predicted_pocket_54 
# predicted pocket number 55
select predicted_pocket_55, chain A and resi 1063+1065+1007+1003+999+948+550+543+943+1004+1061+1066+1002+554+547+551
set_color predicted_pk_55, [ 0, 255, 255 ] 
color predicted_pk_55 , predicted_pocket_55 
show spheres, predicted_pocket_55 
set sphere_scale , 0.3 , predicted_pocket_55 
set sphere_transparency , 0.1 , predicted_pocket_55 
# predicted pocket number 56
select predicted_pocket_56, chain A and resi 589+985+814+957+963+989+815+993+950+954+997+753+1000+996+960+951+990+749+994+955+962
set_color predicted_pk_56, [ 0, 255, 255 ] 
color predicted_pk_56 , predicted_pocket_56 
show spheres, predicted_pocket_56 
set sphere_scale , 0.3 , predicted_pocket_56 
set sphere_transparency , 0.1 , predicted_pocket_56 
# predicted pocket number 57
select predicted_pocket_57, chain C and resi 550+943+554+948+547+1002+999+1063+551+1003+1004+1007+1061+1065+1066+543
set_color predicted_pk_57, [ 0, 255, 255 ] 
color predicted_pk_57 , predicted_pocket_57 
show spheres, predicted_pocket_57 
set sphere_scale , 0.3 , predicted_pocket_57 
set sphere_transparency , 0.1 , predicted_pocket_57 
# predicted pocket number 58
select predicted_pocket_58, ( chain D and resi 589+591+588+585+587+592+584+593+590 )  or  ( chain A and resi 573+571+574+575+572+579 ) 
set_color predicted_pk_58, [ 0, 255, 255 ] 
color predicted_pk_58 , predicted_pocket_58 
show spheres, predicted_pocket_58 
set sphere_scale , 0.3 , predicted_pocket_58 
set sphere_transparency , 0.1 , predicted_pocket_58 
# predicted pocket number 59
select predicted_pocket_59, chain A and resi 802+555+798+535+799+803+534+533+552+543+548+551
set_color predicted_pk_59, [ 0, 255, 255 ] 
color predicted_pk_59 , predicted_pocket_59 
show spheres, predicted_pocket_59 
set sphere_scale , 0.3 , predicted_pocket_59 
set sphere_transparency , 0.1 , predicted_pocket_59 
# predicted pocket number 60
select predicted_pocket_60, chain D and resi 1003+1066+1004+948+1007+943+1065+547+1002+1061+1063
set_color predicted_pk_60, [ 0, 255, 255 ] 
color predicted_pk_60 , predicted_pocket_60 
show spheres, predicted_pocket_60 
set sphere_scale , 0.3 , predicted_pocket_60 
set sphere_transparency , 0.1 , predicted_pocket_60 
# predicted pocket number 61
select predicted_pocket_61, ( chain C and resi 591+592+589+585+584+593+587+588+590 )  or  ( chain B and resi 573+572+574+571+579+575 ) 
set_color predicted_pk_61, [ 0, 255, 255 ] 
color predicted_pk_61 , predicted_pocket_61 
show spheres, predicted_pocket_61 
set sphere_scale , 0.3 , predicted_pocket_61 
set sphere_transparency , 0.1 , predicted_pocket_61 
# predicted pocket number 62
select predicted_pocket_62, chain A and resi 960+605+958+659+961+609+745+600+748+744+953+741+738+959+599+608+742
set_color predicted_pk_62, [ 0, 255, 255 ] 
color predicted_pk_62 , predicted_pocket_62 
show spheres, predicted_pocket_62 
set sphere_scale , 0.3 , predicted_pocket_62 
set sphere_transparency , 0.1 , predicted_pocket_62 
# predicted pocket number 63
select predicted_pocket_63, chain D and resi 819+821+818+669+667+668+666
set_color predicted_pk_63, [ 0, 255, 255 ] 
color predicted_pk_63 , predicted_pocket_63 
show spheres, predicted_pocket_63 
set sphere_scale , 0.3 , predicted_pocket_63 
set sphere_transparency , 0.1 , predicted_pocket_63 
# predicted pocket number 64
select predicted_pocket_64, chain D and resi 936+785+788+871+1018+1010+1013+1030+875+1016+874+789+784
set_color predicted_pk_64, [ 0, 255, 255 ] 
color predicted_pk_64 , predicted_pocket_64 
show spheres, predicted_pocket_64 
set sphere_scale , 0.3 , predicted_pocket_64 
set sphere_transparency , 0.1 , predicted_pocket_64 
# predicted pocket number 65
select predicted_pocket_65, chain D and resi 591+951+592+1050+1054+594+1053+1051+590+952
set_color predicted_pk_65, [ 0, 255, 255 ] 
color predicted_pk_65 , predicted_pocket_65 
show spheres, predicted_pocket_65 
set sphere_scale , 0.3 , predicted_pocket_65 
set sphere_transparency , 0.1 , predicted_pocket_65 
# predicted pocket number 66
select predicted_pocket_66, ( chain A and resi 1042+1046+1045+1058+1056+1051+1053 )  or  ( chain B and resi 449 ) 
set_color predicted_pk_66, [ 0, 255, 255 ] 
color predicted_pk_66 , predicted_pocket_66 
show spheres, predicted_pocket_66 
set sphere_scale , 0.3 , predicted_pocket_66 
set sphere_transparency , 0.1 , predicted_pocket_66 
# predicted pocket number 67
select predicted_pocket_67, chain C and resi 995+996+562+808+559+810+558+813+999+809+555+814+992
set_color predicted_pk_67, [ 0, 255, 255 ] 
color predicted_pk_67 , predicted_pocket_67 
show spheres, predicted_pocket_67 
set sphere_scale , 0.3 , predicted_pocket_67 
set sphere_transparency , 0.1 , predicted_pocket_67 
# predicted pocket number 68
select predicted_pocket_68, ( chain A and resi 593+589+588+584+587+592+576+579+591+578+585+597+581 )  or  ( chain D and resi 578+584+572+579+597+574+575+571+573+592+585+581+576 ) 
set_color predicted_pk_68, [ 0, 255, 255 ] 
color predicted_pk_68 , predicted_pocket_68 
show spheres, predicted_pocket_68 
set sphere_scale , 0.3 , predicted_pocket_68 
set sphere_transparency , 0.1 , predicted_pocket_68 
# predicted pocket number 69
select predicted_pocket_69, chain D and resi 870+877+1029+1030+1026+873+1033+874+869
set_color predicted_pk_69, [ 0, 255, 255 ] 
color predicted_pk_69 , predicted_pocket_69 
show spheres, predicted_pocket_69 
set sphere_scale , 0.3 , predicted_pocket_69 
set sphere_transparency , 0.1 , predicted_pocket_69 
# predicted pocket number 70
select predicted_pocket_70, chain C and resi 1033+1030+1026+870+869+877+1029+874+873
set_color predicted_pk_70, [ 0, 255, 255 ] 
color predicted_pk_70 , predicted_pocket_70 
show spheres, predicted_pocket_70 
set sphere_scale , 0.3 , predicted_pocket_70 
set sphere_transparency , 0.1 , predicted_pocket_70 
# predicted pocket number 71
select predicted_pocket_71, ( chain D and resi 1042+1058+1056+1051+1045+1059+1053+1046 )  or  ( chain C and resi 449 ) 
set_color predicted_pk_71, [ 0, 255, 255 ] 
color predicted_pk_71 , predicted_pocket_71 
show spheres, predicted_pocket_71 
set sphere_scale , 0.3 , predicted_pocket_71 
set sphere_transparency , 0.1 , predicted_pocket_71 
# predicted pocket number 72
select predicted_pocket_72, chain C and resi 907+915+909+918+908+916+910+904+903+917
set_color predicted_pk_72, [ 0, 255, 255 ] 
color predicted_pk_72 , predicted_pocket_72 
show spheres, predicted_pocket_72 
set sphere_scale , 0.3 , predicted_pocket_72 
set sphere_transparency , 0.1 , predicted_pocket_72 
# predicted pocket number 73
select predicted_pocket_73, chain C and resi 658+661+832+660+828
set_color predicted_pk_73, [ 0, 255, 255 ] 
color predicted_pk_73 , predicted_pocket_73 
show spheres, predicted_pocket_73 
set sphere_scale , 0.3 , predicted_pocket_73 
set sphere_transparency , 0.1 , predicted_pocket_73 
# predicted pocket number 74
select predicted_pocket_74, chain A and resi 1033+1030+874+1026+877+870+873+869+1029
set_color predicted_pk_74, [ 0, 255, 255 ] 
color predicted_pk_74 , predicted_pocket_74 
show spheres, predicted_pocket_74 
set sphere_scale , 0.3 , predicted_pocket_74 
set sphere_transparency , 0.1 , predicted_pocket_74 
# predicted pocket number 75
select predicted_pocket_75, ( chain C and resi 808+803+809+807+555 )  or  ( chain A and resi 689+687+688 ) 
set_color predicted_pk_75, [ 0, 255, 255 ] 
color predicted_pk_75 , predicted_pocket_75 
show spheres, predicted_pocket_75 
set sphere_scale , 0.3 , predicted_pocket_75 
set sphere_transparency , 0.1 , predicted_pocket_75 
# predicted pocket number 76
select predicted_pocket_76, ( chain A and resi 449+448 )  or  ( chain B and resi 1051+1056+1046+1058+1042+1053+1045 ) 
set_color predicted_pk_76, [ 0, 255, 255 ] 
color predicted_pk_76 , predicted_pocket_76 
show spheres, predicted_pocket_76 
set sphere_scale , 0.3 , predicted_pocket_76 
set sphere_transparency , 0.1 , predicted_pocket_76 
# predicted pocket number 77
select predicted_pocket_77, chain C and resi 487+469+498+489+491+435+501+496+437+436+497
set_color predicted_pk_77, [ 0, 255, 255 ] 
color predicted_pk_77 , predicted_pocket_77 
show spheres, predicted_pocket_77 
set sphere_scale , 0.3 , predicted_pocket_77 
set sphere_transparency , 0.1 , predicted_pocket_77 
# predicted pocket number 78
select predicted_pocket_78, ( chain C and resi 1046+1059+1056+1042+1058+1053+1051+1045 )  or  ( chain D and resi 449 ) 
set_color predicted_pk_78, [ 0, 255, 255 ] 
color predicted_pk_78 , predicted_pocket_78 
show spheres, predicted_pocket_78 
set sphere_scale , 0.3 , predicted_pocket_78 
set sphere_transparency , 0.1 , predicted_pocket_78 
# predicted pocket number 79
select predicted_pocket_79, chain D and resi 487+505+497+779+489+498+492+437+491+495+501+435+493+436+486+502
set_color predicted_pk_79, [ 0, 255, 255 ] 
color predicted_pk_79 , predicted_pocket_79 
show spheres, predicted_pocket_79 
set sphere_scale , 0.3 , predicted_pocket_79 
set sphere_transparency , 0.1 , predicted_pocket_79 
# predicted pocket number 80
select predicted_pocket_80, chain B and resi 521+528+766+763+525+526+527+801
set_color predicted_pk_80, [ 0, 255, 255 ] 
color predicted_pk_80 , predicted_pocket_80 
show spheres, predicted_pocket_80 
set sphere_scale , 0.3 , predicted_pocket_80 
set sphere_transparency , 0.1 , predicted_pocket_80 
# predicted pocket number 81
select predicted_pocket_81, chain C and resi 879+926+929+925+876+880
set_color predicted_pk_81, [ 0, 255, 255 ] 
color predicted_pk_81 , predicted_pocket_81 
show spheres, predicted_pocket_81 
set sphere_scale , 0.3 , predicted_pocket_81 
set sphere_transparency , 0.1 , predicted_pocket_81 
# predicted pocket number 82
select predicted_pocket_82, chain B and resi 605+959+749+953+748+609+745+608+960+744
set_color predicted_pk_82, [ 0, 255, 255 ] 
color predicted_pk_82 , predicted_pocket_82 
show spheres, predicted_pocket_82 
set sphere_scale , 0.3 , predicted_pocket_82 
set sphere_transparency , 0.1 , predicted_pocket_82 
# predicted pocket number 83
select predicted_pocket_83, chain B and resi 802+534+799+535+552+533+803
set_color predicted_pk_83, [ 0, 255, 255 ] 
color predicted_pk_83 , predicted_pocket_83 
show spheres, predicted_pocket_83 
set sphere_scale , 0.3 , predicted_pocket_83 
set sphere_transparency , 0.1 , predicted_pocket_83 
# predicted pocket number 84
select predicted_pocket_84, chain C and resi 720+970+723+676+719+722+724+721
set_color predicted_pk_84, [ 0, 255, 255 ] 
color predicted_pk_84 , predicted_pocket_84 
show spheres, predicted_pocket_84 
set sphere_scale , 0.3 , predicted_pocket_84 
set sphere_transparency , 0.1 , predicted_pocket_84 
# predicted pocket number 85
select predicted_pocket_85, chain A and resi 627+719+660+675+718+658+626
set_color predicted_pk_85, [ 0, 255, 255 ] 
color predicted_pk_85 , predicted_pocket_85 
show spheres, predicted_pocket_85 
set sphere_scale , 0.3 , predicted_pocket_85 
set sphere_transparency , 0.1 , predicted_pocket_85 
# predicted pocket number 86
select predicted_pocket_86, chain A and resi 929+925+879+876+926+880
set_color predicted_pk_86, [ 0, 255, 255 ] 
color predicted_pk_86 , predicted_pocket_86 
show spheres, predicted_pocket_86 
set sphere_scale , 0.3 , predicted_pocket_86 
set sphere_transparency , 0.1 , predicted_pocket_86 
# predicted pocket number 87
select predicted_pocket_87, chain C and resi 763+526+521+766+527+525+801+528
set_color predicted_pk_87, [ 0, 255, 255 ] 
color predicted_pk_87 , predicted_pocket_87 
show spheres, predicted_pocket_87 
set sphere_scale , 0.3 , predicted_pocket_87 
set sphere_transparency , 0.1 , predicted_pocket_87 
# predicted pocket number 88
select predicted_pocket_88, chain B and resi 965+580+573+981+572+574+985+986+987
set_color predicted_pk_88, [ 0, 255, 255 ] 
color predicted_pk_88 , predicted_pocket_88 
show spheres, predicted_pocket_88 
set sphere_scale , 0.3 , predicted_pocket_88 
set sphere_transparency , 0.1 , predicted_pocket_88 
# predicted pocket number 89
select predicted_pocket_89, ( chain A and resi 1018+459+470+1019+472+1024+461+1021+381 )  or  ( chain B and resi 425+379+423 ) 
set_color predicted_pk_89, [ 0, 255, 255 ] 
color predicted_pk_89 , predicted_pocket_89 
show spheres, predicted_pocket_89 
set sphere_scale , 0.3 , predicted_pocket_89 
set sphere_transparency , 0.1 , predicted_pocket_89 
# predicted pocket number 90
select predicted_pocket_90, chain B and resi 870+874+1033+1040+869+1036+873+1030+1026+1029+866+1037+877
set_color predicted_pk_90, [ 0, 255, 255 ] 
color predicted_pk_90 , predicted_pocket_90 
show spheres, predicted_pocket_90 
set sphere_scale , 0.3 , predicted_pocket_90 
set sphere_transparency , 0.1 , predicted_pocket_90 
# predicted pocket number 91
select predicted_pocket_91, chain D and resi 642+647+632+644+643+639+641+636+640
set_color predicted_pk_91, [ 0, 255, 255 ] 
color predicted_pk_91 , predicted_pocket_91 
show spheres, predicted_pocket_91 
set sphere_scale , 0.3 , predicted_pocket_91 
set sphere_transparency , 0.1 , predicted_pocket_91 
# predicted pocket number 92
select predicted_pocket_92, chain A and resi 676+724+719+723+722+720+721+970
set_color predicted_pk_92, [ 0, 255, 255 ] 
color predicted_pk_92 , predicted_pocket_92 
show spheres, predicted_pocket_92 
set sphere_scale , 0.3 , predicted_pocket_92 
set sphere_transparency , 0.1 , predicted_pocket_92 
# predicted pocket number 93
select predicted_pocket_93, chain D and resi 738+958+608+742+959+605+745+961+741+599+600
set_color predicted_pk_93, [ 0, 255, 255 ] 
color predicted_pk_93 , predicted_pocket_93 
show spheres, predicted_pocket_93 
set sphere_scale , 0.3 , predicted_pocket_93 
set sphere_transparency , 0.1 , predicted_pocket_93 
# predicted pocket number 94
select predicted_pocket_94, ( chain B and resi 589+587+584+585+592+588+593+591 )  or  ( chain C and resi 573+572+575+571+579 ) 
set_color predicted_pk_94, [ 0, 255, 255 ] 
color predicted_pk_94 , predicted_pocket_94 
show spheres, predicted_pocket_94 
set sphere_scale , 0.3 , predicted_pocket_94 
set sphere_transparency , 0.1 , predicted_pocket_94 
# predicted pocket number 95
select predicted_pocket_95, chain A and resi 661+660+828+832
set_color predicted_pk_95, [ 0, 255, 255 ] 
color predicted_pk_95 , predicted_pocket_95 
show spheres, predicted_pocket_95 
set sphere_scale , 0.3 , predicted_pocket_95 
set sphere_transparency , 0.1 , predicted_pocket_95 
# predicted pocket number 96
select predicted_pocket_96, ( chain C and resi 585+592+584+576+578+581+575+579 )  or  ( chain B and resi 579+575+584+585+592+597+576+578+581 ) 
set_color predicted_pk_96, [ 0, 255, 255 ] 
color predicted_pk_96 , predicted_pocket_96 
show spheres, predicted_pocket_96 
set sphere_scale , 0.3 , predicted_pocket_96 
set sphere_transparency , 0.1 , predicted_pocket_96 
# predicted pocket number 97
select predicted_pocket_97, chain D and resi 757+989+810+963+811+955+1000+954+962+814+993+754+990+957+961+950+752+753+589+997+815+758+951+960+985+996+994
set_color predicted_pk_97, [ 0, 255, 255 ] 
color predicted_pk_97 , predicted_pocket_97 
show spheres, predicted_pocket_97 
set sphere_scale , 0.3 , predicted_pocket_97 
set sphere_transparency , 0.1 , predicted_pocket_97 
# predicted pocket number 98
select predicted_pocket_98, ( chain B and resi 489+1019+472+461+459+470+1021 )  or  ( chain A and resi 377+463+379+425 ) 
set_color predicted_pk_98, [ 0, 255, 255 ] 
color predicted_pk_98 , predicted_pocket_98 
show spheres, predicted_pocket_98 
set sphere_scale , 0.3 , predicted_pocket_98 
set sphere_transparency , 0.1 , predicted_pocket_98 
# predicted pocket number 99
select predicted_pocket_99, chain C and resi 779+487+475+477+485+489+488+1017+490+486+784+778+474
set_color predicted_pk_99, [ 0, 255, 255 ] 
color predicted_pk_99 , predicted_pocket_99 
show spheres, predicted_pocket_99 
set sphere_scale , 0.3 , predicted_pocket_99 
set sphere_transparency , 0.1 , predicted_pocket_99 
# predicted pocket number 100
select predicted_pocket_100, chain A and resi 725+634+715+972+724+720+722+726+721+629
set_color predicted_pk_100, [ 0, 255, 255 ] 
color predicted_pk_100 , predicted_pocket_100 
show spheres, predicted_pocket_100 
set sphere_scale , 0.3 , predicted_pocket_100 
set sphere_transparency , 0.1 , predicted_pocket_100 
# predicted pocket number 101
select predicted_pocket_101, chain D and resi 738+731+737+602+729+741+734+601+600
set_color predicted_pk_101, [ 0, 255, 255 ] 
color predicted_pk_101 , predicted_pocket_101 
show spheres, predicted_pocket_101 
set sphere_scale , 0.3 , predicted_pocket_101 
set sphere_transparency , 0.1 , predicted_pocket_101 
# predicted pocket number 102
select predicted_pocket_102, chain C and resi 1041+866+863+1044+862+1040+1037
set_color predicted_pk_102, [ 0, 255, 255 ] 
color predicted_pk_102 , predicted_pocket_102 
show spheres, predicted_pocket_102 
set sphere_scale , 0.3 , predicted_pocket_102 
set sphere_transparency , 0.1 , predicted_pocket_102 
# predicted pocket number 103
select predicted_pocket_103, chain C and resi 720+631+722+724+972+725+726+629+721+715+634
set_color predicted_pk_103, [ 0, 255, 255 ] 
color predicted_pk_103 , predicted_pocket_103 
show spheres, predicted_pocket_103 
set sphere_scale , 0.3 , predicted_pocket_103 
set sphere_transparency , 0.1 , predicted_pocket_103 
# predicted pocket number 104
select predicted_pocket_104, chain D and resi 880+929+876+925+926+879
set_color predicted_pk_104, [ 0, 255, 255 ] 
color predicted_pk_104 , predicted_pocket_104 
show spheres, predicted_pocket_104 
set sphere_scale , 0.3 , predicted_pocket_104 
set sphere_transparency , 0.1 , predicted_pocket_104 
# predicted pocket number 105
select predicted_pocket_105, chain D and resi 744+608+748+960+959+953+745+605+609
set_color predicted_pk_105, [ 0, 255, 255 ] 
color predicted_pk_105 , predicted_pocket_105 
show spheres, predicted_pocket_105 
set sphere_scale , 0.3 , predicted_pocket_105 
set sphere_transparency , 0.1 , predicted_pocket_105 
# predicted pocket number 106
select predicted_pocket_106, chain C and resi 969+970+723+676+677+717+724+725+678+967+716+968+727
set_color predicted_pk_106, [ 0, 255, 255 ] 
color predicted_pk_106 , predicted_pocket_106 
show spheres, predicted_pocket_106 
set sphere_scale , 0.3 , predicted_pocket_106 
set sphere_transparency , 0.1 , predicted_pocket_106 
# predicted pocket number 107
select predicted_pocket_107, chain B and resi 508+440+486+484+483+504+507+511+482
set_color predicted_pk_107, [ 0, 255, 255 ] 
color predicted_pk_107 , predicted_pocket_107 
show spheres, predicted_pocket_107 
set sphere_scale , 0.3 , predicted_pocket_107 
set sphere_transparency , 0.1 , predicted_pocket_107 
# predicted pocket number 108
select predicted_pocket_108, chain C and resi 707+610+1048+708+1049+706+1050+603+607+604+856+709+859+1047+857
set_color predicted_pk_108, [ 0, 255, 255 ] 
color predicted_pk_108 , predicted_pocket_108 
show spheres, predicted_pocket_108 
set sphere_scale , 0.3 , predicted_pocket_108 
set sphere_transparency , 0.1 , predicted_pocket_108 
# predicted pocket number 109
select predicted_pocket_109, chain A and resi 580+965+573+574+985+575+986+572+977+982+978+987+981
set_color predicted_pk_109, [ 0, 255, 255 ] 
color predicted_pk_109 , predicted_pocket_109 
show spheres, predicted_pocket_109 
set sphere_scale , 0.3 , predicted_pocket_109 
set sphere_transparency , 0.1 , predicted_pocket_109 
# predicted pocket number 110
select predicted_pocket_110, chain D and resi 989+992+813+808+812+668+986+690+692+988
set_color predicted_pk_110, [ 0, 255, 255 ] 
color predicted_pk_110 , predicted_pocket_110 
show spheres, predicted_pocket_110 
set sphere_scale , 0.3 , predicted_pocket_110 
set sphere_transparency , 0.1 , predicted_pocket_110 
# predicted pocket number 111
select predicted_pocket_111, chain C and resi 589+1059+951+1001+1002+998+1003+588+590
set_color predicted_pk_111, [ 0, 255, 255 ] 
color predicted_pk_111 , predicted_pocket_111 
show spheres, predicted_pocket_111 
set sphere_scale , 0.3 , predicted_pocket_111 
set sphere_transparency , 0.1 , predicted_pocket_111 
# predicted pocket number 112
select predicted_pocket_112, chain B and resi 477+489+1017+485+486+484+488+487+787+778+779+784+783+475+474+490
set_color predicted_pk_112, [ 0, 255, 255 ] 
color predicted_pk_112 , predicted_pocket_112 
show spheres, predicted_pocket_112 
set sphere_scale , 0.3 , predicted_pocket_112 
set sphere_transparency , 0.1 , predicted_pocket_112 
# predicted pocket number 113
select predicted_pocket_113, ( chain C and resi 1019+487+469+472+1021+1020+489+488+437+436+473+471+470 )  or  ( chain D and resi 425 ) 
set_color predicted_pk_113, [ 0, 255, 255 ] 
color predicted_pk_113 , predicted_pocket_113 
show spheres, predicted_pocket_113 
set sphere_scale , 0.3 , predicted_pocket_113 
set sphere_transparency , 0.1 , predicted_pocket_113 
# predicted pocket number 114
select predicted_pocket_114, chain C and resi 734+602+600+601+977+737+729+741+735+577+738
set_color predicted_pk_114, [ 0, 255, 255 ] 
color predicted_pk_114 , predicted_pocket_114 
show spheres, predicted_pocket_114 
set sphere_scale , 0.3 , predicted_pocket_114 
set sphere_transparency , 0.1 , predicted_pocket_114 
# predicted pocket number 115
select predicted_pocket_115, chain B and resi 520+802+521+528+529+531+532+519+801+798
set_color predicted_pk_115, [ 0, 255, 255 ] 
color predicted_pk_115 , predicted_pocket_115 
show spheres, predicted_pocket_115 
set sphere_scale , 0.3 , predicted_pocket_115 
set sphere_transparency , 0.1 , predicted_pocket_115 
# predicted pocket number 116
select predicted_pocket_116, chain D and resi 1044+866+1041+1040+863+1037+862
set_color predicted_pk_116, [ 0, 255, 255 ] 
color predicted_pk_116 , predicted_pocket_116 
show spheres, predicted_pocket_116 
set sphere_scale , 0.3 , predicted_pocket_116 
set sphere_transparency , 0.1 , predicted_pocket_116 
# predicted pocket number 117
select predicted_pocket_117, chain B and resi 734+599+741+737+600+738+578+729+602+577
set_color predicted_pk_117, [ 0, 255, 255 ] 
color predicted_pk_117 , predicted_pocket_117 
show spheres, predicted_pocket_117 
set sphere_scale , 0.3 , predicted_pocket_117 
set sphere_transparency , 0.1 , predicted_pocket_117 
# predicted pocket number 118
select predicted_pocket_118, chain A and resi 1040+866+1044+1041+862+1037+863
set_color predicted_pk_118, [ 0, 255, 255 ] 
color predicted_pk_118 , predicted_pocket_118 
show spheres, predicted_pocket_118 
set sphere_scale , 0.3 , predicted_pocket_118 
set sphere_transparency , 0.1 , predicted_pocket_118 
# predicted pocket number 119
select predicted_pocket_119, chain D and resi 802+519+798+531+520+529+521+532+528+801
set_color predicted_pk_119, [ 0, 255, 255 ] 
color predicted_pk_119 , predicted_pocket_119 
show spheres, predicted_pocket_119 
set sphere_scale , 0.3 , predicted_pocket_119 
set sphere_transparency , 0.1 , predicted_pocket_119 
# predicted pocket number 120
select predicted_pocket_120, chain B and resi 712+640+730+704+711+702+637+729+602+638+710
set_color predicted_pk_120, [ 0, 255, 255 ] 
color predicted_pk_120 , predicted_pocket_120 
show spheres, predicted_pocket_120 
set sphere_scale , 0.3 , predicted_pocket_120 
set sphere_transparency , 0.1 , predicted_pocket_120 
# predicted pocket number 121
select predicted_pocket_121, chain B and resi 876+926+925+929+880+879
set_color predicted_pk_121, [ 0, 255, 255 ] 
color predicted_pk_121 , predicted_pocket_121 
show spheres, predicted_pocket_121 
set sphere_scale , 0.3 , predicted_pocket_121 
set sphere_transparency , 0.1 , predicted_pocket_121 
# predicted pocket number 122
select predicted_pocket_122, chain D and resi 549+542+386+552+387+544+548+534+535+545+543
set_color predicted_pk_122, [ 0, 255, 255 ] 
color predicted_pk_122 , predicted_pocket_122 
show spheres, predicted_pocket_122 
set sphere_scale , 0.3 , predicted_pocket_122 
set sphere_transparency , 0.1 , predicted_pocket_122 
# predicted pocket number 123
select predicted_pocket_123, chain D and resi 574+987+986+985+580+572+981+965
set_color predicted_pk_123, [ 0, 255, 255 ] 
color predicted_pk_123 , predicted_pocket_123 
show spheres, predicted_pocket_123 
set sphere_scale , 0.3 , predicted_pocket_123 
set sphere_transparency , 0.1 , predicted_pocket_123 
# predicted pocket number 124
select predicted_pocket_124, ( chain D and resi 1028+1027+1024+1025+1021 )  or  ( chain C and resi 424+423+425 ) 
set_color predicted_pk_124, [ 0, 255, 255 ] 
color predicted_pk_124 , predicted_pocket_124 
show spheres, predicted_pocket_124 
set sphere_scale , 0.3 , predicted_pocket_124 
set sphere_transparency , 0.1 , predicted_pocket_124 
# predicted pocket number 125
select predicted_pocket_125, chain B and resi 536+454+542+539+535+511+481+482+538+537+480+515
set_color predicted_pk_125, [ 0, 255, 255 ] 
color predicted_pk_125 , predicted_pocket_125 
show spheres, predicted_pocket_125 
set sphere_scale , 0.3 , predicted_pocket_125 
set sphere_transparency , 0.1 , predicted_pocket_125 
# predicted pocket number 126
select predicted_pocket_126, chain C and resi 802+798+521+529+520+519+801+528+532+531
set_color predicted_pk_126, [ 0, 255, 255 ] 
color predicted_pk_126 , predicted_pocket_126 
show spheres, predicted_pocket_126 
set sphere_scale , 0.3 , predicted_pocket_126 
set sphere_transparency , 0.1 , predicted_pocket_126 
# predicted pocket number 127
select predicted_pocket_127, ( chain D and resi 558+992+810+813+814+808+552+809+562+555+995+556+996+559+999 )  or  ( chain B and resi 571 ) 
set_color predicted_pk_127, [ 0, 255, 255 ] 
color predicted_pk_127 , predicted_pocket_127 
show spheres, predicted_pocket_127 
set sphere_scale , 0.3 , predicted_pocket_127 
set sphere_transparency , 0.1 , predicted_pocket_127 
# predicted pocket number 128
select predicted_pocket_128, chain B and resi 1044+1040+862+863+866+1037+1041
set_color predicted_pk_128, [ 0, 255, 255 ] 
color predicted_pk_128 , predicted_pocket_128 
show spheres, predicted_pocket_128 
set sphere_scale , 0.3 , predicted_pocket_128 
set sphere_transparency , 0.1 , predicted_pocket_128 
# predicted pocket number 129
select predicted_pocket_129, ( chain A and resi 593+592+584+597+600+596+599+578+581 )  or  ( chain D and resi 578 ) 
set_color predicted_pk_129, [ 0, 255, 255 ] 
color predicted_pk_129 , predicted_pocket_129 
show spheres, predicted_pocket_129 
set sphere_scale , 0.3 , predicted_pocket_129 
set sphere_transparency , 0.1 , predicted_pocket_129 
# predicted pocket number 130
select predicted_pocket_130, ( chain B and resi 381+380+459+379+423+461 )  or  ( chain A and resi 379+461+381 ) 
set_color predicted_pk_130, [ 0, 255, 255 ] 
color predicted_pk_130 , predicted_pocket_130 
show spheres, predicted_pocket_130 
set sphere_scale , 0.3 , predicted_pocket_130 
set sphere_transparency , 0.1 , predicted_pocket_130 
# predicted pocket number 131
select predicted_pocket_131, chain A and resi 690+692+689+965+988+688+986+963+691+989+992
set_color predicted_pk_131, [ 0, 255, 255 ] 
color predicted_pk_131 , predicted_pocket_131 
show spheres, predicted_pocket_131 
set sphere_scale , 0.3 , predicted_pocket_131 
set sphere_transparency , 0.1 , predicted_pocket_131 
# predicted pocket number 132
select predicted_pocket_132, chain B and resi 671+691+672+693+678+679+670
set_color predicted_pk_132, [ 0, 255, 255 ] 
color predicted_pk_132 , predicted_pocket_132 
show spheres, predicted_pocket_132 
set sphere_scale , 0.3 , predicted_pocket_132 
set sphere_transparency , 0.1 , predicted_pocket_132 
# predicted pocket number 133
select predicted_pocket_133, ( chain D and resi 577+738+592+584+581+576+596+734+599+597+578+600 )  or  ( chain A and resi 578 ) 
set_color predicted_pk_133, [ 0, 255, 255 ] 
color predicted_pk_133 , predicted_pocket_133 
show spheres, predicted_pocket_133 
set sphere_scale , 0.3 , predicted_pocket_133 
set sphere_transparency , 0.1 , predicted_pocket_133 
# predicted pocket number 134
select predicted_pocket_134, chain D and resi 706+857+708+603+859+856+1049+607+709+855+610+707+703
set_color predicted_pk_134, [ 0, 255, 255 ] 
color predicted_pk_134 , predicted_pocket_134 
show spheres, predicted_pocket_134 
set sphere_scale , 0.3 , predicted_pocket_134 
set sphere_transparency , 0.1 , predicted_pocket_134 
# predicted pocket number 135
select predicted_pocket_135, chain D and resi 924+934+836+835+927+917+919+930+931+926
set_color predicted_pk_135, [ 0, 255, 255 ] 
color predicted_pk_135 , predicted_pocket_135 
show spheres, predicted_pocket_135 
set sphere_scale , 0.3 , predicted_pocket_135 
set sphere_transparency , 0.1 , predicted_pocket_135 
# predicted pocket number 136
select predicted_pocket_136, chain A and resi 707+856+603+859+1048+709+706+607+857+610+1047+708+1049
set_color predicted_pk_136, [ 0, 255, 255 ] 
color predicted_pk_136 , predicted_pocket_136 
show spheres, predicted_pocket_136 
set sphere_scale , 0.3 , predicted_pocket_136 
set sphere_transparency , 0.1 , predicted_pocket_136 
# predicted pocket number 137
select predicted_pocket_137, chain A and resi 931+836+927+917+835+919+924+926+930
set_color predicted_pk_137, [ 0, 255, 255 ] 
color predicted_pk_137 , predicted_pocket_137 
show spheres, predicted_pocket_137 
set sphere_scale , 0.3 , predicted_pocket_137 
set sphere_transparency , 0.1 , predicted_pocket_137 
# predicted pocket number 138
select predicted_pocket_138, chain B and resi 688+965+988+691+689+692+989+986+690
set_color predicted_pk_138, [ 0, 255, 255 ] 
color predicted_pk_138 , predicted_pocket_138 
show spheres, predicted_pocket_138 
set sphere_scale , 0.3 , predicted_pocket_138 
set sphere_transparency , 0.1 , predicted_pocket_138 
# predicted pocket number 139
select predicted_pocket_139, chain B and resi 534+542+799+545+548+535+543+551+552
set_color predicted_pk_139, [ 0, 255, 255 ] 
color predicted_pk_139 , predicted_pocket_139 
show spheres, predicted_pocket_139 
set sphere_scale , 0.3 , predicted_pocket_139 
set sphere_transparency , 0.1 , predicted_pocket_139 
# predicted pocket number 140
select predicted_pocket_140, chain B and resi 846+914+836+834+837+915+832
set_color predicted_pk_140, [ 0, 255, 255 ] 
color predicted_pk_140 , predicted_pocket_140 
show spheres, predicted_pocket_140 
set sphere_scale , 0.3 , predicted_pocket_140 
set sphere_transparency , 0.1 , predicted_pocket_140 
# predicted pocket number 141
select predicted_pocket_141, chain B and resi 977+573+982+981+965+978+574+575
set_color predicted_pk_141, [ 0, 255, 255 ] 
color predicted_pk_141 , predicted_pocket_141 
show spheres, predicted_pocket_141 
set sphere_scale , 0.3 , predicted_pocket_141 
set sphere_transparency , 0.1 , predicted_pocket_141 
# predicted pocket number 142
select predicted_pocket_142, chain D and resi 589+588+951+944+1003+1001+948+1059+1054+1053+1002+590+952+1005+998
set_color predicted_pk_142, [ 0, 255, 255 ] 
color predicted_pk_142 , predicted_pocket_142 
show spheres, predicted_pocket_142 
set sphere_scale , 0.3 , predicted_pocket_142 
set sphere_transparency , 0.1 , predicted_pocket_142 
# predicted pocket number 143
select predicted_pocket_143, ( chain C and resi 585+582+578+581 )  or  ( chain B and resi 585+578+582+581 ) 
set_color predicted_pk_143, [ 0, 255, 255 ] 
color predicted_pk_143 , predicted_pocket_143 
show spheres, predicted_pocket_143 
set sphere_scale , 0.3 , predicted_pocket_143 
set sphere_transparency , 0.1 , predicted_pocket_143 
# predicted pocket number 144
select predicted_pocket_144, chain C and resi 514+536+531+515+538+532+517+530
set_color predicted_pk_144, [ 0, 255, 255 ] 
color predicted_pk_144 , predicted_pocket_144 
show spheres, predicted_pocket_144 
set sphere_scale , 0.3 , predicted_pocket_144 
set sphere_transparency , 0.1 , predicted_pocket_144 
# predicted pocket number 145
select predicted_pocket_145, ( chain D and resi 571+570 )  or  ( chain B and resi 556+555+552+559 ) 
set_color predicted_pk_145, [ 0, 255, 255 ] 
color predicted_pk_145 , predicted_pocket_145 
show spheres, predicted_pocket_145 
set sphere_scale , 0.3 , predicted_pocket_145 
set sphere_transparency , 0.1 , predicted_pocket_145 
# predicted pocket number 146
select predicted_pocket_146, chain D and resi 989+963+986+689+690+691+692+988+965
set_color predicted_pk_146, [ 0, 255, 255 ] 
color predicted_pk_146 , predicted_pocket_146 
show spheres, predicted_pocket_146 
set sphere_scale , 0.3 , predicted_pocket_146 
set sphere_transparency , 0.1 , predicted_pocket_146 
# predicted pocket number 147
select predicted_pocket_147, chain B and resi 709+857+708+607+610+707+856+603+859+706
set_color predicted_pk_147, [ 0, 255, 255 ] 
color predicted_pk_147 , predicted_pocket_147 
show spheres, predicted_pocket_147 
set sphere_scale , 0.3 , predicted_pocket_147 
set sphere_transparency , 0.1 , predicted_pocket_147 
# predicted pocket number 148
select predicted_pocket_148, chain D and resi 656+619+847+625+617+658+751+623+660+616+620
set_color predicted_pk_148, [ 0, 255, 255 ] 
color predicted_pk_148 , predicted_pocket_148 
show spheres, predicted_pocket_148 
set sphere_scale , 0.3 , predicted_pocket_148 
set sphere_transparency , 0.1 , predicted_pocket_148 
# predicted pocket number 149
select predicted_pocket_149, chain B and resi 589+951+1053+1059+1003+948+1001+1054+952
set_color predicted_pk_149, [ 0, 255, 255 ] 
color predicted_pk_149 , predicted_pocket_149 
show spheres, predicted_pocket_149 
set sphere_scale , 0.3 , predicted_pocket_149 
set sphere_transparency , 0.1 , predicted_pocket_149 
# predicted pocket number 150
select predicted_pocket_150, ( chain D and resi 585+582+581 )  or  ( chain A and resi 584+582+578+585+581 ) 
set_color predicted_pk_150, [ 0, 255, 255 ] 
color predicted_pk_150 , predicted_pocket_150 
show spheres, predicted_pocket_150 
set sphere_scale , 0.3 , predicted_pocket_150 
set sphere_transparency , 0.1 , predicted_pocket_150 
# predicted pocket number 151
select predicted_pocket_151, chain C and resi 689+692+965+986+690+989+691+988+963
set_color predicted_pk_151, [ 0, 255, 255 ] 
color predicted_pk_151 , predicted_pocket_151 
show spheres, predicted_pocket_151 
set sphere_scale , 0.3 , predicted_pocket_151 
set sphere_transparency , 0.1 , predicted_pocket_151 
select TP, true_pocket* and predicted_pocket*
color green, TP
