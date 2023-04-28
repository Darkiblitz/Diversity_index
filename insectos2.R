install.packages("vegan")
install.packages("BiodiversityR")
library(vegan)
library(BiodiversityR)
library(clipr)
library(ggplot2)

bichos2=read_clip_tbl()

bichos=read_clip_tbl()

riqueza=specnumber(bichos2)
riqueza
barplot(riqueza)

boxplot(bichos2, ylab="abundance", xlab="", 
        legend = rownames(bichos2), las=2, cex.lab=1, cex.axis=0.5)

H=diversity(bichos2,index = "shannon")
H

simpson=diversity(bichos2,"simpson")
simpson

fisher.alpha(bichos2, se=T)



inversesimpson=diversity(bichos2,"inv")
inversesimpson

plot(inversesimpson,H, pch=21, bg=3, cex=1.9)
grid()
identify(inversosimpson,H)

curva=specaccum(bichos2)
curva

plot(curva, ci.type = "poly", col="blue", lwd=2,ci.lty = 0, ci.col = "grey90")

ggplot2(bichos, mapping = aes(x= PARCELA, y= Margalef, fill= PARCELA)) +
  geom_col()
