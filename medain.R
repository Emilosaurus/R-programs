data("mtcars")

y <- mtcars$wt
x <- mtcars$hp

plot(x, y, xlab = "Weight", ylab = "Horsepower", main = "Scatter Plot: Weight vs Horsepower")
text(x, y, labels = row.names(mtcars), pos = 4)
