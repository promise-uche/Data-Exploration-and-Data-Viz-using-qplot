#Exploration of MPG Dataset
#Quieck  and simple visualization using qplot

#By  Promise  Onyemaechi


library("tidyverse") #always run this line at starting R
mpg
#This dataset provides fuel economy data from 1999 and 2008 for 38 popular models of cars. The dataset is shipped

#Data Description
str(mpg) #structure

#Number of rows or observations or records
nrow(mpg)

#Number of columns or variables
ncol(mpg)

#Names of columns
colnames(mpg)

#exploring each variable in the mpg dataset
#MANUFACTURES
table(mpg$manufacturer)

#making quick plot with gplot
m=qplot(manufacturer, data=mpg, geom="bar", fill=manufacturer)
ggsave("manufacture.png", plot = m, width = 6, height = 4)


# YEAR OF MANUFACTURING
table(mpg$year)
y = qplot(factor(year), data=mpg, geom="bar", fill=factor(year))
ggsave("year.png", plot = y, width = 6, height = 4)


#DISPLAEMENT
#table(mpg$displ)
summary(mpg$displ)
d=qplot(displ, data=mpg, geom="histogram", bins=40)
ggsave("Displacement.png", plot = d, width = 6, height = 4)

#BOXPLOT

boxplot(mpg$displ)
b=qplot(displ, data=mpg, geom="boxplot", bins=40)

ggsave("boxplot.png", plot = b, width = 6, height = 4)


#Cylinders
table(mpg$cyl)

c=qplot(cyl, data=mpg, geom="bar", fill=factor(cyl))
ggsave("cylinderg", plot = c, width = 6, height = 4)


#Fuel types
table(mpg$fl)


f=qplot(fl, data=mpg, geom="bar", fill=fl)
ggsave("fuel_type.png", plot = f, width = 6, height = 4)

#Vehicle Class
table(mpg$class)
 
qplot(class, data=mpg, geom="bar", fill=class)

#Displacement vs highway efficiency
dp=ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy), color='red')
ggsave("Disp_vs_Eff.png", plot = dp, width = 6, height = 4)

