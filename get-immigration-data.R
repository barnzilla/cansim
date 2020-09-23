# Load packages to extend base R
library(cansim)

# Get immigration data
d <- get_cansim("17-10-0014-01")

# Create file path and file name
file_path_and_file_name <- "c:/users/joelb/google drive/github/cansim/cansim-17-10-0014-01"

# Export data to csv
write.csv(d, paste0(file_path_and_file_name, ".csv"), row.names = FALSE, na = "")

# Compress csv file
zip(paste0(file_path_and_file_name, ".zip"), paste0(file_path_and_file_name, ".csv"))

# Delete csv file
unlink(paste0(file_path_and_file_name, ".csv"))
