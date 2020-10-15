quantile(dati$`Binge drinking`)
summary(dati$`Binge drinking`)



var(dati$`Binge drinking`)
sd(dati$`Binge drinking`)


sorted_array <- sort(dati$`Binge drinking`);
sorted_array
mean(dati$`Binge drinking`)
sleckness <- sorted_array - mean(dati$`Binge drinking`)


IdealVector <- c(sorted_array[1:17], rep(182, 5))
IdealVector
summary(IdealVector)
var(IdealVector)
sd(IdealVector)

quantile(IdealVector)
boxplot(IdealVector, main="box plot campione Binge-Drinking con modifiche a valori di Allerta", col ="blue")
