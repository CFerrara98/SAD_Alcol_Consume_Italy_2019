par ( mfrow =c(1 ,2) ) 
curve (dexp(x,rate = 5.32) ,from =0, to=10, xlab="x", ylab="f(x)",main="densità di probabilità esponenziale lambda = 5.32")
curve (pexp(x,rate = 5.32) ,from =-2, to =10, xlab="x",ylab= expression (P(X<=x)),main="distribuzione esponenziale lambda = 5.32")