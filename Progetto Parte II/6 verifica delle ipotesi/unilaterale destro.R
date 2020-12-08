#test unilaterale destro approssimato H0 = lambda >= 4
campione

#media campionaria
mean <- mean(campione)
mean

#length N
n <- length(campione)
n

lambda0 <- 4

#stima di verifica di poisson lambda >= 4
stima <- (mean - lambda0) / (sqrt(lambda0) / sqrt(n))
stima

#calcolo regione di accettazione
aplha = 0.001

#Estremo superiore regione di rifiuto
qnorm ((alpha) ,mean =0, sd =1)

#PValue
pnorm(stima, mean = 0, sd = 1)