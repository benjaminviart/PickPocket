load ../../../PDB/pdb1hmt.ent
# ligand_0
select ligand_0, chain A and resi 133 
set_color lg_0, [ 255, 0, 0 ] 
color lg_0 , ligand_0 
show spheres, ligand_0 
set sphere_scale , 1 , ligand_0 
set sphere_transparency , 0.1 , ligand_0 
# true pocket number 0
select true_pocket_0, chain A and resi 126+33+58+20+115+57+38+55+78+76+128+53
set_color true_pk_0, [ 0, 0, 255 ] 
color true_pk_0 , true_pocket_0 
show spheres, true_pocket_0 
set sphere_scale , 0.3 , true_pocket_0 
set sphere_transparency , 0.1 , true_pocket_0 
# predicted pocket number 0
select predicted_pocket_0, chain A and resi 93+58+33+106+51+128+60+95+20+29+24+74+104+16+77+76+64+19+126+84+115+26+40+72+23+75+53+117+57+62+38+25+78+91
set_color predicted_pk_0, [ 0, 255, 255 ] 
color predicted_pk_0 , predicted_pocket_0 
show spheres, predicted_pocket_0 
set sphere_scale , 0.3 , predicted_pocket_0 
set sphere_transparency , 0.1 , predicted_pocket_0 
select TP, true_pocket* and predicted_pocket*
color green, TP