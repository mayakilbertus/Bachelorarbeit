library("MASS")
library("pscl")
library("flexplot")
library("sjPlot")
library(performance)
library(utils)

# Negative binomial Regression  

nb.sq <- glm.nb(Fledermauskontakte ~ Wald + `niedrige Vegetation` + Wasser + `überbaute Flächen` + `kahler Boden` + Landwirtschaft, data = cleaned_table2, link=sqrt)
nb.sq2 <- glm.nb(Fledermauskontakte ~ `niedrige Vegetation` + Wasser + `überbaute Flächen` + `kahler Boden`, data = cleaned_table2, link=sqrt)

#check_model(nb.sq2)
nb.log <- glm.nb(Fledermauskontakte ~ Wald + `niedrige Vegetation` + Wasser + `überbaute Flächen` + `kahler Boden` + Landwirtschaft, data = cleaned_table2, link=log)
nb.log1 <- glm.nb(Fledermauskontakte_org ~ `niedrige Vegetation` + Wasser + `überbaute Flächen` + `kahler Boden` + Landwirtschaft, data = cleaned_table2, link=log)

check_model(nb.log)
check_model(nb.log1)
check_model(nb.sq2)
AIC(nb.log1, nb.sq2)

summary(nb.log1)

# Poisson Regression
pois <- glm(Fledermauskontakte ~ Wald + `niedrige Vegetation` + Wasser + `überbaute Flächen` + `kahler Boden` + Landwirtschaft, data=table, family=poisson)

AIC( nb.sq, nb.log1, nb.log, pois, nb.sq2)


# AID backwards regression
step(nb.sq,direction = "backward")
step(nb.log,direction = "backward")






