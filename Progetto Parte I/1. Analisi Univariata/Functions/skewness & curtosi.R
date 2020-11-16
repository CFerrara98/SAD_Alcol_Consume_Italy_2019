
# This function will create a histogram diagram based on the array parameter
createHist <- function (array_to_analyze, title, XLAB, YLAB){
  
  h <- hist(array_to_analyze, main = title, ylab = YLAB, xlab = XLAB, col = rainbow(length(array_to_analyze)));
  str(h);
  
  return <- h;
  
}

h <-  createHist(dati$`Binge drinking`, "Istogramma in frequenze assolute Drinking 2019", "classi di frequenza", "frequenze assolute")



freq_rel <- h$density *  100

freq_rel


skw <- function (x){
   n <-length (x)
    m2 <-(n -1) *var (x)/n
    m3 <- (sum ( (x-mean(x))^3) )/n
    m3/(m2 ^1.5)
}

skw(dati$`Binge drinking`)

curt <- function (x){
    n<-length (x)
    m2 <-(n -1) *var (x)/n
    m4 <- (sum ( (x- mean(x))^4) )/n
    m4/(m2 ^2) -3
 }