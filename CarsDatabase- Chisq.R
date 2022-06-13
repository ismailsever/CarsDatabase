#Load Libraries
library(MASS)
#Create Table 
tbl = table(carsdatabase$Cylinders, carsdatabase$Type) 
tbl # the contingency table
#Chi-squared Statistic
chisq.test(tbl)
#New Table
ctbl = cbind(tbl[,"Compact"],tbl[,"Midsize"],tbl[,"Small"],tbl[,"Sporty"], tbl[,"Large"] + tbl[,"Van"]) 
ctbl
#Chi-squared New Table
chisq.test(ctbl)
#New Table1
ctbl1 = cbind(tbl[,"Midsize"],tbl[,"Small"],tbl[,"Compact"]+tbl[,"Sporty"], tbl[,"Large"] + tbl[,"Van"]) 
ctbl1
#Chi-squared New Table
chisq.test(ctbl1)