
# This function will create a boxplot and relative details based on the array parameter
createBoxPlot <- function (array_to_analyze, title, XLAB, YLAB){

  B <- boxplot(array_to_analyze, notch = TRUE, main = title, col = "red");

}

createBoxPlot(dati$`Binge drinking`, "box plot Binge Drinking 2019 in italia")
sort(dati$`Binge drinking`)

quantile(dati$`Binge drinking`);
IQR <- quantile(dati$`Binge drinking`, 0.75) - quantile(dati$`Binge drinking`, 0.25);
M1 <- quantile(dati$`Binge drinking`, 0.5) - 1.57 * IQR/sqrt(length((dati$`Binge drinking`)))
M2 <- quantile(dati$`Binge drinking`, 0.5) + 1.57 * IQR/sqrt(length((dati$`Binge drinking`)))
c(M1, M2)