
# This function will create a histogram diagram based on the array parameter
createHist <- function (array_to_analyze, title, XLAB, YLAB){

  h <- hist(array_to_analyze, main = title, ylab = YLAB, xlab = XLAB, col = rainbow(length(array_to_analyze)));
  str(h);
  
  return <- h;
  
}

h <-  createHist(dati$`Binge drinking`, "Istogramma in frequenze assolute Drinking 2019", "classi di frequenza", "frequenze assolute")

freq_rel <- h$density *  100

freq_rel
