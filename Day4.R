#Matrix

a=11:60
a
abc=matrix(a,ncol = 10)
abc

abc=matrix(a, nrow = 10)
abc

abc = matrix(11:60, nrow = 5, ncol = 10)
abc

nrow(abc)
ncol(abc)

dim(abc) #output shows row first then column

abc
abc = matrix(1:50, nrow = 5, ncol = 10, byrow = T)
abc
nrow(abc)
ncol(abc)
dim(abc)
str(abc)
abc
colMeans(abc)
rowMeans(abc)
t(abc) #transpose

colnames(abc)
abc

#how to create a row name and column name
colnames(abc) = c(paste("C", 1:ncol(abc),sep = ""))
abc
rownames(abc) = c(paste("R", 1:nrow(abc), sep = ""))
abc


#how to fetch elements from matrix
abc
abc[2,3] #second row third column
abc[5,5]
abc[c(3,4),c(4,5)] #first combine is of row, and second combine is of column

abc[4,] 
abc[,4]

abc[-3,] #returns every rows except third row
abc[,-2]

#how to fetch elements from matrix using columns names and row names
abc
abc["R2", "C4"]
