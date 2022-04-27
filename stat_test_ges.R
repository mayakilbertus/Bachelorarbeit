
table <- read.csv('/Volumes/Kilbertus/Klassifikationen /klassifikationen_neu.csv')

table$X10 <- as.numeric(table$X10) 
table$X20 <- as.numeric(table$X20)
table$X30 <- as.numeric(table$X30)
table$X40 <- as.numeric(table$X40)
table$X50 <- as.numeric(table$X50)
table$X60 <- as.numeric(table$X60)

#normal distribution 
shapiro.test(table$Gesamtanzahl)
shapiro.test(table$X10)
shapiro.test(table$X20)
shapiro.test(table$X30)
shapiro.test(table$X40)
shapiro.test(table$X50)
shapiro.test(table$X60)

#Plot

plot(table$Gesamtanzahl, table$X10, ylim=c(0,1))
plot(table$Gesamtanzahl, table$X20, ylim=c(0,1))
plot(table$Gesamtanzahl, table$X30, ylim=c(0,1))
plot(table$Gesamtanzahl, table$X40, ylim=c(0,1))
plot(table$Gesamtanzahl, table$X50, ylim=c(0,1))
plot(table$Gesamtanzahl, table$X60, ylim=c(0,1))



#Häufigkeit
hist(table$Gesamtanzahl, ylab="Häufigekeit", xlab="Anzahl", ylim = c(0,1000))
hist(table$X10, ylab="Häufigekeit", xlab="Anzahl", ylim = c(0,1000))
hist(table$X20, ylab="Häufigekeit", xlab="Anzahl", ylim = c(0,1000))
hist(table$X30, ylab="Häufigekeit", xlab="Anzahl", ylim = c(0,1000))
hist(table$X40, ylab="Häufigekeit", xlab="Anzahl", ylim = c(0,1000))
hist(table$X50, ylab="Häufigekeit", xlab="Anzahl", ylim = c(0,1000))
hist(table$X60, ylab="Häufigekeit", xlab="Anzahl", ylim = c(0,1000))


#Verteilung der Klassifikationen
plot(density(na.omit(table$Gesamtanzahl)), main="Verteilung Gesamtanzahl", ylab="Dichte")
plot(density(na.omit(table$X10)), main="10: Wald")
plot(density(na.omit(table$X20)), main="20: geringe Vegetation")
plot(density(na.omit(table$X30)), main="30: Wasser")
plot(density(na.omit(table$X40)), main="40: Gebäude")
plot(density(na.omit(table$X50)), main="50: Kahler Boden")
plot(density(na.omit(table$X60)), main="60: Landwirtschaft")

#Kruskal


kruskal.test(table$Gesamtanzahl~table$X10)
kruskal.test(table$Gesamtanzahl~table$X20)
kruskal.test(table$Gesamtanzahl~table$X30)
kruskal.test(table$Gesamtanzahl~table$X40)
kruskal.test(table$Gesamtanzahl~table$X50)
kruskal.test(table$Gesamtanzahl~table$X60) 




