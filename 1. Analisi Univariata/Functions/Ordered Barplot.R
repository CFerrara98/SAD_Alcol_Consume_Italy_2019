
# This function will create a Pareto diagram based on the array parameter
createBarplot <- function (array_to_analyze, title){
  
  # Ordering 
  ari_ordered <- order(array_to_analyze)
  
  # Creating graphic
  bp <- barplot(array_to_analyze[ari_ordered],
                col=rainbow(length(array_to_analyze)), 
                names = dati$Regioni[ari_ordered], las=2,  main = title)
  
}

createBarplot(dati$`Binge drinking`, "Barplot Binge Drinking 2019")
abline(h=mean(dati$`Binge drinking`) + 100)
