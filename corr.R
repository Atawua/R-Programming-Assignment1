corr<- function(directory, threshold = 0) {
     ## obtaining the required files by storing them into mydata variable
     mydata <- list.files(path = "/Users/atawua/Desktop/specdata")
     
     ## creating an empty numeric vector which will hold the final result
     result <- vector(mode = "numeric", length = 0) 
     
     for(i in 1:332) 
     {
          ## Reading and storing the required files without NAs into goodfile variable
          goodfile <- na.omit(read.csv(mydata[i]))
          if( nrow(goodfile) > threshold ) {
               
               ## calculating the correlation and combine in the result empty vector
               corvector <- cor(goodfile$sulfate, goodfile$nitrate)
               result <- append(result,corvector)
          }
     }
     ## return the result
     result
}