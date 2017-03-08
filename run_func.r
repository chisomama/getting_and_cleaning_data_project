get_means_and_std_cols <- function(features){
  # Find rows with mean or std in the columns
  
  measurements_raw = grep("mean|std", features[,2])
  return(measurements_raw)
  
  
}

get_means_and_std_cols_names <- function(features){
  measurements_raw = grep("mean|std", features[,2], value = TRUE)
  measurements_clean = tolower(gsub("[()-]", "", measurements_raw))
  return(measurements_clean)
}