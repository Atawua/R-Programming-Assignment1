complete <- function(directory, id = 1:332) {
     ## obtaining the required files by storing them into mydata variable
     mydata <- list.files(path = "/Users/atawua/Desktop/specdata")[id]
     
     ## create an empty vector
     frows <- c()
     counter <- 1
     
     for(i in mydata) {

          ## storing each .csv file without the NA values into fineobject variable
          fineobject <- na.omit(read.csv(i))
          
          ## store the number of the fineobject rows in the empty f(ine)rows vector
          frows[counter] <- nrow(fineobject)
          counter <- counter + 1
     }
          ## creating and printing the f(ine)list
          flist <- data.frame("id" = id, "nobs" = frows)
          print(flist)
}