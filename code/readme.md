See readme in data folder to learn more about data processing and data use in this repository. 

Data comes from paper "Virulence-mediated infectiousness and activity trade-offs and their impact on transmission potential of patients infected with influenza" and can be found at https://datadryad.org/stash/dataset/doi:10.5061/dryad.51c59zw4v.

Code in processing_code folder takes raw dataset from this study, removes scores that were calculated for the purpose of this study and leaves a total of 32 variabls. One variable is continuous, three variables contain factors that range from "None", to "Mild", "Moderate", and "Severe". All remaining variables contain bit data. Variables in this dataset describe presence of symptoms reported by patients at University Health Center. 

The analysis of this data begins with the exploration.Rmd file, which analyzes the relationships between variables in search for a particular variable of interest. The final variable of interest is determined to be Sneeze, which is then reviewed further with statistical modeling in model_fitting.Rmd. Both R Markdown files produce PDF files.

*exploration.R was updated 10/19/2021 to fix issues with models
*model_fitting.Rmd was updated 10/19/2021 to fix issues with models (had some linear regression code where logistic regression was supposed to be)

model_fitting_2.Rmd uses linear and logistic models to predict body temperature and presence of nausea, respectively. 

Analysis for continues in model_fitting_3.Rmd, using decision tree, LASSO, and random forest models to predict body temperature for patients coming to University Health Center. 