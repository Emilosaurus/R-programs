library(e1071)
library(caret)
set.seed(123)

data("iris")

train_index=sample(nrow(iris),(nrow(iris)*0.7))
train_data=iris[train_index,]
test_data=iris[-train_index,]
SVM=svm(Species~.,train_data)

svmpred=predict(SVM,test_data)
svmtable=table(svmpred,test_data$Species)
print(svmtable)

con=confusionMatrix(svmpred,test_data$Species)
print(con)


