# 1. Open iris data set file using read.table() and store in a variable names “iris_data”
getwd()
iris_data=read.table("iris_data.txt")
iris_data
# 2. Check the structure of “iris_data”. Note the column names. How many categories are there in column named as “Species”. Note the names of species.
str(iris_data)
table(iris_data$Species)
data(iris)
table(iris$Species)
levels(iris)
# 3. How many rows and columns are there?
dim(iris)
#   4. How many observations (rows) are there for each species?
table(iris$Species)

#   a. Number of rows with Species as setosa
setosa=filter(iris, Species=="setosa")
setosa



#   b. Number of rows with species as virginica
virginica=filter(iris, Species=="virginica")
virginica


#   c. Number of rows with species as versicolor
versicolor=filter(iris, Species=="versicolor")
versicolor



# 5. Find the mean of all sepal lengths.
mean(iris$Sepal.Length)


# 6. Find the mean of sepal lengths in species setosa.
mean(setosa$Sepal.Length)

# 7. What is the overall correlation between sepal length and Petal length?
colnames(iris)
cor(iris$Sepal.Length, iris$Petal.Length)



#   8. What is the correlation between sepal width and petal width of species virginica?
cor(virginica$Sepal.Width, virginica$Petal.Width)



#   9. Find the difference between sepal lengths of species setosa and versicolor. What is the mean difference between them?
sldiff= setosa$Sepal.Length - versicolor$Sepal.Length
sldiff
mean(sldiff)

#   10. Carryout the t-test between sepal lengths of species setosa and versicolor . Is it statistically significant?

t.test(setosa$Sepal.Length, versicolor$Sepal.Length)
