campione <- c(4,  6 , 4,  6,  7,  4,  8,  5,  4,  3,  8,  8,  4,  6,  6,  7,  5,
              11,  4,  4, 7,  8,  2,  3,  2,  6,  7,  5,  4,  5,  6,  5,  7,  3, 
              2,  7,  7,  4,  8,  3,  4,  8,  3, 4,  3,  5,  7,  8,  4,  5 ) 

campione
stimalambda <- mean(campione)
stimalambda

#teorica
x <- (0:11)
plot(x,dpois (x, lambda = stimalambda) ,xlab="x",ylab=" Probabilita ' ",type ="h",
     main=" Funzione di probabilità con lambda = 5.32 stimato con il metodo dei momenti",xlim=c(0 ,10) ,ylim =c (0 ,0.20))

plot( table (campione)/ length (campione), xlab="Xi",type="h", ylab=" Frequenza relativa",xlim =c(0 ,10) ,ylim=c(0 ,0.20) ,
      main = "Frequenze relative ai dati riportati
      dal campione di 50 prove di poisson per il rilevamento dei positivi al test alcolemico")

table(campione)

dpois (5, lambda = stimalambda)
