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



# This function will create a Barplot diagram based on the array parameter
createBarplot <- function (array_to_analyze, title){
  
  # Ordering 
  ari_ordered <- order(array_to_analyze)
  
  # Creating graphic
  bp <- barplot(array_to_analyze[ari_ordered],
                col=c(rep("darkgreen",12), rep("orange", 4), rep("red", "5")), 
                names = dati$Regioni[ari_ordered], las=2,  main = title)
  
}

createBarplot(dati$`Binge drinking`, "Barplot Binge Drinking 2019 \ncon confronto con media Campionaria")
abline(h=mean(dati$`Binge drinking`), col="blue")
abline(h=mean(dati$`Binge drinking`) + 100, col="black")

legend(1, 690, c("main", "main + 100"), col = c("blue", "black"),  lty = c(1,1),
       merge = TRUE, bg = "white")

cv <- function (x){sd(x)/abs (mean (x))}

cv(dati$`Binge drinking`)
