nyc_table <- read.csv("/Volumes/Kilbertus/Bachelorarbeit/Klassifikationen /Klassifikationen_arten /klassifikationen_nyc.csv")

sum(nyc_table$Gesamtanzahl.Nyc)
sum(nyc_table$N..spec.)
sum(nyc_table$N..noc)
sum(nyc_table$N..leis)



kruskal.test(nyc_table$Gesamtanzahl.Nyc~nyc_table$X10)
kruskal.test(nyc_table$Gesamtanzahl.Nyc~nyc_table$X20)
kruskal.test(nyc_table$Gesamtanzahl.Nyc~nyc_table$X30)
kruskal.test(nyc_table$Gesamtanzahl.Nyc~nyc_table$X40)
kruskal.test(nyc_table$Gesamtanzahl.Nyc~nyc_table$X50)
kruskal.test(nyc_table$Gesamtanzahl.Nyc~nyc_table$X60)

plot(nyc_table$Gesamtanzahl.Nyc, nyc_table$X10, ylim=c(0,1))
