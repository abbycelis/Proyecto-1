# EJERCICIOS EN MARKDOWN

## PARTE 1

### 1. Calcula los valores num�ricos aproximados de

#### a) 
(0.3*0.15)/(0.3*0.15+0.2*0.8+0.5*0.12) 
#### b) 
(5^6)*exp(-5)/factorial(6)
#### c) 
choose(20,7)*(0.4^7)*(0.6^13)

### 2. Realizar la siguiente suma

#### a) �Cu�ntos elementos tiene?
sum(1:1000)
#### b) �En qu� posiciones del vector est� la letra "A?"
sum(2^0:2^10)

### 3. El vector -grupo- representa el grupo al que pertenece una serie de alumnos

Datos_01 <- load("C:/Users/abby_/OneDrive/Desktop/ei1012-1516-la-s1-datos.RData")
Datos_01

grupo
nota

#### a) �Cu�ntos elementos tiene?
length(grupo) 
Grupo_A <- length(grupo)
#### b) �En qu� posiciones del vector est� la letra "A?"
which(grupo == "A")

### 4. El vector -nota- representa la nota de un examen de los alumnos que est�n en los grupos del vector -grupo-.

nota
#### a) �Cuanto suman todas las notas?
sum(nota)
#### b) �Cual es la media aritm�tica de todas las notas?
mean(nota)
#### c) �En qu� posiciones est�n las notas mayores de 7.0?
which(nota > 7.0)
#### d) Visualiza las notas ordenadas de mayor a menor
sort(nota, decreasing = TRUE)
#### e) �En qu� posici�n est� la nota m�xima?
which.max(nota)

### 5. A partir de los vectores -grupo- y -nota- definidos.

#### a) Suma las notas de los 10 primeros alumnos del vector
sum(head(nota,10))
#### b) �Cu�ntos alumnos hay del grupo C?
length(grupo[grupo == "C"])
#### c) �Cu�ntos alumnos han aprobado?
length(grupo[nota>4.9])
#### d) �Cu�ntos alumnos del grupo B han aprobado?
length(grupo[grupo == "B" & nota > 4.9]) 
#### e) �Qu� porcentaje de alumnos del grupo C han aprobado?
(length(grupo[grupo == "C" & nota > 4.9]))/(length(grupo[grupo == "C"]))*100

#### f) �De qu� grupos son la m�xima y m�nima notas de toda la muestra?
max(grupo[nota])
min(grupo[nota])

#### g) Nota media de los alumnos de grupo A y B, juntos, considerando s�lo a los que han aprobado 
mean(nota[(grupo == "A"| grupo == "B") & nota > 4.9])

### 6. Calcula el percentil 66 de las notas de todos los alumnos, y tambi�n de los alumnos del grupo C.

quantile(nota, 0.66)
quantile(nota[grupo == "C"], 0.66)

### 7. Un alumno tiene una nota de 4.9. �Qu� porcentaje, del total de alumnos, tiene una nota menor o igual que la suya? �Y qu� porcentaje tiene una nota mayor o igual que la suya?

length(nota[grupo])
length(grupo[nota <= 4.9])
length(grupo[nota <= 4.9])/(length(nota[grupo]))*100

length(grupo[nota >= 4.9])/(length(nota[grupo]))*100

### 8. Realiza el gr�fico de diagramas de caja de las notas de cada grupo

#### Diagrama de caja

boxplot(nota)

### 9. Si la variable conc recoge la concentraci�n de plomo (en ppm) en el aire de cierta zona durante un d�a completo

conc

#### a) �Cu�l ha sido la concentraci�n m�xima?
max(conc)

#### b) �En cu�ntos de los muestreos se ha superado la concentraci�n de 40.0 ppm?
length(grupo[conc > 40])

#### c) �Cu�l ha sido la concentraci�n media del d�a?
mean(conc)

#### d) �Cu�les fueron las 10 mediciones m�s bajas del d�a?
head(sort(conc),10)

#### e) Si la primera medida fue a las 00:00. �A qu� hora del d�a se alcanz� la concentraci�n m�xima?
which(conc[max(conc)])

## PARTE 2

### 1. Graficar los puntos (1,1),(2,4),(3,6),(4,8),(5,25),(6,36),(7,49),(8,64),(9,81),(10,100) en un plano utilizando RStudio.

x0 <- c(1,2,3,4,5,6,7,8,9,10)
y0 <- c(1,4,6,8,25,36,49,64,81,100)

plot(x = x0, y = y0)

### 2. Ingresar la matriz A en RStudio A

data_A <- c(1,2,3,4,2,4,6,8,3,6,9,12)
A <- matrix(data_A, nrow = 4 , ncol = 3)
A

### 3. Ingresar la matriz identidad de tama�o 3

diag(3)

### 4. Crea una funci�n que cree una matriz nula ingresando las dimensiones

matrix(data = 0, nrow = 3, ncol = 3)

### 5. Modificar la matriz diag(4), para que se parezca a la matriz B

diag(4)
B <- diag(c(0,2,3,4))
B

### 6. Obtener la matriz transpuesta de A (ejercicio 2) 

A <- matrix(data_A, nrow = 4 , ncol = 3)
t(A)

#7. Realizar las siguientes operaciones

3B

### 8. Crea una funci�n para calcular P^6

P <- matrix(data = c(1,-2,1,2,4,0,3,-2,1), nrow = 3, ncol = 3)
P ^ 6

### 9. Resolver el sistema de ecuaciones

X <- matrix(data = c(3,9,3,-1,-2,1,1,1,-2), 3, 3)
Y <- c(-1,-9,-9)
solve(t(X)%*%X)%*%t(X)%*%Y

### 10. Utilizando la ayuda de R, investigue para qu� sirven las funciones eigen() y det() 

help(eigen)
help(det)

# 11. Considerando las matrices

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

### 12. Considere

X <- matrix(c(1,1,1,1,1,1,-1,0,1,2),5,2)
X

Y <- matrix(c(0,0,1,1,3),5,1)
Y

(t(X)%*%X)^(-1)%*%t(X)%*%Y

# 13. Corre el siguiente c�digo para cargar los vectores year y co2 en memoria

data("CO2")
co2

data("sunspot.year")
sunspot.year

# 14. Lee el archivo rainfall.csv como un data.frame

df <- read.csv("C:/Users/abby_/OneDrive/Desktop/CICLO IV/PROGRAMACI�N/rainfall.csv",sep = ";" )
df
csv_A <- df$num.altitude.sep.oct.nov.dec.jan.feb.mar.apr.may.name.x_utm.y_utm
data.frame(csv_A)
read.table("C:/Users/abby_/OneDrive/Desktop/CICLO IV/PROGRAMACI�N/rainfall.csv",sep = ";" )
~




