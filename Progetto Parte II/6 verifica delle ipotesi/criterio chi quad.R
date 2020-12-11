#test chi-quadro per popolazione di poisson di 75 elementi
campTestChiQuadr

n <- length (campTestChiQuadr)

n

#Frequenze assolute campione chiQuadro
freq <- table(campTestChiQuadr)  
freq


#stima puntuale lambda
stimalambda <- mean(campTestChiQuadr)
stimalambda


#categorie corrispondenti agli intervalli 
#I1 = [0, 2]
#I2 = (2, 5]
#I3 = (5, 8]
#I4 = (8, +inf)

S

# controlli di applicabilità chi-quad-test per poisson
sum(p)
min (n*p[1], n*p[2],n*p[3],n*p[4])

#numero di elementi del campione appartententi all'intervallo
r<-4
nint <- numeric (r)
nint [1] <-length (which((campTestChiQuadr >= 0) & (campTestChiQuadr <= 2)))
nint [2] <-length (which((campTestChiQuadr > 2) & (campTestChiQuadr <= 5)))
nint [3] <-length (which((campTestChiQuadr > 5) & (campTestChiQuadr <= 8)))
nint [4] <-length (which((campTestChiQuadr > 8)))
nint

sum(nint)

#stima chiquadro

chi2 <- sum ((( nint -n*p)/sqrt (n*p)) ^2)
chi2

#intervalli regione di accettazione
r <- 4
k <- 1

alpha <- 0.001
qchisq ( alpha /2,df= r -k -1)
qchisq (1- alpha /2,df= r -k -1)

