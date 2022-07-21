library(ggplot2)
library(gridExtra)

# Plots
p1 <- ggplot(df_table, aes( x=X10, y=Gesamtanzahl)) +
  geom_point()+
  labs(title="Wald",
       x="Anteil",
       y="Anzahl an Fledermauskontakten")+
  theme_bw() + 
  scale_y_continuous(trans="log10")

p2 <- ggplot(df_table, aes( x=X20, y=Gesamtanzahl)) +
  geom_point()+
  labs(title="niedrige Vegetation",
       x="Anteil",
       y="Anzahl an Fledermauskontakten")+
  theme_bw() + 
  scale_y_continuous(trans="log10")

p32 <- ggplot(df_table, aes( x=X30, y=Gesamtanzahl)) +
  geom_point()+
  labs(title="Wasser",
       x="Anteil",
       y="Anzahl an Fledermauskontakten")+
  theme_bw() + 
  scale_y_continuous(trans="log10")
p3 <- p32 + coord_cartesian(xlim=c(0,1))

p4 <- ggplot(df_table, aes( x=X40, y=Gesamtanzahl)) +
  geom_point()+
  labs(title="überbaute Flächen",
       x="Anteil",
       y="Anzahl an Fledermauskontakten")+
  theme_bw() + 
  scale_y_continuous(trans="log10")

p52 <- ggplot(df_table, aes( x=X50, y=Gesamtanzahl)) +
  geom_point()+
  labs(title="kahler Boden",
       x="Anteil",
       y="Anzahl an Fledermauskontakten")+
  theme_bw() + 
  scale_y_continuous(trans="log10")
p5 <- p52 + coord_cartesian(xlim=c(0,1))

p6 <- ggplot(df_table, aes( x=X60, y=Gesamtanzahl)) +
  geom_point()+
  labs(title="Landwirtschaft",
       x="Anteil",
       y="Anzahl an Fledermauskontakten")+
  theme_bw() + 
  scale_y_continuous(trans="log10")

p_all <- grid.arrange(p1, p2, p3, p4, p5, p6, ncol=3)

jpeg(file="/Users/mayakilbertus/Downloads/my_plot.jpeg", quality = 100, width = 1000, height = 718)
p_all
dev.off()

p + scale_x_continuous(trans = "Anteil")
p + scale_y_continuous(trans="log10", "Anzahl an Fledermauskontakten")

#Histogramm 
ggplot(df_table, aes(x=Gesamtanzahl))+
  geom_histogram(aes(y=..density..),fill="grey", color = "black") +
  stat_function(fun=dnorm,
                args = list(mean = mean(df_table$Gesamtanzahl),
                            sd=sd(df_table$Gesamtanzahl)),
                col= "blue",
                size = 0.5)+
  labs(title="Fledermauskontakte pro Transektabschnitt",
       x="Anzahl",
       y="Häufigkeitsdichte")+
  theme_bw()

plot_1 <- ggplot(df_table, aes(x=X10))+
  geom_histogram(aes(),fill="grey", color = "black", bins = 20)+
  theme_bw()+
  labs(title="Wald",
       x="Anteil",
       y="Anzahl")
plot_10 <- plot_1 + coord_cartesian(ylim=c(0,1000))



plot_2 <- ggplot(df_table, aes(x=X20))+
  geom_histogram(aes(), fill="grey", color = "black", bins = 20)+
  theme_bw()+
  labs(title="niedrige Vegetation",
       x="Anteil",
       y="Anzahl")
plot_20 <- plot_2 + coord_cartesian(ylim=c(0,1000))


plot_3 <- ggplot(df_table, aes(x=X30))+
  geom_histogram(aes(), fill="grey", color = "black", bins = 20)+
  theme_bw()+
  labs(title="Wasser",
       x="Anteil",
       y="Anzahl")
plot_30 <- plot_3 + coord_cartesian(xlim=c(0,1), ylim=c(0,1000))


plot_4 <- ggplot(df_table, aes(x=X40))+
  geom_histogram(aes(), fill="grey", color = "black", bins = 20)+
  theme_bw()+
  labs(title="überbaute Flächen",
       x="Anteil",
       y="Anzahl")
plot_40 <- plot_4 + coord_cartesian(ylim=c(0,1000))


plot_5 <- ggplot(df_table, aes(x=X50))+
  geom_histogram(aes(), fill="grey", color = "black", bins = 20)+
  theme_bw()+
  labs(title="kahler Boden",
       x="Anteil",
       y="Anzahl")
plot_50 <- plot_5 + coord_cartesian(xlim=c(0,1), ylim=c(0,1000))



plot_6 <- ggplot(df_table, aes(x=X60))+
  geom_histogram(aes(), fill="grey", color = "black", bins = 20)+
  theme_bw()+
  labs(title="Landwirtschaft",
       x="Anteil",
       y="Anzahl")
plot_60 <- plot_6 + coord_cartesian(ylim=c(0,1000))
plot_all <- grid.arrange(plot_10, plot_20, plot_30, plot_40, plot_50, plot_60, ncol=3)
plot_all
ggsave("hist_all_categories.jpg", plot = plot_all, width = 730, height = 496, units = c("px"), dpi = 300)

require(scales)
p + scale_y_continuous(trans = log10_trans(),
                       breaks = trans_breaks("log10", function(x) 2^x),
                       labels = trans_format("log10", math_format(2^.x)))
ggplot(df_table, aes( x=X10, y=Gesamtanzahl)) +
  geom_point()+
  #geom_line(bats.pois)+
  labs(title="Wald",
       x="Anteil",
       y="Anzahl an Fledermauskontakten")+
  theme_bw() #+ 
#scale_y_continuous(trans="log10")