#operator precedence
p = c(2,3,4,1)
q = c(3,1,1,2)
r = c(1,2)
s = c(2,2,2)
p+2*q+r
p+2*q/r
(p+2)*q+r

#data types of vector
abc = 10:30
abc
str(abc)
class(abc)

pqr=c(2.5,6.7,3.9,8.4)
str(pqr)
class(pqr)

x1=c("gujan","milind","another", "random","name")
str(x1)
class(x1)


x2 = letters
x2
str(x2)
class(x2)

x3 = LETTERS
x3
str(x3)
class(x3)

x4 = c(TRUE, FALSE)
x4
str(x4)
class(x4)

#Character vector
name = c("gujan","milind","another", "random","name")
name
length(name)
nchar(name)

x1 = c("gene1", "gene2", "gene3")
x1
nchar(x1)

substr("AGCTCATGCAGTCAGTCAGTATGCGAGGAATCTAACGAAA",7,18)


x1=c("gene1", "gene2", "gene3")
x2=c("prot", "rna", "lipid")
x1
x2
substr(x1,2,3)
substr(c(x1,x2),2,3)

substr(x1,2,3)="$$"
x1


paste(letters,,1:4)
paste(letters,1:26, sep=":)")
paste(letters,1:25,sep = ":", collapse = ",")

#Implicit data type conversion
x=c(10,"bioinfo", TRUE)
x
str(x) #since there are different data types but if char is present all will be converetd into char

y=c(10, FALSE, TRUE)
y
str(y)

#explicit data type conversion
x=c("1","2","3","4","5")
x
str(x)
sum(x)
y=as.integer(x) #char is converted into integer
y
sum(y)

abc = 10:20
abc
str(abc)
class(abc)
pqr=as.character(abc)
pqr
str(pqr)
