#matrice varianze e covarianze
covMatrix <- cov(scaling_dataset);
covMatrix

apply (scaling_dataset ,2, var )

#calcolo matrice di non omogeneità
NOMatrix <- 20 * covMatrix; 
NOMatrix

#calcolo della misura di non omogeneità totale del dataset standardizzato
trHI <-(21 - 1) * sum(apply(scaling_dataset ,2, var ))
trHI

tagliolist <-list(cut3Centroid);

#calcolo della tabella di varianze aggregate per cluster tramite la funzione Aggregate
agvar <- aggregate (scaling_dataset, tagliolist , var)[, -1]
agvar

num <-table (cut3Centroid);
num

#misura non omogeneità primo cluster
trH1 <-(num [[1]] -1) * sum ( agvar [1, ])
trH1 # visualizza la misura di non omogeneità del primo cluster

#misura non omogeneità secondo cluster
trH2 <-(num [[2]] -1) * sum ( agvar [2, ])
trH2 # visualizza la misura di non omogeneità del secondo cluster

#misura di non omogeneità interna ai cluster
trHS <- trH1 + trH2
trHS

#misura di non omogeneità tra i cluster
trHB <- trHI - trHS
trHB


#Misure Relative
trHS / trHI
#Misure Relative
trHB / trHI