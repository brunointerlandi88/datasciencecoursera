pollutantmean <- function(directory, pollutant, id = 1:332) {
   list <- list.files(directory, full.names = TRUE)
  dat <- data.frame()
  for (i in id) {
    dat <- rbind(dat, read.csv(list[i]))
  }
  m <- mean(dat[[pollutant]], na.rm = TRUE)
  round(m, 3)
}
