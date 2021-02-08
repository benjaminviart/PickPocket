load ../../../PDB/pdb6fu9.ent
# predicted pocket number 0
select predicted_pocket_0, ( chain B and resi 39+42+40+41+44+43 )  or  ( chain D and resi 40+38+42+64+44+39 )  or  ( chain C and resi 220+222+212+208+227+209+204+225+205+224+201 )  or  ( chain A and resi 222+204+205+227+208+201 ) 
set_color predicted_pk_0, [ 0, 255, 255 ] 
color predicted_pk_0 , predicted_pocket_0 
show spheres, predicted_pocket_0 
set sphere_scale , 0.3 , predicted_pocket_0 
set sphere_transparency , 0.1 , predicted_pocket_0 
# predicted pocket number 1
select predicted_pocket_1, ( chain A and resi 191+257+229+231+223+193 )  or  ( chain B and resi 69+56+46+43+44+42+68 ) 
set_color predicted_pk_1, [ 0, 255, 255 ] 
color predicted_pk_1 , predicted_pocket_1 
show spheres, predicted_pocket_1 
set sphere_scale , 0.3 , predicted_pocket_1 
set sphere_transparency , 0.1 , predicted_pocket_1 
# predicted pocket number 2
select predicted_pocket_2, ( chain A and resi 191+257+259 )  or  ( chain B and resi 87+95+70+74+89+75+71+76 ) 
set_color predicted_pk_2, [ 0, 255, 255 ] 
color predicted_pk_2 , predicted_pocket_2 
show spheres, predicted_pocket_2 
set sphere_scale , 0.3 , predicted_pocket_2 
set sphere_transparency , 0.1 , predicted_pocket_2 
# predicted pocket number 3
select predicted_pocket_3, ( chain D and resi 75+89+71+76+70+74+87 )  or  ( chain C and resi 259+257+191 ) 
set_color predicted_pk_3, [ 0, 255, 255 ] 
color predicted_pk_3 , predicted_pocket_3 
show spheres, predicted_pocket_3 
set sphere_scale , 0.3 , predicted_pocket_3 
set sphere_transparency , 0.1 , predicted_pocket_3 
# predicted pocket number 4
select predicted_pocket_4, ( chain D and resi 46+43+42+44+69+56+68 )  or  ( chain C and resi 193+229+231+257+191+223+221 ) 
set_color predicted_pk_4, [ 0, 255, 255 ] 
color predicted_pk_4 , predicted_pocket_4 
show spheres, predicted_pocket_4 
set sphere_scale , 0.3 , predicted_pocket_4 
set sphere_transparency , 0.1 , predicted_pocket_4 
# predicted pocket number 5
select predicted_pocket_5, ( chain B and resi 31+37+30 )  or  ( chain D and resi 57+40+109+55+108+38+111 ) 
set_color predicted_pk_5, [ 0, 255, 255 ] 
color predicted_pk_5 , predicted_pocket_5 
show spheres, predicted_pocket_5 
set sphere_scale , 0.3 , predicted_pocket_5 
set sphere_transparency , 0.1 , predicted_pocket_5 
select TP, true_pocket* and predicted_pocket*
color green, TP
