#how to load a excel sheet
install.packages("gdata")
library(gdata)
abc=read.xls("input_1.xlsx")
install.packages("readxl")
library(readxl)
abc=read_xlsx("input_1.xlsx")
abc
rownames(abc)
colnames(abc)
dim(abc)
str(abc)


#graphs
#scatter plots
a=sample(1:100, 50)
plot(a, type = "l") #line
plot(a, type = "o") #both line and points
plot(a, type = "h") #vertical line
plot(a, type = "s") #stairs
plot(a, type = "n") #nothing


#how to label x-axis, y-axis, main, sub title etc
plot(a, type="o", xlab = "genes", ylab = "gene exp value", main = "NGS - Actue Myleoid Leukemia Project", sub = "pateint 47")

a


#how to increase the thickness of line
plot(a, type = "o", xlab = "genes", ylab = "gene exp value", main = "NGS", sub="cancer sample", lwd=2)


#how to apply colors
plot(a, type = "o", col="red")
plot(a, type = "l", col="blue")
plot(a, type = "h", col="green")
plot(a, type = "o", col=c("red","blue","green"), lwd=2)
plot(a, type = "o", col=rainbow(50), lwd=2)

pqr = c(rep("red", times=10), rep("cyan", times=10), rep("magenta", times=10))

plot(a, type = "o", col=pqr, lwd=2)


#how to change the line type
plot(a, type = "o", col=rainbow(50), lwd=2, lty=0) #blank
plot(a, type = "o", col=rainbow(50), lwd=2, lty=1) #solid line
plot(a, type = "o", col=rainbow(50), lwd=2, lty=2) #dashed linehttp://127.0.0.1:34715/graphics/plot_zoom_png?width=702&height=454
plot(a, type = "o", col=rainbow(50), lwd=2, lty=3) #dotted line
plot(a, type = "o", col=rainbow(50), lwd=2, lty=4) #dotdash
plot(a, type = "o", col=rainbow(50), lwd=2, lty=5) #longdash
plot(a, type = "o", col=rainbow(50), lwd=2, lty=6) #two dash


#how to change the point type
plot(a, type = "o", col=rainbow(50), lwd=2, lty=2, pch=13)
plot(a, type = "o", col=rainbow(50), lwd=2, lty=2, pch=15)
plot(a, type = "o", col=rainbow(50), lwd=2, lty=2, pch=8)


#how to increase/magnify
plot(a, type = "o", col=rainbow(50), lwd=2, lty=2, pch=8, cex.lab=1.5, cex.axis=1.4, cex.main=2, cex.sub=1.5, )


#how to change box type

plot(a, type = "o", col=rainbow(50), lwd=2, lty=2, pch=8, cex.lab=1.5, cex.axis=1.4, cex.main=2, cex.sub=1.5, cex=2, bty="l") #boarder on bottom and left
plot(a, type = "o", col=rainbow(50), lwd=2, lty=2, pch=8, cex.lab=1.5, cex.axis=1.4, cex.main=2, cex.sub=1.5, cex=2, bty="o") #complete box(default)
plot(a, type = "o", col=rainbow(50), lwd=2, lty=2, pch=8, cex.lab=1.5, cex.axis=1.4, cex.main=2, cex.sub=1.5, cex=2, bty="u") #border on left,bottom and right
plot(a, type = "o", col=rainbow(50), lwd=2, lty=2, pch=8, cex.lab=1.5, cex.axis=1.4, cex.main=2, cex.sub=1.5, cex=2, bty="c") #border on top, left and bottom
plot(a, type = "o", col=rainbow(50), lwd=2, lty=2, pch=8, cex.lab=1.5, cex.axis=1.4, cex.main=2, cex.sub=1.5, cex=2, bty="n") #no box
plot(a, type = "o", col=rainbow(50), lwd=2, lty=2, pch=8, cex.lab=1.5, cex.axis=1.4, cex.main=2, cex.sub=1.5, cex=2, bty="7") #border on top and right
plot(a, type = "o", col=rainbow(50), lwd=2, lty=2, pch=8, cex.lab=1.5, cex.axis=1.4, cex.main=2, cex.sub=1.5, cex=2, bty="]") #


#how to rescale x-axis and y-axis
plot(a, type = "o", col=rainbow(50), lwd=2, lty=2, pch=8, cex.lab=1.5, cex.axis=1.4, cex.main=2, cex.sub=1.5, cex=2, bty="]", ylim = c(0,150), xlim =c(0,100)) #


#how to change the color of main, sub, axis, label etc

plot(a, type = "o", xlab = "genes", ylab = "gene exp value", main = "NGS", sub="cancer sample", col=rainbow(50), lwd=2, lty=2, pch=8, cex.lab=1.5, cex.axis=1.4, cex.main=2, cex.sub=1.5, cex=2, bty="[", col.main="red", col.sub="blue", col.lab="green",col.axis="purple") 


#how to change the style of axis
plot(a, type = "o", xlab = "genes", ylab = "gene exp value", main = "NGS", sub="cancer sample", col=rainbow(50), lwd=2, lty=2, pch=8, cex.lab=1.5, cex.axis=1.4, cex.main=2, cex.sub=1.5, cex=2, bty="[", col.main="red", col.sub="blue", col.lab="green",col.axis="purple", las=0) #parallel 
plot(a, type = "o", xlab = "genes", ylab = "gene exp value", main = "NGS", sub="cancer sample", col=rainbow(50), lwd=2, lty=2, pch=8, cex.lab=1.5, cex.axis=1.4, cex.main=2, cex.sub=1.5, cex=2, bty="[", col.main="red", col.sub="blue", col.lab="green",col.axis="purple", las=1) #horizontal
plot(a, type = "o", xlab = "genes", ylab = "gene exp value", main = "NGS", sub="cancer sample", col=rainbow(50), lwd=2, lty=2, pch=8, cex.lab=1.5, cex.axis=1.4, cex.main=2, cex.sub=1.5, cex=2, bty="[", col.main="red", col.sub="blue", col.lab="green",col.axis="purple", las=2) #perpendicular
plot(a, type = "o", xlab = "genes", ylab = "gene exp value", main = "NGS", sub="cancer sample", col=rainbow(50), lwd=2, lty=2, pch=8, cex.lab=1.5, cex.axis=1.4, cex.main=2, cex.sub=1.5, cex=2, bty="[", col.main="red", col.sub="blue", col.lab="green",col.axis="purple", las=3) #vertical
