# 22. Create a Data frame of gene expression data such that
# • First column “Genes”, is a character vector of 6 genes (G1, G2,…… G6).
genes=paste("G",1:6,sep = "")
genes
# • Second column “C1” is a numeric vector of 6 random values from 3 to 5.
c1=sample(3:5, 6, replace = T)
c1

# Hint: Generate random numbers using function sample (). Use R help to see the syntax of sample if needed.
# • Third column, “C2” is a numeric vector of 6 random values from 3 to 5
c2=sample(3:5,6,replace = T)
c2


# • Fourth column, “T1” is a numeric vector of 6 random values from 5 to 7.
T1=sample(5:7, 6, replace = T)
T1

# • Fifth column “T2” is a numeric vector of 6 random values from 5 to 7.
T2=sample(5:7,6,replace = T)
T2
# • Sixth column, “Pathway” is a character vector of which first 3 represent one pathway “P1”and other 3 represent pathway “P2”.
pathway=rep(c("P1","P2"), each=3)
pathway

# 23. Fetch values of column T2
abc=data.frame("Genes"=genes,"C1"=c1, "C2"=c2, "T1"=T1, "T2"=T2, "Pathway"=pathway)
abc$T2
abc

# 24. Fetch values of gene G2 
abc[2,]

# 25. Fetch values of gene G3 from C2.
abc[3,3]
abc
# 26. Delete Column C2
abc$C2=NULL
abc

# 27. Insert Column C3, which should be numeric vector of 6 random values from 3 to 5. 
abc$C3=sample(3:5,6, replace = T)
abc
# 28. Find mean of column C1
mean(abc$C1)
