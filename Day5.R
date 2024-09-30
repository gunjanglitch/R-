#how to fetch elements from a matrix using index matrix
a = 11:60
a
abc=matrix(a, nrow = 5, ncol = 10)
abc

x1=c(2,3,3,4,4,5)
pqr=matrix(x1, nrow = 3, byrow = T)
pqr

pqr
abc

abc[pqr]


#how to update or manipulate a matrix
xyz=matrix(1:10,nrow = 5)
xyz
#how to add new row in matrix
xyz=rbind(xyz,20)
xyz
xyz=rbind(xyz,31,32)
xyz
#how to add coloumns
xyz=cbind(xyz,40)
xyz
xyz=cbind(xyz,61:68)
xyz
xyz

#create a new matrix with cbind and rbind
a1=2:50
a2=3:51
a1
a2
abc=cbind(a1,a2)
abc
pqr=rbind(a1,a2)
pqr

#how to delete rows and columns from existing matrix
abc=matrix(a, nrow = 5, ncol = 10)
abc
abc=abc[-3,]
abc

abc=abc[,-2]
abc


#how to replace any elements in an existing matrix
abc
abc[2,2]=900
abc
