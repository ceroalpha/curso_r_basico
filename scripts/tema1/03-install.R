#Instrucccion parainstalar un paquete , DEP=  significa que tambien instale las dependencias.
install.packages("tidyverse", dep = TRUE)

# Cargar las librerias asociadas al paquete tiyversey (para su uso)
library(tidyverse) 

#Paquete para crear cuadrados magicos
install.packages("magic", dep = TRUE)

library(magic)
#Ejemplo de como pintar un ejemplo de cuadro magico (marriz de 6)
magic(6)

#Instruccion para saber los paquetes que estan instalados en R
installed.packages()

