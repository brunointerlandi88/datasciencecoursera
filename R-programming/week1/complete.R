complete <- function(directory, id = 1:332){
  list <- list.files(directory, full.names= TRUE)
  ids <-vector()
  counts <- vector()
  for (i in id) {
    data <- read.csv(list[i])
    ids <- c(ids, i)
    completeCases <- data[complete.cases(data),]
    counts <- c(counts, nrow(completeCases))
  }
  data.frame(id = ids, nobs = counts)
}