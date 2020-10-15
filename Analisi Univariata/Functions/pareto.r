
# This function will create a Pareto diagram based on the array parameter
createPareto <- function (array_to_analyze, title){
  # Sum all items
  mySum = sum(array_to_analyze)
  array_to_analyze <- array_to_analyze / mySum
  
  # Ordering 
  ari_ordered <- order(array_to_analyze, decreasing = TRUE)
  
  # Creating graphic
  bp <- barplot(array_to_analyze[ari_ordered],
                col=rainbow(length(array_to_analyze)), 
                names = dati$Regioni[ari_ordered], las=2, ylim = c(0, 1.07), main = title)
  
  lines(bp, cumsum(array_to_analyze[ari_ordered]), 
        type = "b", pch = 16, col = "blue")
  
  text(bp - 0.3, cumsum(array_to_analyze[ari_ordered]) + 0.05,
       paste(format(cumsum(array_to_analyze[ari_ordered]) * 100,
                    digits = 3)), cex=0.6)
  
  legend(1, 0.9, legend=c("copertura in percentuale"),
         col=c("blue"), lty=1:2, cex=0.8)
}

createPareto(dati$`Binge drinking`, "Diagramma di pareto Binge Drinking 2019")
