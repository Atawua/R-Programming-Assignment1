
pollutantmean <- function(directory, pollutant, id = 1:332) {
     ## obtaining the required files by storing them into mydata variable
     mydata <- list.files(path = "/Users/atawua/Desktop/specdata")[id]
     
     ## reading the .csv files of mydata
     readfiles <- lapply(mydata, read.csv)
     
     ## combine all the files into one file so that we can calculate the mean at once
     combine <- do.call(rbind,readfiles)
     
     ##calculate the mean without the NA values
     mean(combine[,pollutant], na.rm = TRUE)
}