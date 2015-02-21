################################################################################
getTest <- function() {
################################################################################
  test <- read.table("./data/UCI_HAR_Dataset/test/X_test.txt")
  return(test)
}

################################################################################
getTraining <- function() {
################################################################################
  training <- read.table("./data/UCI_HAR_Dataset/train/X_train.txt")
  return(training)
}

#
# 1. Merges the training and the test sets to create one data set.
#
################################################################################
mergeTestAndTraining <- function() {
################################################################################
  test <- getTest()
  training <- getTraining()
  rbind(test, training)
}
