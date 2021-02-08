load ../../../PDB/pdb5ihw.ent
# predicted pocket number 0
select predicted_pocket_0, chain A and resi 307+337+302+342+293+587+393+346+390+309+339+421+345+336+423+588+362+422+304+389+438+306+392+388+308+305+331+395+420+424+340+338+344+341+437+364+347+508+301+299
set_color predicted_pk_0, [ 0, 255, 255 ] 
color predicted_pk_0 , predicted_pocket_0 
show spheres, predicted_pocket_0 
set sphere_scale , 0.3 , predicted_pocket_0 
set sphere_transparency , 0.1 , predicted_pocket_0 
# predicted pocket number 1
select predicted_pocket_1, chain A and resi 340+444+440+443+342+441+343+341+442
set_color predicted_pk_1, [ 0, 255, 255 ] 
color predicted_pk_1 , predicted_pocket_1 
show spheres, predicted_pocket_1 
set sphere_scale , 0.3 , predicted_pocket_1 
set sphere_transparency , 0.1 , predicted_pocket_1 
# predicted pocket number 2
select predicted_pocket_2, chain A and resi 314+352+386+351+384+385+350
set_color predicted_pk_2, [ 0, 255, 255 ] 
color predicted_pk_2 , predicted_pocket_2 
show spheres, predicted_pocket_2 
set sphere_scale , 0.3 , predicted_pocket_2 
set sphere_transparency , 0.1 , predicted_pocket_2 
select TP, true_pocket* and predicted_pocket*
color green, TP
