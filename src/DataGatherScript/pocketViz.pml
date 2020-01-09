from pymol import cmd,stored

cd /home/benjamin/Documents/ProjetE3/PickPocketV2/Output/6GQI_NoHET_out/
load 6GQI_NoHET.pml
load /home/benjamin/Documents/ProjetE3/PickPocketV2/Output/6GQI.pdb

util.cbc(selection='(all)',first_color=7,quiet=1,legacy=0,_self=cmd)

#select pockets, resn STP
stored.list=[]
cmd.iterate("(resn STP)","stored.list.append(resi)")	#read info about residues STP
#print stored.list
lastSTP=stored.list[-1]	#get the index of the last residu
hide lines, resn STP

#show spheres, resn STP
for my_index in range(1,int(lastSTP)+1): cmd.select("pocket"+str(my_index), "resn STP and resi "+str(my_index))
for my_index in range(2,int(lastSTP)+2): cmd.color(my_index,"pocket"+str(my_index))
for my_index in range(1,int(lastSTP)+1): cmd.show("spheres","pocket"+str(my_index))
for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_scale","0.3","pocket"+str(my_index))
for my_index in range(1,int(lastSTP)+1):

cmd.set("sphere_transparency","0.1","pocket"+str(my_index))




# color and show organic
bg_color white
show cartoon
hide lines

select organic
show sphere, sele
color red, sele

