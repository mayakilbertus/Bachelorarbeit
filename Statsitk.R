
table <- read.csv('/Volumes/Kilbertus/Bachelorarbeit/Klassifikationen /Klassifikationen_arten /klassifikationen_alle_cluster.csv', sep = '\t')
head(table)
df_ges <- df_table %>% pull(Gesamtanzahl)
log_ges <- log10(df_ges+1)

#normal distribution 
shapiro.test(table_ges$Gesamtanzahl)
shapiro.test(table_ges$X10)
shapiro.test(table_ges$X20)
shapiro.test(table_ges$X30)
shapiro.test(table_ges$X40)
shapiro.test(table_ges$X50)
shapiro.test(table_ges$X60)

shapiro.test(table$Gesamtanzahl)


#Plot

plot(table_ges$Gesamtanzahl, table_ges$X10, ylim=c(0,1), xlab="Fledermauskontakte", ylab="Anteil", main="Wald" )
plot(table_ges$Gesamtanzahl, table_ges$X20, ylim=c(0,1), xlab="Fledermauskontakte", ylab="Anteil", main="geringe Vegetation")
plot(table_ges$Gesamtanzahl, table_ges$X30, ylim=c(0,1), xlab="Fledermauskontakte", ylab="Anteil", main="Wasser")
plot(table_ges$Gesamtanzahl, table_ges$X40, ylim=c(0,1), xlab="Fledermauskontakte", ylab="Anteil", main="Gebäude")
plot(table_ges$Gesamtanzahl, table_ges$X50, ylim=c(0,1), xlab="Fledermauskontakte", ylab="Anteil", main="Kahler Boden")
plot(table_ges$Gesamtanzahl, table_ges$X60, ylim=c(0,1), xlab="Fledermauskontakte", ylab="Anteil", main="Landwirtschaft")


#Häufigkeit
hist(table_ges$Gesamtanzahl, ylab="Häufigkeit", xlab="Anzahl", ylim = c(0,1000), main="Fledermauskontakte", breaks = 30)
hist(table_ges$X10, ylab="Anzahl", xlab="Anteil", ylim = c(0,1000), xlim = c(0,1), main="Wald", breaks = 30)
hist(table_ges$X20, ylab="Anzahl", xlab="Anteil", ylim = c(0,1000), xlim = c(0,1), main="Geringe Vegetation", breaks = 30)
hist(table_ges$X30, ylab="Anzahl", xlab="Anteil", ylim = c(0,1000), xlim = c(0,1), main="Wasser", breaks = 30)
hist(table_ges$X40, ylab="Anzahl", xlab="Anteil", ylim = c(0,1000), xlim = c(0,1), main="Gebäude", breaks = 30 )
hist(table_ges$X50, ylab="Anzahl", xlab="Anteil", ylim = c(0,1000), xlim = c(0,1), main="Kahler Boden", breaks = 30)
hist(table_ges$X60, ylab="Anzahl", xlab="Anteil", ylim = c(0,1000), xlim = c(0,1), main="Landwirtschaft", breaks = 30)

hist(table_ges$X10, ylab="Häufigekeit", xlab="Anzahl", ylim = c(0,1000), main="Wald")


#Verteilung der Klassifikationen
plot(density(na.omit(table$Gesamtanzahl)), main="Verteilung Gesamtanzahl", ylab="Dichte")
plot(density(na.omit(table$X10)), main="10: Wald")
plot(density(na.omit(table$X20)), main="20: geringe Vegetation")
plot(density(na.omit(table$X30)), main="30: Wasser")
plot(density(na.omit(table$X40)), main="40: Gebäude")
plot(density(na.omit(table$X50)), main="50: Kahler Boden")
plot(density(na.omit(table$X60)), main="60: Landwirtschaft")

#Spearman 
cor.test(table$Gesamtanzahl,table$X10, , method="spearman", exact = FALSE)
cor.test(table$Gesamtanzahl,table$X20, , method="spearman", exact = FALSE)
cor.test(table$Gesamtanzahl,table$X30, , method="spearman", exact = FALSE)
cor.test(table$Gesamtanzahl,table$X40, , method="spearman", exact = FALSE)
cor.test(table$Gesamtanzahl,table$X50, , method="spearman", exact = FALSE)
cor.test(table$Gesamtanzahl,table$X60, , method="spearman", exact = FALSE)





