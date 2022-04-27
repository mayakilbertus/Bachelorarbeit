pip_table <- read.csv("/Volumes/Kilbertus/Bachelorarbeit/Klassifikationen /Klassifikationen_arten /klassifikationen_pip.csv")

sum(pip_table$Gesamtanzahl.Pip)
sum(pip_table$P..spec.)
sum(pip_table$P..pip)
sum(pip_table$P..nath)

mean(pip_table$Gesamtanzahl.Pip)
mean(pip_table$P..pip)

kruskal.test(pip_table$Gesamtanzahl.Pip~pip_table$X10)
kruskal.test(pip_table$Gesamtanzahl.Pip~pip_table$X20)
kruskal.test(pip_table$Gesamtanzahl.Pip~pip_table$X30)
kruskal.test(pip_table$Gesamtanzahl.Pip~pip_table$X40)
kruskal.test(pip_table$Gesamtanzahl.Pip~pip_table$X50)
kruskal.test(pip_table$Gesamtanzahl.Pip~pip_table$X60)


kruskal.test(pip_table$P..pip~pip_table$X10)
kruskal.test(pip_table$P..pip~pip_table$X20)
kruskal.test(pip_table$P..pip~pip_table$X30)
kruskal.test(pip_table$P..pip~pip_table$X40)
kruskal.test(pip_table$P..pip~pip_table$X50)
kruskal.test(pip_table$P..pip~pip_table$X60)

kruskal.test(pip_table$P..nath~pip_table$X10)
kruskal.test(pip_table$P..nath~pip_table$X20)
kruskal.test(pip_table$P..nath~pip_table$X30)
kruskal.test(pip_table$P..nath~pip_table$X40)
kruskal.test(pip_table$P..nath~pip_table$X50)
kruskal.test(pip_table$P..nath~pip_table$X60)







