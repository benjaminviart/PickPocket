load ../../../PDB/pdb5kwn.ent
# predicted pocket number 0
select predicted_pocket_0, ( chain A and resi 555+553+427+556+512+377+597+554+598+595+375+650+469+425+649+378+468+470+424+510+376+467+511+426+509 )  or  ( chain U and resi 356 ) 
set_color predicted_pk_0, [ 0, 255, 255 ] 
color predicted_pk_0 , predicted_pocket_0 
show spheres, predicted_pocket_0 
set sphere_scale , 0.3 , predicted_pocket_0 
set sphere_transparency , 0.1 , predicted_pocket_0 
# predicted pocket number 1
select predicted_pocket_1, chain A and resi 542+577+532+514+560+516+561+520+517+578
set_color predicted_pk_1, [ 0, 255, 255 ] 
color predicted_pk_1 , predicted_pocket_1 
show spheres, predicted_pocket_1 
set sphere_scale , 0.3 , predicted_pocket_1 
set sphere_transparency , 0.1 , predicted_pocket_1 
# predicted pocket number 2
select predicted_pocket_2, chain A and resi 408+403+363+404+411+360+359+406+361+358
set_color predicted_pk_2, [ 0, 255, 255 ] 
color predicted_pk_2 , predicted_pocket_2 
show spheres, predicted_pocket_2 
set sphere_scale , 0.3 , predicted_pocket_2 
set sphere_transparency , 0.1 , predicted_pocket_2 
select TP, true_pocket* and predicted_pocket*
color green, TP
