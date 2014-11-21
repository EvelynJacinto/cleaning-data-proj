library(reshape2)

# load datasets
subjtest <- read.table("./UCI HAR Dataset/test/subject_test.txt")
testlabels <- read.table("./UCI HAR Dataset/test/y_test.txt")
test <- read.table("./UCI HAR Dataset/test/X_test.txt", colClasses="numeric")
activity <- read.table("./UCI HAR Dataset/activity_labels.txt", stringsAsFactors=FALSE)
subjtrain <- read.table("./UCI HAR Dataset/train/subject_train.txt")
trainlabels <- read.table("./UCI HAR Dataset/train/y_train.txt")
train <- read.table("./UCI HAR Dataset/train/X_train.txt", colClasses="numeric")

#check dimensions and structure
# test dataset has 2947 rows and 561 columns
# train dataset has 7352 rows and 561 columns
dim(subjtest)
dim(testlabels)
dim(test)
dim(subjtrain)
dim(trainlabels)
dim(train)

# convert activity codes to activity names
testlabels$V1 <- factor(testlabels$V1, levels=activity$V1, labels=activity$V2)
trainlabels$V1 <- factor(trainlabels$V1, levels=activity$V1, labels=activity$V2)
str(testlabels)
str(trainlabels)

# choose only columns for mean and standard deviation
features <- read.table("./UCI HAR Dataset/features.txt", stringsAsFactors=FALSE)
meanfeatures <- features[grep("mean()", features$V2, fixed=TRUE),]
stdfeatures <- features[grep("std()",features$V2),]
features2 <- merge(meanfeatures,stdfeatures, by=c("V1","V2"), all=TRUE)
testset <- test[,features2$V1]
trainset <- train[,features2$V1]

# there are 66 mean and standard deviation columns
dim(testset)
dim(trainset)
dim(features2)

# combine all desired test columns
testdf <- cbind(subjtest, testlabels, testset)
dim(testdf)
traindf <- cbind(subjtrain, trainlabels, trainset)
dim(traindf)

# combine train and test data frames and assign column names
combined <- rbind(testdf, traindf)
dim(combined)     # 7352 + 2947 = 10299 rows and 68 columns
names(combined) <- c("SubjectID","Activity", features2$V2)
names(combined)

# create data frame of average per subject and activity
melted <- melt(combined, id.vars=c("SubjectID","Activity"))
dim(melted)       # 10299 * 66 = 679734 rows and 4 columns
head(melted)
recombined <- dcast(melted, SubjectID + Activity ~ variable, mean)
dim(recombined)    # 180 rows = 30 subjects * 6 activities; 68 columns original
head(recombined)
write.table(recombined,file="UCI_HAR.txt",row.names=FALSE)

