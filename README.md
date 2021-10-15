### Analysis 3 for MADA

#### Summary 

##### Data Folder

Data folder contains raw dataset from "Virulence-mediated infectiousness and activity trade-offs and their impact on transmission potential of patients infected with influenza", found at https://datadryad.org/stash/dataset/doi:10.5061/dryad.51c59zw4v. The dataset provided for this paper has an extension of .Rda, which is incorrect. The file is in .Rds format. Rather than fixing this in the directory, it can be imported using read_rds(). 

Raw dataset is processed in processingcode.R, which is found in the processing_code folder in code. 

Following processing, the dataset is used first in the exploratory analysis (exploration.Rmd), and then the modeling exercise (model_fitting.Rmd). Both Rmd files live in the analysis_code folder. 

To learn more about data used in this project and code written, please review readme files in their respective directories. 