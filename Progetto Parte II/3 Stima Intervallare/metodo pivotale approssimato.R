campione <- c(4,  6 , 4,  6,  7,  4,  8,  5,  4,  3,  8,  8,  4,  6,  6,  7,  5,
              11,  4,  4, 7,  8,  2,  3,  2,  6,  7,  5,  4,  5,  6,  5,  7,  3, 
              2,  7,  7,  4,  8,  3,  4,  8,  3, 4,  3,  5,  7,  8,  4,  5 ) 

alpha <- 1 - 0.99
#calcolo di z alpha/2
qnorm (1 - alpha/2, mean =0, sd =1)

zalpha <-qnorm (1- alpha /2, mean =0, sd =1)

n <- length(campione)

#media campionaria (stima puntuale)
medcamp <-  mean(campione)
medcamp

#calcolo dei coefficienti di secondo grado dalla
#disequazione derivanti dal metodo pivotale approssiamto
#applicato alla variabile di poisson

a2 <- n

a1 <- (2 * n * medcamp + zalpha ^2)

a0 <- n * medcamp^2

#estremi dell'intervallo di confidenza per il parametro non noto lambda con 
#grado di fiducia del 99%
polyroot (c(a0 ,a1 ,a2))
