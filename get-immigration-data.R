# Load packages to extend base R
library(cansim); library(dplyr)

# Get immigration data
d <- get_cansim("17-10-0014-01")

# Remove data prior to 2001
d <- d %>% filter(! REF_DATE %in% unique(sort(d$REF_DATE))[1:29])

# Create file path and file name
file_path_and_file_name <- "c:/users/joelb/google drive/github/cansim/cansim-17-10-0014-01"

# Export data to csv
write.csv(d, paste0(file_path_and_file_name, ".csv"), row.names = FALSE, na = "")

# Compress csv file
zip(paste0(file_path_and_file_name, ".zip"), paste0(file_path_and_file_name, ".csv"))

# Delete csv file
unlink(paste0(file_path_and_file_name, ".csv"))
