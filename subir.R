# pregunta parte 1 - 1
variable <- function(H){if(H == 1000){
  return(x=81.4)}else if(1000 < H & H <= 3000){
  op1 <- 81.4 - (trunc((H-500)/500)*2)
  return(op1) } else if (3000 < H & H <= 4000){
  op2 <- 81.4 - (trunc((H-500)/500)/2)
  return(op2)}else if (H > 4000){
  op3 <- 81.4 - (trunc((4000-500)/500)/2)
  return(op3) } else{
  print("valores por encima de 1000")}

# pregunta parte 1 - 2
install.packages("tidyverse")
library(tidyverse)
a1=c(3,2,-2)
a2=c(2,-1,3)
a3=c(1,4,2)
cbind(a1,a2,a3)
B=cbind(a1,a2,a3)
b1=c(0,9,-4)
cbind(b1)
N=cbind(b1)
solve(B)
solve(B)%*%N

#a= 0.7258065
#b=-1.8064516
#c= 1.4354839

#pregunta parte 2 - a
setwd ("E:/JAVIER/9 CICLO/PROGRAMACION II/PARCIAL")
data1 <- read.csv("mods_clima_uh.csv") %>% 
  filter(bh_pc == "Cuenca Tumbes")
data1

#pregunta parte 2 - b
setwd ("E:/JAVIER/9 CICLO/PROGRAMACION II/PARCIAL")
data <- as_tibble(read.csv("mods_clima_uh.csv"))
N <- data[data$bh_esc=="ACCESS 1.0"|data$bh_esc=="HadGEM2-ES"|data$bh_esc=="MPI-ESM-LR",]
N %>% 
  group_by(bh_month) %>% 
  summarise(bh_pc = (mean(bh_pc))*100/sd(bh_pc))

#pregunta parte 2 - c

#

