#metodo del legame singolo
d <- dist(scaling_dataset);
hlsSingle <-hclust (d,method = "single");
str(hlsSingle);

plot(hlsSingle ,hang =-1, xlab=" Metodo gerarchico agglomerativo del legame singolo");


#Il metodo del legame completo
hlsComplete <-hclust (d,method = "complete");
str(hlsComplete);

plot(hlsComplete ,hang =-1, xlab="Metodo gerarchico agglomerativo del legame completo");

#Il metodo del legame medio
hlsAverage <-hclust (d,method = "average");
str(hlsAverage);

plot(hlsAverage ,hang =-1, xlab="Metodo gerarchico agglomerativo del legame medio");

#Il metodo del centroide
hlsCentroid <-hclust (d^2,method = "centroid");
str(hlsCentroid);

plot(hlsCentroid ,hang =-1, xlab="Metodo gerarchico agglomerativo del centroide");

#Il metodo della mediana
hlsMedian <-hclust (d^2,method = "median");
str(hlsMedian);

plot(hlsMedian ,hang =-1, xlab="Metodo gerarchico agglomerativo della mediana");
