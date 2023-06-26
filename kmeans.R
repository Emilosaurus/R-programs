library(dplyr)
library(ggfortify)
library(ggplot2)

data("iris")

data=select(iris,c(1:4))

kmean=kmeans(data,3)
print(kmean)

print(autoplot(kmean,data,frame=T))