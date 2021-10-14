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


