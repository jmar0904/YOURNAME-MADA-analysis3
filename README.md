### Analysis 3 for MADA

#### Summary 

##### Data Folder

Data folder contains raw dataset from "Virulence-mediated infectiousness and activity trade-offs and their impact on transmission potential of patients infected with influenza", found at https://datadryad.org/stash/dataset/doi:10.5061/dryad.51c59zw4v. The dataset provided for this paper has an extension of .Rda, which is incorrect. The file is in .Rds format. Rather than fixing this in the directory, it can be imported using read_rds(). 

Raw data set is processed in processingcode.R, which is found in the processing_code folder in code. The raw data set is processed a second time in order to accommodate the Module 11 assignment. This data is saved in the processed_data folder as processeddata_mod11.rds. 

Following processing, the data set is used first in the exploratory analysis (exploration.Rmd), and then the modeling exercise (model_fitting.Rmd). Both Rmd files live in the analysis_code folder. model_fitting_part_2.Rmd contains the code from the Module 9 assignment (creating, fitting, and evaluating glm and lm models). model_fitting_part_3 contains code for the Module 11 assignment (creating decision tree, LASSO, and random forest models).


To learn more about data used in this project and code written, please review readme files in their respective directories. 