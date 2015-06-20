library(dplyr)
library(reshape2)
subject_test <- read.table("./UCI HAR Dataset/test//subject_test.txt", 
                        col.names = "Subject",colClasses = "numeric")

subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", 
                           col.names = "Subject", colClasses = "numeric")

act_label <- read.table("./UCI HAR Dataset/activity_labels.txt", 
                        col.names = c("Activity_Label","Activity"))
features <- read.table("./UCI HAR Dataset/features.txt", stringsAsFactors = FALSE)
nameofColumns <- features[,2]

x_trainData <- read.table("./UCI HAR Dataset/train/X_train.txt",col.names=nameofColumns, 
                        colClasses = "numeric", stringsAsFactors = FALSE)
x_testData <- read.table("./UCI HAR Dataset/test/X_test.txt", col.names=nameofColumns, 
                         colClasses = "numeric", stringsAsFactors = FALSE)
y_testData <- read.table("./UCI HAR Dataset/test/Y_test.txt", col.names="Activity_Label",
                         colClasses = "numeric")
y_trainData <- read.table("./UCI HAR Dataset/train/Y_train.txt", col.names="Activity_Label",
                          colClasses = "numeric")

trainData <- cbind(x_trainData,y_trainData, subject_train)
testData <- cbind(x_testData, y_testData, subject_test)
#tbl_df(trainData),tbl_df(testData)
data_merged <- rbind(trainData,testData)
data_merged <- merge(data_merged,act_label)
data_merged <- arrange(data_merged, Subject, Activity_Label)
data_merged <- select(data_merged, - Activity_Label)
ind_mean <- grep(("mean()"),nameofColumns,fixed=TRUE,value=FALSE)
ind_std <- grep(("std()"), nameofColumns, fixed= TRUE, value= FALSE)
#ind_sub_act <- grep(("Subject"))
data_extracted <- select(data_merged, ind_mean, ind_std, Subject, Activity)

# point 5
meltData <- melt(data_extracted,id.vars = c("Subject","Activity"))

tidyData <- dcast(meltData, Subject + Activity ~ variable, mean)

#sub_act_group <- group_by(data_extracted,Subject, Activity)
#tidyData <- summarise_each(sub_act_group, funs(mean))

write.table(tidyData, "tidyData.txt", row.names = FALSE)
