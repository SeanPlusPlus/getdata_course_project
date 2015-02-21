################################################################################
getTest <- function() {
################################################################################
  subj_test   <- read.table("./data/UCI_HAR_Dataset/test/subject_test.txt")
  X_test      <- read.table("./data/UCI_HAR_Dataset/test/X_test.txt")
  y_test      <- read.table("./data/UCI_HAR_Dataset/test/y_test.txt")
  test        <- cbind(subj_test, y_test, X_test)
  return(test)
}

################################################################################
getTrain <- function() {
################################################################################
  subj_train  <- read.table("./data/UCI_HAR_Dataset/train/subject_train.txt")
  X_train     <- read.table("./data/UCI_HAR_Dataset/train/X_train.txt")
  y_train     <- read.table("./data/UCI_HAR_Dataset/train/y_train.txt")
  train       <- cbind(subj_train, y_train, X_train)
  return(train)
}

################################################################################
getFeatures <- function() {
################################################################################
  features    <- read.table("./data/UCI_HAR_Dataset/features.txt")
  return(features)
}

################################################################################
main <- function() {
################################################################################
  test        <- getTest()
  train       <- getTrain()
  features    <- getFeatures()

  # 1. Merge the training and the test sets to create one data set.
  data_set    <- rbind(test, training)

  # 2. Extracts only the measurements on the mean and standard deviation for each measurement.
  measuremnts <- features[grep("mean|std", features$V2),]

  # 3. Use descriptive activity names to name the activities in the data set
}
