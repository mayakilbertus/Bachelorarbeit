library(fitdistrplus)

#Cullen and Frey graph
descdist(data=cleaned_table$Gesamtanzahl, discrete = TRUE, boot = 500)


#Fit distribution 
fit_pois <- fitdist(data=table$Gesamtanzahl, "pois")
fit_nbinom <- fitdist(data=table$Gesamtanzahl, "nbinom")

summary(fit_pois)
summary(fit_nbinom)

#library(logspline)
#library(tidyverse)
#library(MASS)
