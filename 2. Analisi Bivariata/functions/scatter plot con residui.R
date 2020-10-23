plot(orderedDF, col = "blue", main = "Semplice scatter plot binge_drinking in funzione di consumo moderato")
abline(lm, col="orange");
#segmenti residui su barplot
stime <-fitted (lm)
segments (df$`consumo moderato`,stime ,df$`consumo moderato` ,df$`binge drinking` , col =" magenta ");



#diagramma dei resudui
plot(df$`consumo moderato`, lm$residuals, pch=3, col = "orange", xlab="consumo moderato", ylab = "residui", main = "diagramma dei residui BingeDrinking -> Consumo Moderato");
abline(h=0, lty = 3, col = "blue")

lm2
