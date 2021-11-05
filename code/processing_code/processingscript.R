#load needed packages. make sure they are installed.
pacman::p_load(pacman,tidyverse,here)

#path to data
data_location <- here::here("data","raw_data","SympAct_Any_Pos.Rda")

#load data. 

#Initially had trouble loading data file. After troubleshooting online, I found that the file extension in this repo is incorrect. It's RDS not Rda
rawdata <- read_rds(data_location)

### Remove all variables that have Score or Total or FluA or FluB or Dxname or Activity in their name. 
## I initially tried to use grepl to remove variables by substring. This led me to remembering I can just use "-contains"
rawdata1 <- rawdata %>% select(-contains("Score"))
rawdata1 <- rawdata1 %>% select(-contains("Total"))
rawdata1 <- rawdata1 %>% select(-contains("FluA"))
rawdata1 <- rawdata1 %>% select(-contains("FluB"))
rawdata1 <- rawdata1 %>% select(-contains("Dxname"))
rawdata1 <- rawdata1 %>% select(-contains("Activity"))

### Also remove the variable Unique.Visit. 
rawdata1 <- rawdata1 %>% select(-Unique.Visit)

### A few have multiple categories. Remove any NA observations, there aren’t many.
rawdata2 <- drop_na(rawdata1)

# location to save file
save_data_location <- here::here("data","processed_data","processeddata.rds")

saveRDS(rawdata2, file = save_data_location)

### Module 11 Updates
# Remove binary variables for Weakness, Cough (x2), and Myalgia
# Coerce factors for remaining Weakness, Cough, and Myalgia variables into ordinal - 1-None...4-Severe


rawdata3 <- rawdata2 %>% select(-CoughYN,-CoughYN2,-WeaknessYN,-MyalgiaYN)

# Check factor levels
levels(rawdata3$Weakness)
levels(rawdata3$CoughIntensity)
levels(rawdata3$Myalgia)

# Factors are ordered correctly

# Find variables with fewer than 50 entries
summary(rawdata3)

# Hearing/Yes has 30 entries and Vision/Yes has 19. Remove Hearing and Vision
rawdata3 <- rawdata3 %>% select(-Hearing, -Vision)

# This is the data required to complete the Module 11 assignment. Save in Processed Data folder
saveRDS(rawdata3, file=here::here("data","processed_data","processeddata_mod11.rds"))
