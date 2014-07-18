complete <- function(directory, id = 1:332){
  setwd(directory)
  result <- data.frame(id = numeric(length(id)), nobs = numeric(length(id)), stringsAsFactors = FALSE)
  j <- 0
  for (i in id){
    j <- j + 1
    
    fi <- if(i < 10){
      paste('00', i, sep='')
    }
    else if(i < 100){
      paste('0', i,sep='')
    }
    else {
      i
    }
    
    fileName <- paste(fi, '.csv', sep='')
    data <- read.csv(fileName)
    
    result$id[j] <- i
    result$nobs[j] <- nrow(na.omit(data))
  }
  result
 
}

