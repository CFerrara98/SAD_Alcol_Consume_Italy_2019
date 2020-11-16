stirling2 <-function (n,m){
  s<-0
  if ((m >=1)&(m <=n)){
    for (k in seq (0,m)){
      s<-s+( choose (m,k)*(-1)^k*(m-k)^n/ factorial (m))}
    return (c(s))
  }}

sumstirling2 <- function (n){
  s <-0
  for (k in seq (1,n))
    s <-s+ stirling2 (n,k)
  return (c(s))
}