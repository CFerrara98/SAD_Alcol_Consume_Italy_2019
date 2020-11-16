#k-means standard sul dataset di consumo alcolico 2019 standardizzato con 3 cluster fissati
k1 <- kmeans(scaling_dataset, 3)


#k-means con 10 ripetizioni per la scelta della partizione iniziale
#sul dataset di consumo alcolico 2019 standardizzato con 3 cluster fissati
k2 <- kmeans(scaling_dataset, 3, nstart = 10)
k2

#k-means standard sul dataset di consumo alcolico 2019 standardizzato con 3 cluster fissati
#tramite il precedente clustering ottenuto con il metodo del centroide
tagliolist <-list(cut3Centroid)
tagliolist
centroidiIniziali <- aggregate(scaling_dataset, tagliolist, mean)[,-1]
centroidiIniziali
km3 <- kmeans (scaling_dataset , centers = centroidiIniziali , iter.max = 10)
km3


#k-means in due cluster
km4 <- kmeans(scalind_dataset, 2)
km4