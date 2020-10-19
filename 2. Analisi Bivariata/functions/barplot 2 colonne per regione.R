
df <- data.frame(dati$`Consumo moderato`, dati$`Binge drinking`)
colnames(df) <- c("consumo moderato", "binge drinking")

df[order(dati$`Consumo moderato`)]


orderedDF <- df[order(df[,1]),]

orderedDF
colnames(orderedDF) <- c("consumo moderato", "binge drinking")
orderedDF

barplot (data.matrix(orderedDF), beside = TRUE);


b <- barplot ( t(data.matrix(orderedDF)), beside = TRUE,
        main="barplot di confronto (consumo moderato - bingedrinking) in ordine crescente con segmenti residui",
          col =  c(" green ", "red") , rownames = dati$Regioni[order(dati$`Binge drinking`)], las=2, names = dati$Regioni[order(dati$`Consumo moderato`)])


