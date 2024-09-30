# 6. create a vector x18 with 10 random values between 20 and 30
x18=sample(20:30,10)
x18


# 7. create a vector x20 with values of vectors x13, and x16 followed by 3,5,10
x13=c(2,3,4,5,6)
x16=rep(c(3,4,5), times=3)
x20=c(x13,x16,3,5,10)
x20

# 8. create a vector x21 with values 33,55,66,88,99. and Fetch 3rd 5th and 2nd values.
x21=c(33,55,66,88,99)
x21[c(3,5,2)]

# 9. Fetch values of x21 from 1 to 4
x21[1:4]



# 10. fetch values of x21 vector excluding 2nd and 3rd elements
x21[-c(2,3)]



# 11. fetch last element of x21 using length()
x21[length(x21)]



# 12. Create a vector x23 with values 5,7,6,8,1,4 . Delete 1st and last element. 
#REeset the value of second element to 12th. 
#Add value 0 at the beginign of a vector x.
x23=c(5,7,6,8,1,4)
x23=x23[-c(1,length(x23))]
x23

x23[2]=12
x23

x23=c(0,x23)
x23

# 13. Write the arithemetic expression to caluculate variance of a vector. 
#Cross check your result using var() function.
# Formular: variance = sum((x-mean(x))^2)/n-1 where n is the total number of elements.

x=c(4,6,8,9,3)
abc=sum((x-mean(x))^2)/(length(x)-1)
abc
var(x)


# 14. Given x,y,z coordinates of two atoms. 
#Atom1. (1.2,2.3,3.4) and Atom2 (4.5 5.6, 6.7). 
#Find the distance between 2 atoms.  Formula : sqrt((x2-x1)^2+(y2-y1)^2+(z2-z1)^2
Atom1=c(1.2,2.3,3.4)
Atom2=c(4.5,5.6,6.7)
dist=sum((Atom1-Atom2)^2)
dist



