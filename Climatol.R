# CLIMATOL
install.packages("climatol")
install.packages("maps")
install.packages("mapdata")
install.packages("ncdf4")
install.packages("fields")
install.packages("gstat")
library(climatol)
library(raster)
library(maps)
library(ncdf4)
library(fields)
library(sp)
library(gstat)

# NIVEL I

## Ejercicio 1. Generar un diagrama de Walter y Lieth con la data de datcli, este debe llevar de título “Estación Campo de Marte”, a una altitud de 80 msnm durante el año 2017, con los meses simbolizados por números. Las temperaturas deberán visualizarse de color verde; las precipitaciones, en naranja; los meses de congelación segura, en azul y los de congelación probable, en celeste. No trazar una línea suplementaria de precipitación.

data(datcli)
datcli

diagwl(datcli, est = "Estación Campo de Marte", alt = 80, per = "2017",  pcol = "orange", tcol = "green", pfcol = "sky blue", sfcol = "blue")

## Ejercicio 2. Recrea minuciosamente el siguiente diagrama de la rosa de los vientos (pista: col=rainbow(8)).

data(windfr)
windfr

rosavent(windfr, 6, 2, 1, ang = 3*pi/8, col = rainbow(8), key = T, main = "Nivel I Ejercicio 2", uni = "km/s")

# NIVEL II

## Ejercicio 3. Convertir la data diaria de tmax en una data de medias mensuales. Posteriormente, homogeneizar dichos datos mensuales con una normalización por estandarización y gráficos de medias anuales y correcciones aplicadas en el análisis exploratorio de datos (utilizar dos decimales).

setwd("C:/Users/abby_/OneDrive/Desktop/CICLO IV/PROGRAMACIÓN/CLIMATOL")
data(tmax)

write.table(dat, "Tmax_2001-2003.dat", row.names = F, col.names = F)
write.table(est.c, "Tmax_2001-2003.est", row.names = F, col.names = F)

dd2m('Tmax', 2001, 2003, ndec = 2, valm = 2)

homogen('Tmax', 2001, 2003, suf = 'm', nm = 12, std = 3, ndec = 2, gp = 3, expl = T)

## Ejercicio 4. Recortar la data mensual de Ptest desde 1965 hasta 2005. Homogeneizar dicha data mediante clústers o áreas rectangulares, con un ancho de superposición de 0, mediante una estandarización y con gráficos de totales anuales en el análisis exploratorio de datos. Mostrar las medias de las series homogeneizadas en un archivo Excel que, además, mencione los totales anuales y los datos de la latitud, longitud y nombre de cada estación (utilizar dos decimales).

data(Ptest)

write.table(dat, "Ptest_1951-2010.dat", row.names = F, col.names = F)
write.table(est.c, "Ptest_1951-2010.est", row.names = F, col.names = F)

datsubset('Ptest', 1951, 2010, 1965, 2005)

homogsplit('Ptest', 1965, 2005, xc = 2, yc = 39, 0, 0, nm = 12, std = 3, ndec = 2, gp = 4, expl = T)

dahstat('Ptest', 1965, 2005, stat = "me", ndc = 2, vala = 1, estcol = c(1,2,5))

## 5. Con la data homogenizada del ejercicio anterior (si no se ha realizado, iniciar homogeneizando tal cual se menciona en el ejercicio 4) plotear un gráfico de calor con las medias de precipitación mensual de acuerdo con la latitud y longitud, este debe abarcar desde el punto 2.1°E 39.1°N hasta el punto 3.5°E 40°N, con una separación de 0.001 entre líneas. Además, debe tener un título principal y etiquetado en ambos ejes. Adicionalmente, plotear un mapa de la zona del mundo en cuestión encima de dicho gráfico (use col=rainbow(100)).

tm <- expand.grid(x = seq(2.1,3.5,0.05), y = seq(39.1,40,0.001))
coordinates(tm) <- ~x+y
dahgrid('Ptest', 1965, 2005, grid = tm)
grid <- nc_open('C:/Users/abby_/OneDrive/Desktop/CICLO IV/PROGRAMACIÓN/CLIMATOL/Ptest_1965-2005_m.nc')
print(grid)
var <- ncvar_get(grid,'Ptest.m') 
lats <- ncvar_get(grid,'lat')
lats <- rev(lats)
longs <- ncvar_get(grid,'lon')
image.plot(longs, lats, var[,length(lats):1], main = paste("Media de la precipitación diaria"), xlab = 'Longitud', ylab = 'Latitud', col = rainbow(100))
map("world", add = T, fill = T, col = "gray")



