library(rpart)

data("iris")
set.seed(123)

train_index=sample(1:nrow(iris),round(nrow(iris)*7),replace=T)
train_data=iris[train_index,]

tree=rpart(Species~.,train_data)

plot(tree)
text(tree)