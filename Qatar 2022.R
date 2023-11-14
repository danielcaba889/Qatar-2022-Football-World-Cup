#set.seed(100)

simulaciones <- 5000
n_figus=638
buy <- 3000
price <- 30
try <- NA

for (i in 1:simulaciones){
  
  sim <-floor(  runif(buy,0,n_figus) ) # sim me indica todas las figuritas que me salieron en la simulacion #i. la cant de figus esta dada por la variable buy.
  
 try[i] <-  length(unique(sim))/n_figus # de todas las figus que compre en la simulacion i, calculo que % del total son UNICAS. el % de unicas en la simulacion i es try[i]
  
}


try_mean <- mean(try) # try mean indica cual es el promedio de completitud, habiendo comprado buy (cant. de figus)
try_sd <- sd(try) # try_sd indica cual es el desvio standard de completitud, habiendo comprado buy (cant. de figus)

try_mean+2*try_sd # calculo promedio + 2 desvios. 
try_mean-2*try_sd # calculo promedio - 2 desvios.


try_mean
mean = sprintf("mean: %f", try_mean)
mean_2sd1 = sprintf("mean + 2 sd: %f", try_mean+2*try_sd)
mean_2sd2 = sprintf("mean - 2 sd: %f", try_mean-2*try_sd)



df <- data.frame(
  "Porcentaje completo" = c(mean, mean_2sd1, mean_2sd2)
  )

df
completados = sum(try==1) # este valor 
sprintf ("Cantidad de albumes completados: %f", completados) # este valor me indica en cuantas simulaciones complete el album habiendo comprado "buy" cantidad de figus.  


############################### Consejo #####################################

#ir cambiando los valores de simulaciones y buy, para ver cuantas figus deberia comprar para tener seguridad de completar el album.
#por ejemplo, si compro 3000 figus en cada simulacion (es decir, pongo buy = 3000), estaria completando el 99% del album en promedio. de las 5000 simulaciones, completaria 14
#albums, aproximadamente. -> plantar semilla en (100) en linea 1 y correr todo el programa. set.seed(100) en linea 1
