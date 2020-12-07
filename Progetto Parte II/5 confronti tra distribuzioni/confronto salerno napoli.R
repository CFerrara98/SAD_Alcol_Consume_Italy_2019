campione2 <- rpois(50, 4)
campione2
#Salerno
mean(campione)
#Napoli
mean(campione2)

#stima intervallare per differenza popolazioni

alpha <- 1 - 0.99

#numero di individui campione Salerno
n1 <- length ( campione )
#numero di individui campione Napoli
n2 <- length ( campione2 )

#media campionaria campione Salerno # Stima puntuale lambda1
m1 <- mean( campione )

#media campionaria campione Napoli # Stima puntuale lambda2
m2 <-mean( campione2 )

rad <-sqrt (m1/n1 + m2/n2)

#stima C1 limite superiore lambda1 - lambda 2
m1 -m2 + qnorm(1-alpha/2, mean = 0, sd = 1) * rad

#stima C2 limite inferiore lambda1 - lambda 2
m1 -m2 - qnorm (1- alpha /2, mean =0, sd =1) * rad