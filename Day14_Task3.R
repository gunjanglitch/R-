# 16. Find the sum of 100.1,234.9 and 12.01
100.1 + 234.9 + 12.01



# 17. Find the square root of 256?
sqrt(256)




# 18. What is the 19th letter of the alphabet?

letters[19]



# 19. Make a random DNA sequence, consisting of a random selections of the letters C,A,G,T, and paste the result together into one character string. Write it in one line of Rcode.
paste(sample(c("C","A","G","T"),500, replace = T),collapse = "")



# 20. Calculate the 10-based logarithm of 100, and multiply the result with the cosine of π.
log10(100)*cos(pi)


# 21. Calculate the cumulative sum of those numbers, but in reverse order.
x=1:8
cumsum(x)
cumsum(rev(x))


# 22. The numbers below are the first ten days of rainfall amounts in indore during 2018. 
#Read them into a vector using the c ( ) function 0.1  0.6  33.8  1.9  9.6  4.3  33.7  0.3  0.0  0.1
rain=c(0.1,0.6,33.8,1.9,9.6,4.3,33.7,0.3,0.0,0.1)


# 23. What was the mean of rainfall, how about the standard deviation?

mean(rain)
sd(rain)


# 24. Calculate the cumulative rainfall('runningtotal’) over these ten days. 
#Confirm that the last value of the vector that this produces is equal to the total sum of the rainfall.

cumsum(rain)



# 25. Which day saw the highest rainfall(write code to get the answer)? 
which.max(rain)




# 26. You have measured five cylinders, their lengths are: 2.1, 3.4, 2.5, 2.7, 2.9 and 
#the diameters are: 0.3, 0.5, 0.6, 0.9, 1.1
length=c(2.1, 3.4, 2.5, 2.7, 2.9)
diameter=c(0.3, 0.5, 0.6, 0.9, 1.1)



# 27. Calculate the correlation between lengths and diameters using R
cor(length,diameter)



# 28. Calculate the volume of each cylinder(V=length*pi*(diameter/2)2).
volume=length*pi*(diameter/2)^2
volume




# 29. Calculate the mean, standard deviation, and coefficient of variation of the volumes.
mean(volume)
sd(volume)
sd(volume)/mean(volume)


# 30. Assume your measurements are in centimeters. 
#Recalculate the volumes so that their units are in cubic millimeters. 
#Calculate the mean, standard deviation, and coefficient of variation of these new volumes.
volume_mm=10*length*pi*(10*diameter/2)^2
mean(volume_mm)
sd(volume_mm)
sd(volume_mm)/mean(volume_mm)
  
