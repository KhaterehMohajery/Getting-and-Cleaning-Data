train <- read.table('X_train.txt')
labels_train <- read.table('y_train.txt')
subjects_train <- read.table('subject_train.txt')
test <- read.table('X_test.txt')
labels_test <- read.table('y_test.txt')
subjects_test <- read.table('subject_test.txt')
features <- read.table('features.txt')
activity_labels <- read.table('activity_labels.txt')

# --------merging test and train data
full <- rbind(train, test) 

#---------propriately labels the data set with descriptive variable names
names(full) <- make.names(names = features[,2], unique = T) 

#-------selecting only columns for mean and std
full <- select(full, c(contains("mean"), contains("std"))) 

#--------- adding subjects numbers to data set
subjects_full <- rbind(subjects_train, subjects_test)
full$subject_no <- unlist(subjects_full) #subjects_full is a dataframe itself

#--------- providing descriptive activity names to name the activities in the data set
labels_full <- rbind(labels_train, labels_test)
full$activity <- activity_labels[labels_full$V1,2]
#----- calculating the average of each variable for each activity and each subject
full <- group_by(full, activity , subject_no)
final <-summarise_all(full, mean)
