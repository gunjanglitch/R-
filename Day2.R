#how to manipulate an existing vector
#how to delete elements from an existing vector
abc = 5:20
abc
abc = abc[-3]
abc
abc = abc[-c(4,6,9,12)]
abc
abc=abc[-c(4:length(abc))]
abc
which(abc==8)

#how to add new elements into an existing vector
adding = 10:25
adding
pqr=c(adding,500)
pqr
pqr=c(300, adding)
pqr
pqr=c(200,adding,400)
pqr
pqr=c(pqr[1:4], 900, pqr[5:length(pqr)])
pqr


#how to replace elements from an existing vector
x = sample(10:30, 10)
x
x[2]=10
x
x[c(4,5)]=c(600,200)
x


#in-build functions in integer/numeric vector
a=c(200,1400,1600,20,19,450,2100,18,6,350,950,840,210,160,20,18,24)
length(a)
sort(a)
a1=sort(a)
a1
a
sort(a,decreasing = T)
max(a)
min(a)
max(a1[1:5])
mean(a)
median(a)


z=c(2,3,4,5,6,7)
median(z)
mean(z)
sd(z)
a
abc=1:30
abc
quantile(abc)
summary(abc)


abc
sin(abc)
log(abc)
log(abc, base = 2)


#set operations
a=1:7
b=c(2,4,8,9,10)
a
b
intersect(a,b)
union(a,b)
setdiff(a,b)
setdiff(b,a)


p = 20:40
q=seq(from=3, to=6, length=21)
cor(p,q)
p
q


#arithmatic expression
w=c(3,4,5,6)
x=c(6,7,8,9)
y=c(1,2)
z=C(9,10,11)
w
x
y
z
x+y
w+x
w+y
w+z
