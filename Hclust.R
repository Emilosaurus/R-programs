x=matrix(c(1:18),ncol=2)

HC=hclust(dist(x))

plot(HC)