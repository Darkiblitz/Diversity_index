library(readxl)
bichos <- read_excel("C:/Users/nsast/OneDrive/Escritorio/bichos.xlsx")
View(bichos)

head(bichos,3)

install.packages("BiodiversityR")
library(BiodiversityR)

install.packages("ggplot2")

install.packages("dismo")

library(ggplot2)

BiodiversityRGUI()  

specnumber(bichos)

apply(bichos,1,sum)

boxplot(bichos, ylab="Abundancia", col = rainbow(ncol(bichos) ))    
title("Abundance of orders in both sample sites")

H<-diversity(bichos, index="shannon")
H

barplot()

J <- H/log(specnumber(bichos))
J

betadiver(bichos,"w")

file.choose()

insectos_barras <- read.csv("C:\\Users\\nsast\\OneDrive\\Escritorio\\Insectos_barras.csv")

ggplot(insectos_barras, aes(x = Orden, y = Numero.de.individuos, fill = Lugar, las = 10))+geom_col(position = "dodge" )+labs(title = "Abundancia de orden por sitio"
                                                                                                                             )






