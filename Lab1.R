data(iris)
dim(iris)
names(iris)
str(iris)
attributes(iris)
iris[1:5;]
head(iris)
tail(iris)
summary(iris)
quantile(iris$Sepal.Length)
hist(iris$Sepal.Length)
plot(density(iris$Sepal.Length))
table(iris$Sepal.Length)
pie(table(iris$Species))
barplot(table(iris$Species))

iris2 <- iris

iris2$Species <- NULL

head(iris)
head(iris2)

kmeans.result <- kmeans(iris2, 3)

kmeans.result

table(iris$Species, kmeans.result$cluster)

plot(iris2[c("Sepal.Length", "Sepal.Width")], col = kmeans.result$cluster)


