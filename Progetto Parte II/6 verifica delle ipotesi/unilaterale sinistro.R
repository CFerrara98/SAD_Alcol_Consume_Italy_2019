#test unilaterale sinistro approssimato H0 = lambda <= 6
campione

#media campionaria
mean <- mean(campione)
mean

#length N
n <- length(campione)
n

lambda0 <- 6

#stima di verifica di poisson lambda <= 6
stima <- (mean - lambda0) / (sqrt(lambda0) / sqrt(n))
stima

#calcolo 
aplha = 0.001

#Estremo inferiore regione di rifiuto
qnorm (1-(alpha) ,mean =0, sd =1)

#PValue
1 ??? pnorm(stima, mean = 0, sd = 1)

