2*(3+5/2)

2*((3+5)/2)

2/3+5

2%/%3+5

2%%3
#Potencia y posteriore multiplixa
2^3*5
#Potencia negativa
2^-4
#Potencia negativa
2^(-4)
#Cuantas semanas hay en 725 dias sin redondeo
725/7
#Cuantas semanas hay en 725 dias sin redondeo
725%/%7
#Cuanto dias sobran del la semana
725%%7
# D = d * q + r
# r = D - d * q
# q = D %/% d
# x = D %% d 
725 - 103*7
#Valor de pi 
pi

2*pi

3^pi
#Valor de pi al cuadrado
pi^2
#Simbolo de infinito en R es INF o - Infinito -INF
Inf

-Inf
#Valor desconocido (no disponible)
NA
#Valor no numerico
NaN

5/0

0/0
#En R hay una serie de limitaciones para numeros muy grandes o muy pequeños
#y para eso utiliza Notacion cientifica
2^50# = 1.1259e+15 = 1125900000000000 

2 ^(-15) # 3.051758e-05 = 0.00003051758
#Ventor con numeros en **Notacion cientifica**
c(2^30, 2^(-15), 1, 2, 3/2)
#Funcion de raiz cuadeada
sqrt(25)
#Funcion de exponencial 
exp(1)
#Funcion logaritmo de pi
log(pi)

log(32, 2)

log(32, base = 2)
log(base=2, 32)

abs(-pi)
#Funcion para calcular el factorial de un numero
factorial(5)

factorial(4)

factorial(0)
#Funcion de una matriz de argumentos seleccionar un numero especifico 
#de elementos, para indicar de cuantas maneras se pueden combinar
choose(5, 3)
#Este es incorrecto no cumple la condicion
choose(3,5)

#Funciones trigonometricas

log(4^6, 4)

6^log(4,6)

choose(5,2)

sin(60*pi/180)

cos(60*pi/180)

sinpi(1/2) # = sin (pi/2)

tan(pi) # -1.224647e-16 ~ 0

tan(pi/2) # 1.633124e+16 ~ Inf
tanpi(1/2)

asin(0.8660254) #arc sin en radianes

asin(0.8660254) * 180 /pi #arc sin en grados

asin(5) #arc sin x in [-1,1]

acos(-8)

#Numeros coma flotantes con decimales

#Raiz cuadrada de 2 con la funcion print() permite mas 10 digitos
print(sqrt(2),10)
#Raiz cuadrada de 2 con la funcion round() premite los primero 3 deciamles
round(sqrt(2), 3)
#Raiz cuadrada de 2 con la funcion flor() redondea hacia abajo
floor(sqrt(2))
#Raiz cuadrada de 2 con la funcion flor() redondea hacia arriba
ceiling(sqrt(2))
#Raiz cuadrada de 2 con la funcion trunc() redondea al entero mas cercano 
trunc(sqrt(2))
#Raiz cuadrada de 2 elevado 2-2 , es casi 0
sqrt(2)^2-2
print(sqrt(2)^2-2,20)

round(sqrt(2), 4)^2

2^50
print(2^50, 15)
print(2^50, 2)
print(pi,20)
#Tener cuidado con 16 digitos por que R no tiene tanta precicion 
#3.141592653589793115998 
#3.141592653589793238462


round(1.15,1)
round(1.26,1) # El valor es 1.3
round(1.35,1) # El valor es 1.3

round(sqrt(2),0) # El valor es 1
round(sqrt(2))   # El valor es 1
#Paso por valor de forma explicito , puede omitirse el primer parametro y no 
#colocarlo de forma explicitoy lo toma como el primer parametro de la funcion
round(digits = 5, sqrt(2))
round(5, sqrt(2))

floor(-3.45)   #El valor es -4 Entero hacia abajo
ceiling(-3.45) #El valor es -3 Entero mas hacia arriba
trunc(-3.45)   #El valor es -3 Truncado a entero

# Variable y funciones 
# Una funcion se compone de Variables, parametros y argumentos  

x = (pi^2)/2 #Como declaramos una variable 
x   # Imprimir la definicion de la variable 

y <- cos(pi/4) #Otra forma de Como declaramos una variable 
y  #Imprimir la definicion de la variable 

sin(pi/4) + cos(pi/4) -> z  #Otra forma de Como declaramos una variable 
z #Imprimir la definicion de la variable 

edad <- 30

nombre = "Juan Gabriel"  #Como declarar una variable de tipo cadena
#R es sensitivo a mayusculas y minusculas en declaracion de variables
#algo a tomar en cuenta es que en R el nombre de las variables pueden empezar 
#por letra o "." pero no por numero o caracter especial
HOLA = 1 
hola = 5

pi.4 = 4*pi
pi.4

x = 2
x = x^2  #Redefinir el valor de la variable como una funcion

x = sqrt(x)  #Redefinir el valor de la variable como una funcion
y = 10;
y = y+2;
y =(y/2)

n = (1+2) 
n = n *2
n = n^2-n*4

#Como definir funciones en lenguaje R
#Funcion que regresa el doble de un numero
variable=2
doble=function(x){x*2}
doble(variable)
doble(4)
#Funcion que regresa el cuadrado de un numero
cuadrado= function(y){y^2}
cuadrado(5)


## Función f(x) = x^3 - (3^x)* sen(x)
f = function(x) {
  x^3 - (3^x) * sin(x) #X es el argumento
}

f(4) # 4^3 - 3^4 * sin(4)
f(5)
f(pi/2)
#Otra forma de definir una funcion
suma1 <- function(t){
  t + 1
}
suma1(6)
suma1(-5)
# Una funcion que recibe dos parametros
product <- function(x, y){
  x*y
}
product(5,7)

g <- function(x,y,z) {
  exp(x^2 + y^2) * sin(z)
}
g(1, 2, 3)
g(1, -1, pi)


datos <- function(nombre,edad){
  x<-c(nombre,edad)  
  print(x)
}
datos(2,2)

#utilizando una funcion y ejecutarla dentro de otra, tambien regresa el valor
suma5 <- function(numero){
  numero = suma1(numero);
  numero = suma1(numero);
  numero = suma1(numero);
  numero = suma1(numero);
  suma1(numero)
}
suma5(3)
suma5(2)

#Lista las variables y funciones que se crearon en la sesion
ls()
#Remueve una variable y funciones que se crearon en la sesion
rm(product)
rm(HOLA)
rm(datos)
ls()

rm(list = ls()) #Remueve todos los elementos de la lista(todos los elementos)  


#Utilizando NUMEROS COMPLEJOS 

class(3+2i) # Funcion clase() te regresa el tipo de dato int/chat/complejo

(3+2i)*5

(3+2i)*(-1+3i)

(3+2i)/(-1+3i)

#Esto es un error, los complejos que tiene un numuero entero se pueden declara
#de manera binomial omitiendo el * del producto:
#2+7*i

#Un ejemplo de esto es:  Error: unexpected symbol in "pi + sqrt(2)i"
#pi + sqrt(2)i
complex(real = pi, imaginary = sqrt(2)) -> z1
z1

#Otro ejemplo de operacion con numero complejo es Raiz de -5 
#Warning message: In sqrt(-5) : Se han producido NaNs
sqrt(-5)
#Se delcara como complejo
sqrt(as.complex(-5))

#La raíz cuadrada devuelve, de las dos soluciones la de
#Re(z)>0, para obtener la otra,  hay que multiplicar por -1
sqrt(3+2i) # z^2 = 3+2i
exp(3+2i)
sin(3+2i)
cos(3+2i)

#Módulo = sqrt(Re(z)^2 + Im(z)^2)
Mod(z1)


#Argumento = arctan(Im(z)/Re(z))
# = arccos(Re(z)/Mod(z))
# = arcsin(Im(z)/Mod(z))
# Siempre van a estare  entre  (-pi, pi] (pi sin incluir y pi incluido)
Arg(-1+0i)
Arg(-1-2i)
#Conjugado = Re(z)- Im(z)i
Conj(z1)
#Parte Real y Parte Imaginaria de la variable Z1 que tiene un numero complejo
Re(z1)
Im(z1)

### z = Mod(z) * (cos(Arg(z))+sin(Arg(z))i)
complex(modulus = 2, argument = pi/2) -> z2
z2
#De la variable Z2 por medio de las funciones se extrae la parte modular y argumeto
Mod(z2)
Arg(z2)
pi/2