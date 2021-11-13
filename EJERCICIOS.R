# EJERCICIOS
# PARTE 1
# 1. Calcula los valores numéricos aproximados de

(0.3*0.15)/(0.3*0.15+0.2*0.8+0.5*0.12) #a
(5^6)*exp(-5)/factorial(6) #b
choose(20,7)*(0.4^7)*(0.6^13) #c

# 2.
sum(1:1000)
sum(2^0:2^10)

# 3.
Datos_01 <- load("C:/Users/abby_/OneDrive/Desktop/ei1012-1516-la-s1-datos.RData")
Datos_01

grupo
nota

length(grupo) #a
Grupo_A <- length(grupo)
which(grupo == "A") #b

# 4.
nota
sum(nota) #a
mean(nota) #b
which(nota > 7.0) #c
sort(nota, decreasing = TRUE) #d 
which.max(nota) #e

#5.
sum(head(nota,10)) #a
length(grupo[grupo == "C"]) #b
length(grupo[nota>4.9]) #c
length(grupo[grupo == "B" & nota > 4.9]) #d 

(length(grupo[grupo == "C" & nota > 4.9]))/(length(grupo[grupo == "C"]))*100 #e

# ¿De qué grupos son la máxima y mínima notas de toda la muestra? #f
max(grupo[nota])
min(grupo[nota])

# Nota media de los alumnos de grupo A y B, juntos, considerando sólo a los que han aprobado # g
mean(nota[(grupo == "A"| grupo == "B") & nota > 4.9])

# 6.
quantile(nota, 0.66)
quantile(nota[grupo == "C"], 0.66)

# 7.
length(nota[grupo])
length(grupo[nota <= 4.9])
length(grupo[nota <= 4.9])/(length(nota[grupo]))*100

length(grupo[nota >= 4.9])/(length(nota[grupo]))*100

# 8. Realiza el gráfico de diagramas de caja de las notas de cada grupo
# Diagrama de caja
boxplot(nota)

# 9. 
conc

# a 
max(conc)

# b
length(grupo[conc > 40])

#c
mean(conc)

# d
head(sort(conc),10)

# e
which(conc[max(conc)])

# PARTE 2
# 1.
x0 <- c(1,2,3,4,5,6,7,8,9,10)
y0 <- c(1,4,6,8,25,36,49,64,81,100)

plot(x = x0, y = y0)

# 2.
data_A <- c(1,2,3,4,2,4,6,8,3,6,9,12)
A <- matrix(data_A, nrow = 4 , ncol = 3)
A

# 3. 
diag(3)

# 4.
matrix(data = 0, nrow = 3, ncol = 3)

# 5.
diag(4)
B <- diag(c(0,2,3,4))
B

#6. 
A <- matrix(data_A, nrow = 4 , ncol = 3)
t(A)

#7. A+B, A-B, 3B, AB
3*B
A - B
A + B 

#8.
P <- matrix(data = c(1,-2,1,2,4,0,3,-2,1), nrow = 3, ncol = 3)
P ^ 6

#9.
X <- matrix(data = c(3,9,3,-1,-2,1,1,1,-2), 3, 3)
Y <- c(-1,-9,-9)
solve(t(X)%*%X)%*%t(X)%*%Y

# 10. 
help(eigen)
help(det)

# 11.
a1=c(1,2,3,4,5,6,7,8,9,10)
a2=c(2,4,6,8,10,12,14,16,18,20)
a3=c(3,6,9,12,15,18,21,24,27,30)
a4=c(4,8,12,16,20,24,28,32,36,40)
a5=c(5,10,15,20,25,30,35,40,45,50)
cbind(a1,a2,a3,a4,a5)
Once_B <- cbind(a1,a2,a3,a4,a5)
Once_B

b1=c(0,1,0,0,1)
b2=c(1,0,1,1,0)
b3=c(0,1,0,0,1)
b4=c(1,0,1,0,1)
b5=c(0,1,0,1,0)
Once_A <- cbind(b1,b2,b3,b4,b5)
Once_A

dim(A)
dim(B)

Once_B%*%Once_A-Once_B%*%t(Once_A)

# 12.
X <- matrix(c(1,1,1,1,1,1,-1,0,1,2),5,2)
X

Y <- matrix(c(0,0,1,1,3),5,1)
Y

(t(X)%*%X)^(-1)%*%t(X)%*%Y

# 13.
data("CO2")
co2

data("sunspot.year")
sunspot.year

# 14.

df <- read.csv("C:/Users/abby_/OneDrive/Desktop/CICLO IV/PROGRAMACIÓN/rainfall.csv",sep = ";" )
df
csv_A <- df$num.altitude.sep.oct.nov.dec.jan.feb.mar.apr.may.name.x_utm.y_utm
data.frame(csv_A)
read.table("C:/Users/abby_/OneDrive/Desktop/CICLO IV/PROGRAMACIÓN/rainfall.csv",sep = ";" )
~