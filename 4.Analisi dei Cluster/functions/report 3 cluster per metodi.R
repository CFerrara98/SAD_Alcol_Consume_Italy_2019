#cutree metodo del legame singolo con un numero di cluster pari a 3
cut3Single = cutree(hlsSingle, k = 3);
cut3Single

#cutree metodo del legame completo con un numero di cluster pari a 3
cut3Complete = cutree(hlsComplete, k = 3);
cut3Complete

#cutree metodo del legame medio con un numero di cluster pari a 3
cut3Average = cutree(hlsAverage, k = 3);
cut3Average


#cutree metodo del centroide con un numero di cluster pari a 3
cut3Centroid = cutree(hlsCentroid, k = 3);
cut3Centroid

#cutree metodo del median con un numero di cluster pari a 3
cut3Median = cutree(hlsMedian, k = 3);
cut3Median