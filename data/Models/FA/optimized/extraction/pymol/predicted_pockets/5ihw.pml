load ../../../PDB/pdb5ihw.ent
# predicted pocket number 0
select predicted_pocket_0, chain A and resi 362+337+392+308+424+344+301+437+339+364+293+302+336+388+588+309+331+395+423+306+299+390+347+342+508+421+304+587+422+341+340+345+346+393+338+307+305+438+389+420
set_color predicted_pk_0, [ 0, 255, 255 ] 
color predicted_pk_0 , predicted_pocket_0 
show spheres, predicted_pocket_0 
set sphere_scale , 0.3 , predicted_pocket_0 
set sphere_transparency , 0.1 , predicted_pocket_0 
# predicted pocket number 1
select predicted_pocket_1, chain A and resi 444+342+443+341+340+441+442+440+343
set_color predicted_pk_1, [ 0, 255, 255 ] 
color predicted_pk_1 , predicted_pocket_1 
show spheres, predicted_pocket_1 
set sphere_scale , 0.3 , predicted_pocket_1 
set sphere_transparency , 0.1 , predicted_pocket_1 
# predicted pocket number 2
select predicted_pocket_2, chain A and resi 352+351+386+350+384+314+385
set_color predicted_pk_2, [ 0, 255, 255 ] 
color predicted_pk_2 , predicted_pocket_2 
show spheres, predicted_pocket_2 
set sphere_scale , 0.3 , predicted_pocket_2 
set sphere_transparency , 0.1 , predicted_pocket_2 
select TP, true_pocket* and predicted_pocket*
color green, TP
