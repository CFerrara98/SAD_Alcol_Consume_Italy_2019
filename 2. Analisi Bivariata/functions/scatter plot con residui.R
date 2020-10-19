plot(orderedDF, col = "blue", main = "Semplice scatter plot binge_drinking in funzione di consumo moderato")
abline(lm, col="orange");
#segmenti residui su barplot
stime <-fitted (lm)
segments (df$`consumo moderato`,stime ,df$`consumo moderato` ,df$`binge drinking` , col =" magenta ");


