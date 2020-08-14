INTRODUCTION 



## PickPocket

  - Stable releases can be downloaded from <git> 
  - Documentation : ./README.md
  - Installation : ./INSTALL.md

# Code and license

PickPocket is open-source, released under GNU GPLv3 license.
You are welcome to redistribute it under [certain conditions](see LICENSE).
This software is for research use only and comes with no warranty.

The development code is available on <git>.
Bug reports, issues and patches are welcome.


# The IMGT team

PickPocket is developed by Benjamin Viart and Claudio Lorenzi
from IGH, CNRS. Montpellier France.


# References

If you use PickPocket for your research, please cite the following references:

Comming soon ! 

################################################################################

INSTRUCTION  


The objective of PickPocket is to enable researcher to learn more from pocket ligand interaction using 
protein structure from the PDB [REF]. Similar ligands have common structural and chemical caracteristics and therefor binding pocket for those ligand must have similar corresponding features.Features used in the software are gathered from the fpocket [REF] and stride[REF] software. In order to extract those features for any desired family or group of ligand we must proceed as follow : 

# 1 Selection of ligands (3 letters code ) and corresponding PDB files. ( Manual ) 
This methodology was applied on the case of fatty acid molecules as ligand. Any set of ligands can be used in this methodology as long as there is enough of them ( around 30 pockets-ligand complexes ) 

Using the Protein Data Bank website : 
  - Search => Ligand => Start Ligand Search => SMILE (CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC(O)=O  ) => Load SMILES => Submit Query for superstructure, molecular weight 100 or more => ligands of at least 7C => Filtres. Human, XRAY, 70 % Homology 
We recommend to download all the PDB files into o folder PDB/ that will be used by the PickPocket program later on. 

  - Extract the ligands name from the selected PDB files. 

To help build a file containing the ligand code two files can be found in the data/ folder. "het_dictionary.txt" contains all possible ligand from the PDB. "hetnamepdb.tsv" contains a list of all PDB identifiers and the ligands they contains. '

Once the two files are ready you can run the PickPocket

*******
Exemple files can be found at : data/Fatty_Acid_input/

ligand_codeFA contains the selected code of fatty acids ( or similar ) ligands 
pdb_listFA contains the corresponding list of PDB identifiers. 

To improve the quality of the prediction it is recommended to add a selection of negative PDB structures. All the pocket from this set will increase the diversity of non-binding pockets and help the model accuracy. 

pdb_negativeFA contains a list of PDB diverse enough while none of them contains any desired ligands. 

# 2 Computing the pocket descriptive matrix 

This step will (a)compute all the pockets from the structures, (b)compute the descriptive values for each pockets, 
(c) assign TRUE or FALSE to each pocket based on distance with selected ligands and (d) output a training matrix.

./src/pickPocket.sh -i pdbID_list -l ligand_3lettercode_list -OutputFolder -PDB_Folder
For more information ./src/pickPocket.sh --help

*****
Exemple :
``` bash 
./src/pickPocket.sh -i data/Fatty_Acid_input/pdb_listFA -l data/Fatty_Acid_input/ligand_codeFA  -o OUT/ -p PDB/
``` 
*****
Once pickpocket finished the results matrix can be found at OUT/train.tsv 

		!!!
	At this point it is recommended, 
	if possible, to do a manual checking of the pockets label. 
		!!!

# 3 Training the model and selecting the results  

From the matrix we can now train a model. Different type of model can be use multilayer perceptron *mlp*, random forest *rf*' and  support vector machine *svm* ( by default mlp). The cross validation help limiting the over fitness. choose according to the sample size and ration of TRUE/FALSE. Once the model is good enough it will be used to parse the file of precomputed pockets and select the one with a score above the desired. 

./src/neuralNetwork.sh -i trainingMatrix.tsv -o Result.tsv -c crossValidation -t modelType -s Score


*****
Exemple :
``` bash 
./src/neuralNetwork.sh -i data/Fatty_Acid_Training/FA_MannuallyCurated_Train.tsv -o ResultsFA.tsv -c 5 -t mlp -s 1
``` 
*****





