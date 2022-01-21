# CLIMATOL
install.packages("climatol")
install.packages("maps")
install.packages("mapdata")
library(climatol)
library(maps)
library(mapdata)

# NIVEL I

## Ejercicio 1. Generar un diagrama de Walter y Lieth con la data de datcli, este debe llevar de título “Estación Campo de Marte”, a una altitud de 80 msnm durante el año 2017, con los meses simbolizados por números. Las temperaturas deberán visualizarse de color verde; las precipitaciones, en naranja; los meses de congelación segura, en azul y los de congelación probable, en celeste. No trazar una línea suplementaria de precipitación.

data(datcli)
datcli
diagwl(datcli, est="Estación Campo de Marte", alt=80, per="2017",  pcol="#ff7f00", tcol="#00ff00", pfcol="#87ceeb", sfcol="#0000ff")

## Ejercicio 2. Recrea minuciosamente el siguiente diagrama de la rosa de los vientos (pista: col=rainbow(8)).

data(windfr)
windfr
rosavent(windfr, 6, 2, 1, ang=pi/2.65, col=rainbow(8), key=T, main="Nivel I Ejercicio 2", uni="m/s")# NIVEL II

## Ejercicio 3. Convertir la data diaria de tmax en una data de medias mensuales. Posteriormente, homogeneizar dichos datos mensuales con una normalización por estandarización y gráficos de medias anuales y correcciones aplicadas en el análisis exploratorio de datos (utilizar dos decimales).

setwd("C:/Users/abby_/OneDrive/Desktop/CICLO IV/PROGRAMACIÓN")

data(tmax)
varcli_anyi-anyf.dat
varcli_anyi-anyf.est




dd2m (tmax, anyi, anyf, anyip = anyi, anyfp = anyf, ndec = 1, suf = NA, valm = 2,
      namax=10, na.strings="NA", homog=FALSO, ini=NA)



