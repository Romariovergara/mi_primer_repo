#elaborado por:romario vergara granados
#version de r:R version 4.1.2 (2021-11-01)
#taller desarrollado:a

#vector

numeros_par<-c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,29,30,31,32,33,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100)
numeros_impares <-c(1,3,5,7,9,11,13,15,17,19,21,23,25,27,29,31,33,35,37,39,41,43,45,47,49,51,53,55,57,59,61,63,65,67,69,71,73,75,77,79,81,83,85,87,89,91,93,95,97,99)
numeros= c(numeros_impares+1)


#importar bace de datos


library(readxl)
install.packages("readxl")
file.choose()
ruta_excel <-"C:\\Users\\ROMARIO\\Documents\\R\\mi_primer_repo\\datos\\cultivos.xlsx"
cultivos <- read_excel("datos/cultivos.xlsx")
 

#limpiar

limpiar<-na.omit(cultivos) 
  


#pivotear
library(tidyverse)
pivotear = pivot_longer(data = limpiar,cols = 1:4,names_to = "nombres",values_to = "municipios")


#guardar la bace de datos limpia 


save(limpiar,file = "../mi_primer_repo/datos limpios/limpiar.Rdata" )


#GEIH
pacman::p_load(tidyverse,readxl,haven) 
cabecera_caracteristica_generales <- readRDS(file="~/R/mi_primer_repo/datos GEIH/Cabecera - Caracteristicas generales (Personas).rds")
ocupados <-readRDS(file="~/R/mi_primer_repo/datos GEIH/Cabecera - Ocupados.rds")

#unir_baces 
pacman::p_load(tidyverse,reshape2,readxl)
#verificar el id de la variable 
c("directorio","secuencia_p","orden")


data=full_join(x=`Cabecera - Ocupados`,y=cabecera_caracteristica_generales,by=c("directorio","secuencia_p","orden"))

#grafica 


pacman::p_load(tidyverse,viridis,forcats,gapminder)


               
               