myo_table <- read.csv("/Volumes/Kilbertus/Klassifikationen /Klassifikationen_arten /klassifikationen_myo.csv")

sum(myo_table$Gesamtanzahl.Myotis)
sum(myo_table$M..spec.)
sum(myo_table$M..daub)


# alle Myotis n=19
kruskal.test(myo_table$Gesamtanzahl.Myotis~myo_table$X10)
kruskal.test(myo_table$Gesamtanzahl.Myotis~myo_table$X20)
kruskal.test(myo_table$Gesamtanzahl.Myotis~myo_table$X30)
kruskal.test(myo_table$Gesamtanzahl.Myotis~myo_table$X40)
kruskal.test(myo_table$Gesamtanzahl.Myotis~myo_table$X50)
kruskal.test(myo_table$Gesamtanzahl.Myotis~myo_table$X60)

# M. daubentonii n=15
kruskal.test(myo_table$M..daub~myo_table$X10)
kruskal.test(myo_table$M..daub~myo_table$X20)
kruskal.test(myo_table$M..daub~myo_table$X30)
kruskal.test(myo_table$M..daub~myo_table$X40)
kruskal.test(myo_table$M..daub~myo_table$X50)
kruskal.test(myo_table$M..daub~myo_table$X60)

