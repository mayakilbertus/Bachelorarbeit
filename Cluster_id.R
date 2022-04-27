library(dplyr)
library(data.table)

df = read.csv("/Volumes/Kilbertus/Klassifikationen /Klassifikationen_arten /klassifikationen_ges.csv")

DT <- data.table(df, key="Transekt,ID")
DT[, Cluster_ID:=.GRP, by=key(DT)]

#remove X column
DT$X <- NULL

write.csv(DT,"/Volumes/Kilbertus/Klassifikationen /Klassifikationen_arten /klassifikationen_ges_id.csv", row.names = FALSE)


