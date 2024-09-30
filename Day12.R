#data manipulation using dplyr
getwd()
setwd("G:/embs/R Programming")
abc=read.table("GenExp_data.txt", header = T, stringsAsFactors = F) #a logical that indicates whether strings in a data frame should be treated as factor variables or as just plain strings.
abc
str(abc)
colnames(abc)
rownames(abc)
summary(abc)
dim(abc)
head(abc,10) #bydeafult it shows first 6 rows and if add n(number), then will show desired number of fisrt row
tail(abc, n=2) #bydeafult shows the last 6 rows

#how many genes are there in table
table(abc$Path)

table(abc$Path, abc$D2)
apply(abc[,2:6],2,mean)
apply(abc [,2:6],1,mean)


install.packages("dplyr")
library(dplyr)

abc
filter(abc, D1>1.5)
filter(abc, D1>1.5, Path == "P3")
filter(abc, D1>1.5 | D3>1.5, Path == "P2")



#try 
#filter those genes whose difference of gene expresssion on Day1 and Day2 is > 1
filter(abc, D1>1 & D2>1)

head(abc, 8)
tail(abc,9)
slice(abc, 40:50) #slice function works with dplyr packages only
slice(abc, 1:10)
slice(abc, 195:200)


#arrange function used for sorting
arrange(abc, D1)
arrange(abc, desc(D1))

#how to do sub setting
abc
xyz=select(abc, D1, D4, Path)
xyz
xyz=select(abc,gene, D1, D4, Path)
xyz
select(abc, -D2)
select(abc, -c(D2,D4))


#when you dont remeber the column name
select(abc, starts_with("D") )
select(abc, starts_with("P"))
select(abc, ends_with("4"))
select(abc, contains("at"))


nrow(abc)
distinct(select(abc, D1))
distinct(select(abc, D3))

#how to add a new column
abc
mutate(abc, diffD2D1= D2-D1)
mutate(abc, diffD3D1= D3-D1, prodiffD3D1=diffD3D1*100)
xyz=transmute(abc, diffD4D2=D4-D2, prodiffD4D2=diffD4D2*100)

install.packages("WriteXLS")
library(WriteXLS)

WriteXLS(xyz, "newgenes.xlsx", SheetNames = "Sheet3")


#grouped operation
abc
embs=group_by(abc, Path)
embs
summarise(embs, n())
summarise(embs, n(), mean(D1), mean(D4), sd(D3), max(D1)  )

slice(abc, 1:2)
slice(abc, 5:7)
slice(embs, 1:2)

arrange(embs, D1)
summarise(embs, n(), n_distinct(D1))


#piping and chaining
abc %>% group_by(Path) %>% filter(D1>1.5) %>% summarise(n(), mn=mean(D1))
filter(abc, D1>1.5)


#gene column duplicates
abc
cbind(abc[,1:2], Gene=abc[,1], D2=abc[,3], Gene=abc[,1], D3=abc[,4])

#which number is repeating
abc
distinct(abc, D1)
table(abc$D1)
