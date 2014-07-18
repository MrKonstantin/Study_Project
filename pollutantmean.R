pollutantmean <- function(directory, pollutant, id = 1:332){
  setwd(directory)
  result <- c(NA)*1
  for (i in id){
    i <- if(i < 10){
      paste('00', i, sep='')
    }
    else if(i < 100){
      paste('0', i,sep='')
    }
    else {
      i
    }
    fileName <- paste(i, '.csv', sep='')
    data <- read.csv(fileName)
    vec <- c(data[pollutant])[[1]]
    result <- c(result, vec)
  }
  m<-mean(result, na.rm = TRUE)
  
  round(m, digits = 3)  
}
