#funzione di probabilità 
x <- 0 : 10
dP <- dpois(x, 5)
dP

plot(x,dpois (x, lambda = 5) , xlab="x",ylab="P(X=xi)",type ="h"
,main= "Probabilità teorica di trovare Xi positivi all'alcol test con valore medio di 5");

plot(x,ppois (x, lambda =5) ,xlab="x",ylab= expression (P(X<=x)), ylim=c(0 ,1) ,type ="s",
main=" Distribuzione di Poisson con lambda = 5")

z<-c(0 ,0.25 ,0.5 ,0.75 ,1)
qpois(z, lambda = 5)

#RPOIS con 50 prove di poisson
sim1 <- rpois (50, lambda =5)
sim1
table (sim1)
table(sim1)/length(sim1)

 #par e contfonti con 500, 5000, e 50000 prove di poisson con lambda = 5
par ( mfrow =c(2 ,2) )
x <-0:10
#teorica
plot(x,dpois (x, lambda =5) ,xlab="x",ylab=" Probabilita ' ",type ="h",
main=" lambda = 5",xlim=c(0 ,10) ,ylim =c (0 ,0.20))

#500 prove
sim1 <-rpois (500 , lambda =5)
plot( table (sim1)/ length ( sim1),xlab="x",type="h", ylab=" Frequenza   relativa ",xlim =c(0 ,10) ,ylim=c(0 ,0.20) ,
main = "lambda =5, N=500")

#5000 prove
sim2 <- rpois (5000 , lambda = 5)
plot( table (sim2 )/ length ( sim2),xlab="x",type="h", ylab=" Frequenza   relativa ",xlim =c(0 ,10) ,ylim=c(0 ,0.20) ,
main=" lambda =5, N=5000 ")

#50000 prove
sim3 <-rpois (50000 , lambda = 5)
plot( table (sim3 )/ length ( sim3),xlab="x",type="h", ylab=" Frequenza   relativa ",xlim =c(0 ,10) ,ylim=c(0 ,0.20) ,
main=" lambda =5, N=50000 ")