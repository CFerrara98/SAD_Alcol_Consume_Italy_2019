campione

#media campionaria
mean <- mean(campione)
mean

#length N
n <- length(campione)
n

lambda0 <- 5

#stima di verifica di poisson lambda = 5
stima <- (mean - lambda0) / (sqrt(lambda0) / sqrt(n))
stima

#intervallo 
aplha = 0.001

#Estremo inferiore regione di accettazione
qnorm (alpha/2 ,mean =0, sd =1)

#Estremo superiore regione di accettazione
qnorm (1-(alpha/2) ,mean =0, sd =1)


#pvalue
2 ??? (1 ??? pnorm(abs(stima), mean = 0, sd = 1))