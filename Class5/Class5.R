# Installed ggplot using install.packages(ggplot2)

# Making a scatter Plot 

# ggplot is data + aes + geoms  
library(ggplot2)
ggplot(data=cars)+ aes(x=speed, y=dist)+ geom_point() + geom_smooth()

# change to a linear model 
p <- ggplot(data=cars)+ aes(x=speed, y=dist)+ geom_point() + geom_smooth(method= "lm")

p+ labs(title="Car Plot", x= "mph", y= "distance in ft")

#Base graphics is shorter
plot(cars)
p


#Adding more data section 
url <- "https://bioboot.github.io/bimm143_S20/class-material/up_down_expression.txt"
genes <- read.delim(url)
head(genes)

#how to access State col 
table(genes$State)

# What % are up/down
prec <- table(genes$State) / nrow(genes) * 100
prec
round(prec, 2)

#Making a scatter Plot (d for drug)
head(genes)
d <- ggplot(genes) + 
  aes(x=Condition1, y=Condition2, col=State) +
  geom_point()
d + scale_colour_manual(values=c("blue","gray","red") )+ labs(title = "Change in Gene Expression After Drug Treatment", x="Control (w/o Drug)", y= "With Drug Treatment")
