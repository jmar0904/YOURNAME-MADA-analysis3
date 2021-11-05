Data in raw_data folder comes from https://datadryad.org/stash/dataset/doi:10.5061/dryad.51c59zw4v. After downloading data from this site, I had to load it with read_rds(), even though it shows an .rda file extension. This data set was processed in ~/code/processing_code/processingscript.R. Output is saved in ~/data/processed_data/processeddata.rds.

processeddata.rds is used for analysis in the exploration.Rmd, model_fitting.Rmd, model_fitting_2.Rmd. 
processeddata_mod11.rds is used for analysis in model_fitting_3.Rmd