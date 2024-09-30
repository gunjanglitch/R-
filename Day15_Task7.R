# You are provided with an excel file “iris.xls”.
# The file contains IRIS data,
# 150 flowers, Categorized into 3 plants (SP: Setosa/Versicolor/Virginica) and two colors (Col: Red/Blue).
# The data consists of SL (Sepal length), SW (Sepal width), PL (Petal length) and PW (Petal width) in cm. 
# 
# Task: Load the data in R using appropriate function and extract useful information by data visualization.
library(gdata)
abc=read.table("clipboard", header = T)
abc


# 1. Plot1: Scatter plot of Sepal length vs Petal length of all 150 flowers, color according to species/plants. 

plot(abc$SL, abc$PL, col=rep(c("red","blue", "green"), each=50))



# 2. Plot2: Barplot showing distribution of Sepal lengths among 6 classes of flowers (3 plants and 2 colors). 
t(table(abc$SP, abc$Col))
barplot(t(table(abc$SP, abc$Col)), beside = T, col = c("blue", "red"), ylim = c(0,50), cex.axis = 1.5, cex.names = 1.5)
legend(1,50, c("Red", "Blue"), pch = 15, col = c("red", "blue"))


 
# 3. Plot3: Multi panel plot showing the histogram of SL, PL, SW, PW of all 150 flowers.

xyz=par(mfrow=c(2,2))
hist(abc$SL, col = "lightblue", xlab = "Sepal Length", ylab = "Frequency", main = "")
hist(abc$PL, col = "green", xlab = "Petal Length", ylab = "Frequency", main="")
hist(abc$SW, col = "cyan", xlab = "Sepal Width", ylab = "Frequency", main = "")
hist(abc$PW, col = "pink", xlab = "Petal Width", ylab = "Frequency", main="")

graphics.off()

# 4. Plot 4: Boxplot showing SL, SW, PL, PW distribution along with a line joining their mean lengths.
boxplot(abc[,1:4],col = c("red", "green","orange", "purple"), main="Length Distribution", cex.axis=1.2, ylab="Length in cm")

pqr=summarise(abc, mean(SL), mean(SW), mean(PL), mean(PW))
pqr

lines(c(1,2,3,4), pqr, col="brown", lwd=4)

legend(3,8.1, c("Mean\nLength"), lty=1.2, lwd=4,col="brown")

# 5. Plot5: Probability density plot of Sepal lengths among three different categories of plants. 
library(dplyr)
set=filter(abc, SP=="setosa")
ver=filter(abc, SP=="versicolor")
vir=filter(abc, SP=="virginica")


#converting dataframe to vector
set_sl=set$SL
ver_sl=ver$SL
vir_sl=vir$SL

set_sl
ver_sl
vir_sl

#create density plot 
plot(density(set_sl), xlim=c(0,10), lwd=2, xlab = "length in cm", ylab = "prob density of Sepal Length across diff flower", col="red")
lines(density(ver_sl), lwd=2, col="cyan")
lines(density(vir_sl), lwd=2, col="purple")

legend(5.5,1.2, lwd = 2, c("Setosa", "Versicolor", "Verginica"), col = c("red", "cyan", "purple"))


# 6. Plot6: 3D plot showing distinct clustering of flowers in terms of SL, SW and PL. Different colors for different plants.
library(rgl)
plot3d(abc[,1:3], col = rep(c("red", "blue", "green"), each=50))





# 7. Plot7: Scatter plot matrix showing a global view of the distribution of SL, SW, PL and PW across 3 plants. 

pairs(abc[,1:4], col=rep(c("red","blue","green"), each=50))





# 8. Plot8: Heatmap showing clustering of flowers in terms of their SL, SW, PL and PW properties.
pqrs=as.matrix(abc[,1:4])
library(gplots)
heatmap.2(pqrs, trace = "none")




# 9. Plot9: Pie chart showing the number of flowers in 6 categories (3 plants and 2 colors) 

set_R=filter(abc, SP=="setosa", Col=="Red")
nrow(set_R)
set_B=filter(abc, SP=="setosa", Col=="Blue")
nrow(set_B)
ver_R=filter(abc, SP=="versicolor", Col=="Red")
nrow(ver_R)
ver_B=filter(abc, SP=="versicolor", Col=="Blue")
nrow(ver_B)
vir_R=filter(abc, SP=="virginica", Col=="Red")
nrow(vir_R)
vir_B=filter(abc, SP=="virginica", Col=="Blue")
nrow(vir_B)

xyz=c(nrow(set_R), nrow(set_B), nrow(ver_R), nrow(ver_B), nrow(vir_R), nrow(vir_B))

pie(xyz, labels = xyz, col = c("red", "cyan", "yellow", "blue", "green", "magenta"))

legend(0.99999,1,c("Set_R","Ver_R","Vir_R","Set_B", "Ver_B", "Vir_B"), pch=15, col=c("red", "cyan", "yellow", "blue", "green", "magenta"))

# 10. Plot10: Dot chart showing clear distribution of SL among 3 plants.


dotchart(iris[,1],groups = iris$Species, main="Sepal length across 3 Plants ")


