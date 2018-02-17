# teste puxando a base de dados do excel em Data

library(readxl)

this.dir <- dirname(parent.frame(2)$ofile)
pos = gregexpr('/', this.dir)
ultima_barra = unlist(pos)[length(unlist(pos))]

data.dir = paste(substr(this.dir,1,ultima_barra),"Data",sep="")

setwd(data.dir)

df_fx = read_excel("PX_LAST_REV_PROD.xlsx", skip = 1, 
                   sheet = 1, na = c("NA","VAZIO","#NOME?","#N/A N/A"))
