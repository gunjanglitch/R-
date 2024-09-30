#scatterplot matrix
x1=sample(1:100,30, replace=T)
x2=sample(1:100,30, replace =T)
x3=sample(1:100,30, replace =T)
x4=sample(1:100,30, replace =T)
abc=data.frame(x1,x2,x3,x4)
abc
pairs(abc, col=rep(c("red","blue","green"), each=10), pch=)

x13=rnorm(10, mean = 2, sd=10) #vector function
x13

#3d scatter plot
install.packages("rgl")
library(rgl)
x=rnorm(1000)
y=rnorm(1000)
z=rnorm(1000)
plot3d(x,y,z, xlab = "genes", ylab = "pvalue", zlab = "qlab", col = rainbow(1000), size = 3)
rgl.postscript("mygraph.pdf", "pdf", drawText = TRUE)



#multipanel plot
x1=sample(1:100,30, replace=T)
x2=sample(1:100,30, replace =T)
x3=sample(1:100,30, replace =T)
x4=sample(1:100,30, replace =T)
abc=data.frame(x1,x2,x3,x4)
abc

xyz=par(mfrow=c(2,2))
hist(abc[,1], col = "lightblue", xlab="genes", ylab="gene exp value", main = "leukemia sample 1", sub="appolo hospital indore")
hist(abc[,2], col = "red", xlab="genes", ylab="gene exp value", main = "leukemia sample 2", sub="appolo hospital delhi")
hist(abc[,3], col = "cyan", xlab="genes", ylab="gene exp value", main = "leukemia sample 3", sub="appolo hospital mumbai")
hist(abc[,4], col = "green", xlab="genes", ylab="gene exp value", main = "leukemia sample 4", sub="appolo hospital chennai")
par(xyz) #switch off multipannel plot


#use these function whenever the graphics got hanged
dev.off()
graphics.off()
