#histogram
x= sample(1:20, 1000, replace = T)
x
hist(x, breaks = 20, labels = T, col = "lightblue", border = "red", ylim = c(0,150))


#histogram for probability instead of frequency
hist(x, freq=F, breaks = 20, labels = T, col = "lightblue", border = "red", ylim = c(0,0.12))
axis(side=1,at=1:20, 1:20)
axis(side = 2)


#density plot
x=sample(1:20, 1000, replace = T)
plot(density(x), xlab="genes", ylab = "gene exp values", main = "NGS", sub="cancer samples 1")


#desnity plot for two distribution
x=sample(1:20, 1000, replace = T)
y=sample(50:100, 10000, replace = T)
plot(density(x), xlim=c(0,100), col="red", lwd=2, lty=2, xlab = "genes", ylab = "genes exp values", main = "NGS", sub="acute myeloid leukemia sample2")
lines(density(y), col="blue", lwd=2, lty=2)
legend(80,0.05, c("cancer","normal"), col = c("red","blue"), lwd=2, lty=2)



#BoxPlot
x1=sample(1:100, 1000, replace = T)
x2=sample(100:200, 1000, replace = T)
x3= sample(200:300, 1000, replace = T)
x4= sample(300:400, 1000, replace =T)
abc = cbind(x1,x2,x3,x4)
abc
boxplot(abc)
