opBasic = function(a,b){
  print("Suma")
  print(a+b)
  print("Resta")
  print(paste(sprintf("%i - %i = ",a,b),a-b))
  print(paste(sprintf("%i - %i = ",b,a),b-a))
  print("Producto")
  print(a*b)
  print("Cociente de la división entera")
  print(paste(sprintf("%i : %i = ",a,b),a%/%b))
  print(paste("con resto ",a%%b))
  print("Cociente de la división entera")
  print(paste(sprintf("%i : %i = ",b,a),b%/%a))
  print(paste("con resto ",b%%a))
}


opBasicas = function( a, b) {
  print("--")
  print(paste(sprintf("Suma %i + %i =",a,b),a+b))
  print("--")
  print(paste(sprintf("resta %i - %i =",a,b),a-b))
  print(paste(sprintf("resta %i - %i =",b,a),b-a))
  print("---")
  print(paste(sprintf("producto %i * %i =",b,a),a*b))
  print("---")
  print(paste(sprintf("Divicion %i / %i =",a,b),a/b))
  print(paste(sprintf("Divicion Resto  %i / %i =",a,b),a%/%b))
  print(paste(sprintf("Residuo  %i / %i =",a,b),a%%b))
}
