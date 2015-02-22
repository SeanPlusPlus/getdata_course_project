################################################################################
getFeatures <- function() {
################################################################################
  features <- read.table("./data/UCI_HAR_Dataset/features.txt")
  return(features)
}

################################################################################
main <- function() {
################################################################################
  features <- getFeatures()
  headers  <- features$V2

  # Appropriately labels the data set with descriptive variable names.
  test     <- read.table("./data/UCI_HAR_Dataset/test/X_test.txt",   col.names = headers)
  train    <- read.table("./data/UCI_HAR_Dataset/train/X_train.txt", col.names = headers)

  # Merge the training and the test sets to create one data set.
  data <- rbind(test, train)

  # Extract only the measuremnts on the mean and standard deviation for each measurement.
  measurements <- features[grep("mean|std", features$V2),]$V2
  data[,measurements]

  # write this out
  write.table(data[,measurements], file = "tidy.txt", row.names = FALSE)
}
