#Cread un vector llamado "Harry" formado por la sucesión de números consecutivos entre el 
#-10 y 27. Pedidle a R que os devuelva el elemento de índice 7. Escribid el resultado.-

Harry = seq(-10,20,by=1)
Harry[7]

#Dad el máximo de la sucesión (100*2^n -7*3^n) con n=0,...,200
n=0:200
suc=(100*2^n -7*3^n)
max(suc)

#Cread la sucesión de números consecutivos entre 0 y 40. A continuación, cread el vector (3*5^n - 1)
#con n=0,...,40. Ponedle como nombre x. Ahora, dad el subvector de los elementos que son
#estrictamente mayores que 3.5

n=0:40
x=(3*5^n-1)
x[x>3.5]


#Cread una función que os devuelva la parte real, la imaginaria, el módulo,
#el argumento y el conjugado de un número, mostrando solo 2 cifras significativas

numero =  function(x){
  print("--")
  print(paste("El numero es:",x))
  print(paste(sprintf( "Parte real:"), round(Re(x),digits= 2)  ))
  print(paste(sprintf( "Parte imaginaria:"), round(Im(x),digits= 2)  ))
  print(paste(sprintf( "Parte Mod:"), round(Mod(x),digits= 2) ))
  #Im(x)
  #Mod(x)
}
r=c(pi/3, pi*2, pi+4)
numero(r) 

#Cread una función que resuelva ecuaciones de segundo grado (de la forma Ax^2+Bx+C=0). 
#No importa, por ahora, que tengáis en cuenta las que no tienen solución

ecuacion_seg = function(X,Y,Z){
  c( (-Y+sqrt(Y^2-4*X*Z)/(2*X)), (-Y-sqrt(Y^2-4*X*Z)/(2*X)) )
}
ecuacion_seg(9,0,4)

#Tomando el vector vec = c(0,9,98,2,6,7,5,19,88,20,16,0), dad 3 opciones diferentes
#para calcular el subvector c(9,19,20,16)
vec=c(0,9,98,2,6,7,5,19,88,20,16,0)
vec
c(vec[2],vec[8],vec[10],vec[11])
vec[vec>8 & vec< 21]
vec[!vec<8 & !vec> 21]


