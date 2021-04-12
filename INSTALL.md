

# PickPocket Program - finding out the correct pocket for YOU ! 


# Installation instructions
Pickpocket is available in pip using
```
pip install pickpocket
```
And requires [fpocket2](#fpocket2) and [stride](#stride)
The software is also embedded in a Docker image, that can be used with Docker and Singularity. 
We strongly recommend to [use Singularity](#singularity) to run your analysis in a safe and reproducible environment.
In case you have root access and are confident with it, [Docker usage](#docker) is also recomended. 
Finally, if you want to implement the code or just you don't like images, you can [install it](#local). 

This program only run on linux using command line.


## <a name="singularity"></a> Using Singularity

To use singularity, you just need to give the following commands:

``` bash

singularity exec docker://cloxd/pickpocket:test ...

```
The enviroment won't change, so all the local folders will be visible to the singularity instance.
In the image, the two main script are linked, so you can use them simply using #pickPocket# and #neuralNetwork#. If you need to use other scripts or the sample data, they are are located in /PickPocket/
So, for example, to run the showcase, you can use the following commands:

``` bash
singularity exec docker://cloxd/pickpocket:test pickPocket \
	 -i /PickPocket/data/Fatty_Acid_input/pdb_listFA \ 
	 -n /PickPocket/data/Fatty_Acid_input/pdb_negativeFA \
	 -l /PickPocket/data/Fatty_Acid_input/ligand_codeFA \
	 -o ./OUT/ -p ./PDB/ -v

singularity exec docker://cloxd/pickpocket:test neuralNetwork \
	 -i /PickPocket/data/Fatty_Acid_Training/FA_MannuallyCurated_Train.tsv \
	 -o ./OUT/ResultsFA.tsv -c 5 -t mlp -s 1
```
The OUT and PDB directory will be created in the current directory

## <a name="docker"></a> Using Docker
Docker acts sligthly different respect to singularity. First of all, you will need the root access ( sudo ) and furthermore you will work in a more close environment: you will have to mount the directory that you want to make visible at each run.
The same example shown in singularity can be reproduced with docker like this:

```bash
mkdir ./PDB ./OUT
sudo docker run --rm \
	-v ${PWD}/PDB:/PickPocket/PDB \
	-v ${PWD}/OUT:/PickPocket/OUT \
	cloxd/pickpocket:test \
	pickPocket -i data/Fatty_Acid_input/pdb_listFA \
	 			-n data/Fatty_Acid_input/pdb_negativeFA \
	 			-l data/Fatty_Acid_input/ligand_codeFA \
	 			-o OUT/ -p PDB/ -v
	 
sudo docker run --rm -it \
	-v ${PWD}/PDB:/PickPocket/PDB \
	-v ${PWD}/OUT:/PickPocket/OUT \
	cloxd/pickpocket:test \
	neuralNetwork -i data/Fatty_Acid_Training/FA_MannuallyCurated_Train.tsv \
	-o ./OUT/ResultsFA.tsv -c 5 -t mlp -s 1

```
The OUT and PDB directory have to be created in the current directory and mounted in the directory


## <a name="local"></a> Install it locally
PickPocket requires the following dependencies: 
pdb_tools 
fpocket 
R 
python 


###  Install for required software ( for debian/ubuntu ) 

The whole dependencies for a debian distribution can be installed using the following commands

``` bash
pip install pickpocket

```
### <a name="fpocket2"></a> install fpocket2
Then install [fpocket2](https://sourceforge.net/projects/fpocket/)

``` bash 
wget https://netix.dl.sourceforge.net/project/fpocket/fpocket2.tar.gz
tar -xzf fpocket2.tar.gz
cd ./fpocket2/
awk '{ gsub(/\$\(LINKER\) \$\(LFLAGS\) \$\^ \-o \$@/, "$(LINKER) $^ -o $@ $(LFLAGS)"); print }' ./makefile > ./makefile.tmp 
mv ./makefile.tmp ./makefile
make 
make test 
sudo make install
cd ..
rm -fr ./fpocket2/ 

```
### <a name="stride"></a> install stride

```bash
wget http://webclu.bio.wzw.tum.de/stride/stride.tar.gz
tar -zxf stride.tar.gz 
make 
mv ./stride /usr/bin/
```
