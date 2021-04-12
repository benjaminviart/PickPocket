
INTRODUCTION

## PickPocket

-   Stable releases can be downloaded from
-   Documentation : ./README.md
-   Installation : ./INSTALL.md

# Code and license

PickPocket is open-source, released under GNU GPLv3 license. You are welcome to redistribute it under  [certain conditions](see LICENSE). This software is for research use only and comes with no warranty.

The development code is available on  . Bug reports, issues and patches are welcome.

# The team

PickPocket is developed by Benjamin Viart ( [IMGT]( https://www.igh.cnrs.fr/en/research/departments/molecular-bases-of-human-diseases/4-imgt-the-international-immunogenetics-information-system ) )  and Claudio Lorenzi ( [Machine learning and gene regulation](https://www.igh.cnrs.fr/en/research/departments/genome-dynamics/157-machine-learning-and-gene-regulation) ) from IGH, CNRS. Montpellier France.

# References

If you use PickPocket for your research, please cite the following references:

Comming soon !



# Tutorial  

The objective of PickPocket is to enable researcher to learn more from pocket ligand interaction using protein structure from the PDB [REF]. Similar ligands have common structural and chemical caracteristics and therefor binding pocket for those ligand must have similar corresponding features.Features used in the software are gathered from the fpocket [REF] and stride[REF] software. In order to extract those features for any desired family or group of ligand we must proceed as follow :

# 1) Selection of ligands (3 letters code ) and corresponding PDB files.

This methodology was applied on the case of fatty acid molecules as ligand. Any set of ligands can be used in this methodology as long as there is enough of them ( around 30 pockets-ligand complexes )

Using the Protein Data Bank website :

-   Search => Ligand => Start Ligand Search => SMILE (CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC(O)=O ) => Load SMILES => Submit Query for superstructure, molecular weight 100 or more => ligands of at least 7C => Filtres. Human, XRAY, 70 % Homology We recommend to download all the PDB files into o folder PDB/ that will be used by the PickPocket program later on.
-   Extract the ligands name from the selected PDB files.

To help build a file containing the ligand code two files can be found in the data/ folder. "het_dictionary.txt" contains all possible ligand from the PDB. "hetnamepdb.tsv" contains a list of all PDB identifiers and the ligands they contains. '

Once the two files are ready you can run the PickPocket

----------

Exemple files can be found at : data/Fatty_Acid_input/

ligand_codeFA contains the selected code of fatty acids ( or similar ) ligands pdb_listFA contains the corresponding list of PDB identifiers.

To improve the quality of the prediction it is recommended to add a selection of negative PDB structures. All the pocket from this set will increase the diversity of non-binding pockets and help the model accuracy.
pdb_negativeFA contains a list of PDB diverse enough while none of them contains any desired ligands.
We will call:
 - **PDB_list.txt** : the list of pdbs  ( one ID for each line )
 - **ligands.txt**: the list of ligands to use ( one for each line )

# 2) Optimize fpocket parameters [Optional] 
This procedure aims to find one of the optimal combinations of fpocket2 parameters to have pockets big enough to cover have interactions with most of the ligand molecule ( more details in the article). **It can be very time consuming, we suggest to run first the default parameters and, in case you want to optimize those parameters, run this procedure on a cluster with 8 CPUs or more.**
```
pickPocket optimize -p PDB_list.txt -l ligands.txt 
```
The user can also give a json containing a set of fixed parameters with the -k argument.
 All the default parameters are:
 ```
 {"m": "3.0", "M": "6.0", "A": "3", "i": "30", "D": "1.73", "s": "2.5", "n": "3", "r": "4.5"}
 ```
additional parameters, like the minimal distance from the ligand molecule to consider a residue as part of the true pocket, can be found with 
```
pickPocket optimize --help
```
The output folder contains various information about the optimization. The subfolder ./optimization/generations/ contains all the generations with json files containing the optimized parameters. Take biggest number in gen_XX, will contain the latest set of nondominant solution. The first three columns of the file info.txt represent:
 1. true_pocket_residues_fraction: the average fraction of residues in a positive pocket close to the ligand more than the given threshold ( default 4A )
 2. ligand_atom_fraction : the average fraction of ligand atoms covered by a pocket residue
 3. positive_pockets_fraction : the average fraction of pockets positive respect to the total number of pockets computed.
More details about those statistics are given in the manuscript.

# 3) Computing the pocket descriptive matrix

This step will 
 - compute all the pockets from the structures
 - compute the descriptive values for each pockets
 -  assign TRUE or FALSE to each pocket based on distance with selected ligands and (d) output a training matrix.

```
pickPocket extract -p PDB_list.txt -l ligands.txt -f optimized_parameters.json
```
If the user skipped the optimization step, just don't specify the -f parameter and the default parameters will be used.
The output folder ( default ./pickpocket_extract ) contains the following folders:
 - **fpocket/** fpocket outputs
 - **stride/** stride outputs
 - **info/** dataset information files
 - **pymol/** pymol scripts that will automatically open pymol showing the computed pockets and the residues within 4A ( or the desired distance) from the ligand molecules.

And the following files:
 - **plots.pdf** a series of plots showing some useful statistics of the computed pockets
 - **results.tsv** a matrix containing the features computed for each pocket.


# 4) Random Forest model training
The last step trains a classifier model ( Random Forest Classifier) on the data extracted in the previous step.
To consider a pocket positive, the user can give a threshold for F1 or F2 ( the columns true_pocket_residues_fraction and ligand_atom_fraction described in the optimization step and in detail in the manuscript ) or give a label file, formatted as follow:
```
PDBID	pocketNumber	[0|1]
```
Where PDBID is the ID of the PDB structure, pocketNumner is the integer number assigned to each pocket by fpocket ( those are the first two columns in results.tsv) and finally 0 if the pocket is not of interest, 1 if it is.

