#low level plotting
x=sample(1:100, 50)
plot(x, type = "o", xlab = "genes", ylab = "gene exp values", main = "NGS AML Project", sub = "cancer sample 2", lwd=2, col=c("red", "blue", "green"),pch=14, ylim = c(0,200) )
lines(c(-1,60),c(80,80), col="red", lty=2, lwd=2)
lines(c(-1,60),c(20,20), col="blue", lty=2, lwd=2)
legend(42.5, 205,c("china", "africa", "europe"), col = c("red", "blue", "green"), pch = 14, cex = 0.8)

#how to add text on the points
text(1:50,x, labels= x)

#how to change the position of text
text(1:50, x, labels = x, pos=1) #below
text(1:50, x, labels = x, pos=2) #left
text(1:50, x, labels = x, pos=3) #top
text(1:50, x, labels = x, pos=4) #right


#adjusting the space between the text and the points
text(1:50, x, labels = x, pos=3, offset = 0.7)



#Line Plots
x1 = sample(1:50, 50)
x2 = sample(50:100, 50)
x3 = sample(100:150, 50)
plot(x1, type = "l", ylim = c(0,250), xlab = "genes", ylab = "gene exp value", main = "microarray analysis", col="red", lwd=2, lty=2)
lines(x2, type = "l", col="blue", lwd=2, lty=2)
lines(x3, type = "l", col="green", lwd=2, lty=2)
legend(40,250,c("day1", "day2", "day3"), cex = 0.8, col = c("red", "blue", "green"), lwd = 2, lty = 2)


#simple barplot
x=c(4,2,3,9,5)
barplot(x, names.arg = c("biotech", "microbiology", "genetics", "bioinformatics", "bacteriology"), col = c("red","blue","green","cyan","magenta"), xlab = "subject", ylab = "marks", main = "IIT Delhi", sub = "Annual Exam", border="red" )

#horizontal barplot
barplot(x, horiz = T, names.arg = c("biotech", "microbiology", "genetics", "bioinformatics", "bacteriology"), col = c("red","blue","green","cyan","magenta"), xlab = "subject", ylab = "marks", main = "IIT Delhi", sub = "Annual Exam", border="red" )


#stacked barplot
abc=matrix(c(5,7,1,3,9,4,6,5,12,2,3,4,7,6,8), nrow=3, ncol=5, byrow=T)
abc
barplot(abc, names.arg = c("biotech", "microbio", "genetics", "bioinfo", "bacteriology"), col = c("red", "blue", "green"), xlab = "subject", ylab = "marks", main = "IIT Delhi", sub = "Annual Exam")
legend("topleft", c("theory","practical","project"), col = c("red","blue","green"), pch=15)


#grouped barplot
barplot(abc,beside = T, space = c(0.1,2), names.arg = c("biotech", "microbio", "genetics", "bioinfo", "bacteriology"), col = c("red", "blue", "green"), xlab = "subject", ylab = "marks", main = "IIT Delhi", sub = "Annual Exam")
legend("topleft",c("theory","practical","project"), col = c("red","blue","green"), pch=15)

#write a r program calculate the frequency and then visualize using barplot

x=sample(20,100, replace = T)
x
pqr=table(x)
pqr
barplot(pqr, col = rainbow(20))

