# Method A
install.packages("psych")	#install packages
library(psych)
pairs.panels(data[5:6])		#select 5th-6th columns 


# Method B
install.packages("PerformanceAnalytics")
library(readx1)
X5_3_RNA_1_expression <- read_excel("X:/RNAQC/Remove rRNA/5_3_RNA_1_expression.xlsx")
data <- X5_3_RNA_1_expression 

library("PerformanceAnalytics") 
char.Correlation(data[4:6])		#select columns 4-6


# Method C
library("PerformanceAnalytics")
library(readx1)
X5_3_RNA_2_expression <- read_excel("X:/RNAQC/Remove rRNA/5_3_RNA_2_expression.xlsx")
view(X5_3_RNA_2_expression)

my_data <- X5_3_RNA_2_expression[, c(4,5,6)]
head(my_data,6)
char.Correlation(my_data, histogram=true, pch=19)
