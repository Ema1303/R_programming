test<- function(directory, pollutant, id = 1:332) {
  ## 'directory' is a character vector of length 1 indicating the location of the CSV files
  
  ## 'pollutant' is a character vector of length 1 indicating
  ## the name of the pollutant for which we will calculate the
  ## mean; either "sulfate" or "nitrate".
  
  ## 'id' is an integer vector indicating the monitor ID numbers to be used
  
  ## Return the mean of the pollutant across all monitors list
  ## in the 'id' vector (ignoring NA values)
  
  files_list <- list.files(directory, full.names = TRUE)
  frame <- data.frame()
  
  for(i in id){
    frame <- rbind(frame, read.csv(files_list[i]))  
  }
  
  subset_d <- subset(frame, select = pollutant)
  mean_d <- colMeans(subset_d, na.rm = TRUE)
  
  return(mean_d)
}
