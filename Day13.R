#Control Structure
#if statement
x=40
if(x==20){
  print("Happy Birthday")
}else{
  print("Happy New Year")
}

a=-5
if(a>0){
  print("a is positive")
}else{
  print("a is negative")
}

abc=12
if(abc>20){
  print("abc is greater than 20")
}else{
  print("abc is not greater than 20")
}

x=7
if(x%%2==0){
  print("x is an even number")
}else{
  print("x is an odd number")
}

#for loop is used for iteration over a sequence
x=c(10,20,30,40,50,60,70,80,90,120)
x
for (i in x) {
  print(i)
}


x=30:40
for (abc in x) {
  print(abc)
}


x=c("aayush", "manmeet", "pranjali", "gunjan", "milind")
x
for (i in x) {
  print(i)
}

x=c(1,2,3,4)
sum=0
for (i in x) {
  sum=sum+i
}
print(sum)


#write a R programming to get a factorial of 5
fact=1
for (i in 1:5) {
  fact=fact*i
}
print(fact)

#write a R Program to generate a Fibinocci series
#1 1 2 3 5 8 13 21 34 55...

x=numeric(10)
x[1]=x[2]=1
for (i in 3:10) x [i]=x[i-2]+x[i-1]
print(x)


#create a matrix of 5 rows and 10 column with value 1 to 50.
#calculate the mean of all rows and store it in a vector xyz
abc=matrix(1:50, nrow = 5)
xyz=NULL
for (i in 1:nrow(abc)) {
  xyz[i]=mean(abc[i,])
}
print(xyz)


#fetching the elements of x using indices
x=c(2,3,4,8,9)
for (i  in 1:length(x)) {
  print(x[i])
}

#write R program to store the squares of values of a vector using for loop
x=c(2,3,4,8,9)
pqr=0
for (i in 1:length(x)) {
  pqr=x[i]^2
  print(pqr)
}

#while loop
x=5
while (x<15) {
  print(x)
  x=x+1
}

#break statement
x=1:15
for (i in x) {
  if(i==7){
    break
  }
  print(i)
}


#next statement
x=1:15
for (i in x) {
   if(i==7){
     next
   }
  print(i)
}

i=0
while (i<6) {
  i=i+1
  if(i==3){
    next
  }
  print(i)
}


#creating functionn

x=c(20,30,40,50,60,70,80)
x
for (i in x) {
  print(i)
}

gunjan=function(x){
  for (i in x) {
    print(i)
  }
}

abc=c("milind","any", "random", "name", "another")
pqr=c("bioinfo", "biotech","microbio", "genetics", "immunology")
xyz=c(30,40,50,60,70,80,90,120,140,160)
x1=40:60
x2=sample(12:140,8)
x3=seq(from=40, to=10, by=-10)
gunjan(abc)
gunjan(pqr)
gunjan(xyz)
gunjan(x1)
gunjan(x3)


#3d scatter plot
install.packages("rgl")
library(rgl)
x=sample(1:50, 50)
y=sample(1:50, 50)
z=sample(1:50, 50)
plot3d(x,y,z , xlab = "genes", ylab = "gene ex values", zlab="fpkm", main="ngs", col=rainbow(50), pch=13, cex=1.3)
