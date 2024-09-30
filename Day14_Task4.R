# 16.  Create a matrix from a vector consisting of numbers from 1 to 12 with 3 columns
x=1:12
x1=matrix(x, ncol = 3)
x1

# 17. Fetch 2nd row. Fetch 3rd column
x1[2,]
x1[,3]

# 18.Fetch the value 6
x1[2,2]

# 19 Fetch the value 8 and 12.
x1[4,c(2,3)]


# 20. Fetch the values 7,8,11 and 12.
x1[c(3,4),c(2,3)]


# 21. Write a R program to create a blank matrix.
abc=matrix(,ncol = 6, nrow = 10)
abc

# 22. Write a R program to create a matrix taking a given vector of numbers as input. Display the matrix.

x=1:40
abc=matrix(x,ncol = 4, nrow = 10)
abc

# 23. Write a R program to create a matrix taking a given vector of numbers as input and define the column and row names. Display the matrix
abc=matrix(x,ncol = 4, nrow = 10, )
colnames(abc)=c(paste("C", 1:ncol(abc),sep = ""))
rownames(abc)=c(paste("R", 1:nrow(abc),sep = ""))
abc


# 24. Write a R program to access the element at 3rd column and 2nd row, only the 3rd row and only the 4th column of a given matrix.
abc[2,3]
abc[3,]
abc[,4]



# 25. Write a R program to create two 2x3 matrix and add, subtract, multiply and divide the matrixes.

m1=matrix(1:6, nrow = 2, ncol = 3)
m1
m2=matrix(0:5, nrow = 2, ncol = 3)
m2
m1+m2
m1-m2
m1*m2
m1/m2

# 26. Write a R program to create a matrix from a list of given vectors.
a=list()
for (i in 1:5) 
  a[[i]]=c(i,c("gunjan","any","random","name"))
a

result=do.call(rbind,a)
result



# 27. Write a R program to extract the submatrix whose rows have column value > 7 from a given matrix.
rnam=c("R1","R2","R3","R4")
cnam=c("C1","C2","C3","C4")
abc=matrix(c(1:16),nrow = 4, byrow = T, dimnames = list(rnam,cnam))
abc
abc[abc[,3]>7,]



# 28. Write a R program to convert a matrix to a 1 dimensional array.
abc
pqr=as.vector(abc)
pqr

# 29. Write a R program to create a correlation matrix from a data frame of same data type.
abc=data.frame(a=rnorm(5), b=rnorm(5), c=rnorm(5))
abc
cor(abc)


# 30. Write a R program to convert a given matrix to a list of column-vectors.
abc=matrix(1:12, ncol = 4)
abc
split(abc,(rep(1:ncol(abc), each=nrow(abc))))


# 31. Write a R program to find row and column index of maximum and minimum value in a given matrix.
abc=matrix(1:16,nrow = 4, byrow = T)
abc
abc[which(abc==max(abc), arr.ind = T)]
abc[which(abc==min(abc), arr.ind = T)]


# 32. Write a R program to rotate a given matrix 90 degree clockwise rotation.
abc=matrix(1:9,3)
abc
t(apply(abc,2,rev))


# 34. Write a R program to concatenate two given matrices of same column but different rows.
x=matrix(1:12,3)
y=matrix(13:24,3)
dim(rbind(x,y))
rbind(x,y)







