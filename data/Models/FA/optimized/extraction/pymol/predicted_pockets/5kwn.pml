load ../../../PDB/pdb5kwn.ent
# predicted pocket number 0
select predicted_pocket_0, ( chain A and resi 426+427+469+375+424+649+470+512+595+425+598+468+509+376+556+377+597+553+511+554+555+467+650+510+378 )  or  ( chain U and resi 356 ) 
set_color predicted_pk_0, [ 0, 255, 255 ] 
color predicted_pk_0 , predicted_pocket_0 
show spheres, predicted_pocket_0 
set sphere_scale , 0.3 , predicted_pocket_0 
set sphere_transparency , 0.1 , predicted_pocket_0 
# predicted pocket number 1
select predicted_pocket_1, chain A and resi 577+514+542+520+560+517+578+516+532+561
set_color predicted_pk_1, [ 0, 255, 255 ] 
color predicted_pk_1 , predicted_pocket_1 
show spheres, predicted_pocket_1 
set sphere_scale , 0.3 , predicted_pocket_1 
set sphere_transparency , 0.1 , predicted_pocket_1 
# predicted pocket number 2
select predicted_pocket_2, chain A and resi 403+358+404+361+360+359+406+411+363+408
set_color predicted_pk_2, [ 0, 255, 255 ] 
color predicted_pk_2 , predicted_pocket_2 
show spheres, predicted_pocket_2 
set sphere_scale , 0.3 , predicted_pocket_2 
set sphere_transparency , 0.1 , predicted_pocket_2 
select TP, true_pocket* and predicted_pocket*
color green, TP
