#data frames

#how to create a data frame
x1=21:25
x2=c("gunjan", "bhaiyu", "another", "random", "name")
x3=c(9.9, 9.8, 9.2, 9.1, 8.0)
x4=c(1234542,4567878,7899654,87543256,98765421)
x5=c(T,T,F,T,F)
abc = data.frame(sl=x1, name=x2, cgpa=x3, mob=x4, attendance=x5)
abc

#functions in dataframe
colnames(abc)
rownames(abc)
nrow(abc)
ncol(abc)
dim(abc)

#how to fetch values from a data frame
abc[,1]
abc
abc[2,3]
abc[2,]
abc[,3]
abc$name[4]
abc$mob[3]

#how to insert new column and row into dataframe
abc
abc$total=c(2345,2346,2345,4572,6735)
abc
abc$enolno=251:255
abc

abc=rbind(abc,c(26,"neha",8.9,3425161,T,0987,256))
abc

#how to delete rows and column
abc=abc[-6,]
abc
abc$mob=NULL
abc 


#how to import data into R programming
#how to import a text file
getwd() #tells present working directory
setwd("G:/embs/R Programming") #change working directory to our desired directory
getwd()
abc=read.table("input1.txt")
getwd()
setwd("G:/embs/R Programming")
getwd()
abc=read.table("input_1.txt")
getwd()
abc=read.table("input_1.xlsx")
