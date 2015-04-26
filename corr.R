corr <- function(directory, threshold = 0) {
  
  ## 'directory' is a character vector of length 1 indicating the location of the CSV files
  
  ## 'threshold' is a numeric vector of length 1 indicating the
  ## number of completely observed observations (on all
  ## variables) required to compute the correlation between
  ## nitrate and sulfate; the default is 0
  
  ## Return a numeric vector of correlations
  
  files_list <- list.files(directory, full.names = TRUE)
  
  correlation <- c()
  
  for(file in files_list) {
    file_data <- read.csv(file)
    complete_cases <- file_data[complete.cases(file_data), ]
    
    if(nrow(complete_cases) > threshold){
      correlation <- c(correlation, cor(complete_cases$nitrate, complete_cases$sulfate))
    }
  }
  
  return(correlation)
}
