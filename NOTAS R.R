#PoPROGRESION ARITMETICA#

seq(5,60,by=5)  #progresion aritmetica en R, Inicia en 5, termina en 60 y con saltos de 5
seq(5,60,by=3.5) #progresion aritmetica en R, Inicia en 5, termina en 60 y con saltos de 3.5

seq(100,5,by=-5) #Progresion aritmetica en reversa tambien se puede aplicar


seq(4,60,length.out=7)
seq(2,length.out = 10, by=4) #Secuencia de elmentos, inicia en 2,con 10 items, saltos de 4

1:10  # Secuencia de numeros que inica en a y termina en b
#[1]  1  2  3  4  5  6  7  8  9 10
22:14 # Secuencia de numeros que inica en a y termina en b
#22 21 20 19 18 17 16 15 14
-2:5 #Secuencia que inicia en negativos
#[1] -2 -1  0  1  2  3  4  5
-(2:5) #Secuencia que coloca negativos a los valores del -2 ,-5
#[1] -2 -3 -4 -5


#EJERCICIO 1#
1:20
seq(2,80,by=2)
seq(17,98,length.out = 4)

# la funcion c , se empla para concatenar todo lo que este dentro dle parentesis 
x=c(rep(pi,5),5:10,-7) #Repite pi x5, crea vector del 5 al 10, y valor-7 
x

c(0,10,x) #Añade mas valores y concatenarlos con un vector (x)
fix(x)    #Añadir mas valores por medio de un editor al vector (x)


#FUNCIONES Y ORDEN DE VECTORES#

x=1:10
x+pi #Sumamos pi al vector x
x+x #Sumamos dos vectores
1:5*1:5 #Multiplixamos dos vectores
#[1]  1  4  9 16 25

sqrt(x) #Raiz cuadrada de cada elemento del vector
# [1] 1.000000 1.414214 1.732051 2.000000 2.236068 2.449490 2.645751 2.828427 3.000000 3.162278
2^x #2 elevado a cada elemnto del vector
# [1]    2    4    8   16   32   64  128  256  512 1024

#La funcion sapplay tiene la propiedad de poder ejecutar funciones sobre vectores
sapply(x, FUN=function(item){sqrt(item)})
# [1] 1.000000 1.414214 1.732051 2.000000 2.236068 2.449490 2.645751 2.828427 3.000000 3.162278

sapply(x,FUN=function(item){item*2})
#[1]  2  4  6  8 10 12 14 16 18 20

#coeficiente de determinacion  -Regresion lineal


n=1:100 #Definimos un vector
x=2*3^(n/2)-20 # Calculamos un vetor con una sucesion de calculos
x  #Se muestra la susecion


y=n^2 #multiplicamos el vector al cuadrado por cada elemnto 
y #Se muestra la susecion


z=1:10
max(z)
min(z)
sum(z)
mean(z)
cumsum(z)
#[1]  1  3  6 10 15 21 28 36 45 55
diff(z)
#[1] 1 1 1 1 1 1 1 1 1
cumprod(z)
#[1]       1       2       6      24     120     720    5040   40320  362880 3628800
cuadrado=function(x){x^2}
v=c(1,2,3,4,5)
sapply(v,FUN=cuadrado)

mean(v)  #promedio
sort(v)  #Ordena en orden acendente
rev(v)   #Hace un reves del vecor


#EJERCICIO 2#

vec=c("A","B","C","E","D","G","F","H")
vec2=sort(vec)
rev(vec2)
sort(vec,decreasing = TRUE)  #Ordena el vector de forma decreciente 

#Subvectores

v=c(10,12,21,22,33,44,55,66)
v[1]
v[2]
v[1:4] #Regresa los primeros 4 items  [1] 10 12 21 22

v[-3] #Remueve el item numero 3
v[v > 40 ] #items que son mkayores a 40
v[ v != 55 & v > 20]  #diferente de 55 y mayor a 20  

a=seq(3,50,by=3)  #Creamos un vector con una secuencia de datos
a
# [1]  3  6  9 12 15 18 21 24 27 30 33 36 39 42 45 48
a[length(a)]  # Cual es el ultimo item del vector
# [1] 48
a[length(a)-1]  # Cual es el penultimo valor del vector
# [1] 45
a[-3] # Remueve el tercer elemento del vector
# [1] 6  9 12 15 18 21 24 27 30 33 36 39 42 45 48
a [1:5] #Los primeros 5 elemntos del vector
# [1]  3  6  9 12 15


a[seq(2,length(a),by=2)]  #optenemos los pares
# [1]  6 12 18 24 30 36 42 48
a[seq(1,length(a),by=2)]  #optenemos los impares
# [1]  3  9 15 21 27 33 39 45
a[-seq(1,length(a),2)]  #Removemos losimpares y se conservan los pares
# [1]  6 12 18 24 30 36 42 48
a[(length(a)-4):length(a)] #Muestra desde la prosiciones length-4 - length
a[a>40]  #Muestra valores mayores a 40
a[a>20 &a <30]  #Muestra Valores entre 20 y 30
a[a<10 | a>40]  #Muestra los valores que son manores a 10 y mayores a 40
#[1]  3  6  9 42 45 48

a[a%%2==0] #Operacion en un vector que muestra los pares
a[a%%2==1] #Operacion en un vector que muestra los impares

which.max(a) #Retorna la prosicione del valor mas grande, NO EL VALOR
which.min(a) #Retorna la prosicione del valor mas pequeño, NO EL VALOR
which(a>40)  #Regresa las posicione de los valores mayores a 40
# [1] 14 15 16

#Los elementos nulos no aparecen en el vector, no se agregan como elemento
b=NULL
c=c(a,b,100)
c
# [1]   3   6   9  12  15  18  21  24  27  30  33  36  39  42  45  48 100

#Comparando dos operaciones 

2^pi > pi^2  #Regresa el valor de FALSE, por que no cumplela condicion
12345678%%9==0  #Es multiplo de 9 , regresa en TRUE
length(1:100) >40  #El resultado es TRUE

x=1:10
x[3]=200  #Asigno el valor 200 en la posicion 3
#1]   1   2 200   4   5   6   7   8   9  10
x[11]   #Vaor no disponible por que no el vector solo es de longitud 10 
#[1] NA
x[2:5]=x[2:5]+10  #suma 10 unidades a los elementos de la posicion 2:5
x
#[1]   1  12 210  14  15   6   7   8   9  10
x[(length(x)-2):10]=100 #A los ultimos 3 item del vector les asigna 100
x
# [1]   1  12 210  14  15   6   7 100 100 100
x[length(x)+5]=200  #El vector de 10 item, pero dado que se estan consultando 15,el resto coloca como NA 
x
#1]   1  12 210  14  15   6   7 100 100 100  NA  NA  NA  NA 200

#Si el vector tiene NA= Valor no disponible,entoces no se pueden aplicar las operaciones
prod(x)
sum(x)
#NA  -- Es el valor que arroja

#Para resolver el uso de operaciones en vectores con NA, esta la opcion (na.rm=TRUE)

sum(x,na.rm = TRUE)   # se efectua la suma 
#[1] 765  
prod(x,na.rm=TRUE)   # Se efectua el produto

is.na(x)   #Regresa los indices cuya entredas tiene valores NA

which(is.na(x))  #posiciones donde se encuentran valores Na
#1] 11 12 13 14  
x[is.na(x)]  #Regresa os valores donde se encuentran los NA


n=x;  #Copiamos el vector
n
n[is.na(n)]= mean(n,na.rm = TRUE)  #Asignamos el promedio  atodos los que son NA
n   
# [1]   1.00000  12.00000 210.00000  14.00000  15.00000   6.00000   7.00000 100.00000 100.00000
#[10] 100.00000  69.54545  69.54545  69.54545  69.54545 200.00000


cumsum(x,na.rm=TRUE)  #No se efetua la operacion
cumsum(x[!is.na(x)])  #De esta forma se trabaja con la suma acumulada son NA

#La funcion na.omit()  elimina los valores NA de cada vector

na.omit(x)  # Elimina las posiciones  11 12 13 14
attr(x,"na.action")
# [1] 11 12 13 14 -- Indica que indices elimino
# attr(,"class")
# [1] "omit   -- Indica que los Omite

sum(na.omit(x))   #Permite remover y trabajar el vectr sin considerar los NA
x
x_clean=na.omit(x)  #limpiamos el vector sin NA
x_clean     
attr(x_clean,"na.action")=NULL  #De esta forma se remueven atributo
x_clean    #desaparecieron los valores nulos
#[1]   1  12 210  14  15   6   7 100 100 100 200   


#FACTORES#


nombres=c("juan","antonio","ricardo","maria","juan","maria","ana")
nombres

#Funcion factor para convertirel vector, factor(vector_name) ,se emplea para clasificacion#

#tiene un atributo= levels() , desaparecen las comilla 
#Cada elemnto del factor es uno de los niveles. "Lista de etiquetas"
nombres.factor=factor(nombres)
nombres.factor



#Como definir un facator a partir del vector, pero  con la funcion factor(vec) , 
#permite agregar mas niveles si se requieren para mas datos#genero=c("M","H","M","H","M","H","M","H","H","H")
genero.factor=factor(genero)
genero.factor
## [1] M H M H M H M H H H --- Datos 
## Levels: H M    --- Niveles asociados a los datos

#Otra fun para definir un facator a partir del vector, pero permite agregar mas niveles#
genero.fact2=as.factor(genero)
genero.fact2

#SINTAXIS:  FACTOR(<vector>, levels= <lista ( items ... ),<labels=c(items)>)#
genero.fact3=factor(genero,levels = c("H","M","B"))
genero.fact3   # Se definieron 3 niveles

#aportamos etiquetas para cada generos definidos y agregamos un nivel mas datos
genero.fact4=factor(genero,levels=c("H","M","B"),labels=c("HOMBRE","MUJER","BISEX"))
genero.fact4


levels(genero)  #Es valor null , por que no es factor
levels(genero.fact4)  #funcion que indica cada nivel con el que cuenta el factor
#[1] "HOMBRE" "MUJER"  "BISEX" 


levels(genero.fact4)=c("FEMENINO","MASCULINO","HIBRIDO")
genero.fact4


#Ejemplo factor de notas#

notas=c(1,2,3,4,1,2,3,4,4,4,3)
notas.fac1=factor(notas,labels =c("suspendido","pasante","suficiemte","Confiable"))
notas.fac1
#cambiamos el valor delos niveles separados para agrupar niveles definidos diferentes#
levels(notas.fac1)=c("suspendido","pasante","confiable","confiable")
notas.fac1

#Factor Ordenado. donde los niveles siguen un orden y heredan el orden del factor

ordered(notas,labels=c("suspendido","pasante","suficiemte","Confiable"))
# [1] suspendido pasante    suficiemte Confiable  suspendido pasante    suficiemte Confiable 
# [9] Confiable  Confiable  suficiemte
# Levels: suspendido < pasante < suficiemte < Confiable


##LISTA##

##LISTAS PARA ALMACENAR DIFERENTES TIPOS DE DATOS O DATOS FORMADOS POR DIFERENTES CLASES ##

#Definimos unvector para el ejemplo
x= c(1.5,1.4,1.6,2,4,5)
#[1] 1.5 1.4 1.6 2.0 4.0 5.0
#Definimos una lista con diferentes operaciones sobre el vector d edatos
L=list(nombre="temperaturas",datos=x,media=mean(x),sumas=cumsum(x))

# $nombre
# [1] "temperaturas"
# $datos
# [1] 1.5 1.4 1.6 2.0 4.0 5.0
# $media
# [1] 2.583333
# $sumas
# [1]  1.5  2.9  4.5  6.5 10.5 15.5

L$sumas   #Si queremos acceder a un elemento dela lista  lista_nombre<$>.titulo #
#[1]  1.5  2.9  4.5  6.5 10.5 15.5
L[[3]]    #Si queremos acceder a un elemento dela lista lista_nombre[[item]]  #
#[1]  1.5  2.9  4.5  6.5 10.5 15.5


names(L) #funcuion que permite conocer los componentes de la lista
#[1] "nombre" "datos"  "media"  "sumas" 
str(L)  # Funcion str(lista_nombre)  para saber la esrtuctura de como esta definida la lista
# List of 4
# $ nombre: chr "temperaturas"
# $ datos : num [1:6] 1.5 1.4 1.6 2 4 5
# $ media : num 2.58
# $ sumas : num [1:6] 1.5 2.9 4.5 6.5 10.5 15.5


 #funcion lineal ls()  guarda muchos componentes de sus algoritmos en forma de lista
summary(lm(c(1,2,3,4)~c(1,2,3,6)))


#MATRICES#
#Un conjunto de datos logicos con filas y columnas  matrix(<vector>, nrow=<filas>, byrow=<fil o col>)

m=matrix(1:12,nrow = 4 )  #Creamos una matriz de 4 filas 
#       [,1] [,2] [,3]
#[1,]    1    5    9
#[2,]    2    6   10
#[3,]    3    7   11
#[4,]    4    8   12

m=matrix(1:12,nrow = 3 ) #Creamos una matriz de 3 filas
m
#      [,1] [,2] [,3] [,4]
#[1,]    1    4    7   10
#[2,]    2    5    8   11
#[3,]    3    6    9   12

m=matrix(1:12,nrow = 5 ) #Creamos una matriz, con un ERROR pero rellena los item con valores 
m
matrix(1,nrow = 4,ncol =5)  #crea una matriz de 4 Filas x 5 Columnas
#      [,1] [,2] [,3] [,4] [,5]
#[1,]    1    1    1    1    1
#[2,]    1    1    1    1    1
#[3,]    1    1    1    1    1
#[4,]    1    1    1    1    1


#EJERCICIO MATRICES#
vm=c(1:12)
vm
vm2= matrix(vm,nrow = 3,ncol=4)
vm2

#Funciones para trabajar con matrices

rbind(vm2,c(1:4),c(-1:-4))  #Agregar filas y columnas a una matriz ya generada

cbind(c(1:4),c(-1:-4))   #Crea una matiz con la funcion cbine, de 1 columas
#      [,1] [,2]
#[1,]    1   -1
#[2,]    2   -2
#[3,]    3   -3
#[4,]    4   -4


diag(c(1,2,3,4))  #Genera una matriz escalar con los valores 1:4 o tambien puede regresar la diagonal

diag(nrow =5,  ncol= 3)


#Como recorremos una mtriz, se hace por medio de fila y columna matriz [fil,col]

m[3,4]  #Regresa el valor en la posicion fila,columna
m[3,]   #Regresa toda la fila indicada
m[,4]   #Regresa toda la columna indicada



A = matrix(c(1,2,3,4,5,6,7,8,9), ncol = 3)
#       [,1] [,2] [,3]
# [1,]    1    4    7
# [2,]    2    5    8
# [3,]    3    6    9
dim(A)  #Dimencion de una matriz
# 3 3
diag(A)  #Diagonal de una matriz
# [1] 1 5 9

t(A)  #Traspuesta de una matriz
A%*%t(A)  #Multiplicamos 2 matrices iguales en filas*Columas   



#EJERCICO MATRICES#
#Defininos el vector con los datos
v1=c(2,0,2,1,2,3,0,1,3) 
v2=c(3,2,1,1,0,0,1,1,1) 
#CReamos las matrices con un numeor de filas y columnas 
M_A=matrix(v1,nrow=3, ncol=3)
M_B=matrix(v2,nrow=3, ncol=3)
M_A 
M_B

M_A%*%M_B #Multiplicamos las matrices

#      [,1] [,2] [,3]
#[1,]    8    2    3
#[2,]    5    0    3
#[3,]   15    2    8

# 
ME= rbind(c(1,2,3),c(1,1,3),c(0,4,3))
ME
qr(ME)  #$rank: para calcular el rango de la matriz
solve(ME)   #para calcular la inversa de una matriz invertible o Sistema de ecuaciones lineales

eigen(ME)  #Para calcular los valores propios de un matriz
#       $vectors
#         [,1]       [,2]       [,3]
#[1,] 0.5785696 -0.2140681  0.9059779
#[2,] 0.4967530 -0.7242389  0.2339182
#[3,] 0.6469108  0.6554791 -0.352826
