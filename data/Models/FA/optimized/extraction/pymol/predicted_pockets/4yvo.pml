load ../../../PDB/pdb4yvo.ent
# predicted pocket number 0
select predicted_pocket_0, chain A and resi 281+269+284+240+266+243+280+285+244+278+247
set_color predicted_pk_0, [ 0, 255, 255 ] 
color predicted_pk_0 , predicted_pocket_0 
show spheres, predicted_pocket_0 
set sphere_scale , 0.3 , predicted_pocket_0 
set sphere_transparency , 0.1 , predicted_pocket_0 
# predicted pocket number 1
select predicted_pocket_1, chain A and resi 207+284+214+248+251+211+244+226+247
set_color predicted_pk_1, [ 0, 255, 255 ] 
color predicted_pk_1 , predicted_pocket_1 
show spheres, predicted_pocket_1 
set sphere_scale , 0.3 , predicted_pocket_1 
set sphere_transparency , 0.1 , predicted_pocket_1 
select TP, true_pocket* and predicted_pocket*
color green, TP
