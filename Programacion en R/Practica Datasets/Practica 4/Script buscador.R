#Importar archivo
females <- read_csv("~/Documents/CUNEF/Programacion en R/RSTUDIO/Proyectos/Practica Datasets/Practica 4/female_names.csv")

# Definir un res que sea el año y las veces que se repite ISABEL
contador=0
res<-NULL
for (i in 1:length(females$Year)) {
  if (females$Name[i] =="ISABEL") {res <-c (res, females$Year[i], females$Frequency[i])}
}

#Igual que el anterior pero construyendo un DataFrame con los resultados de la frecuencia del nombre por año.
res.Year<-NULL
res.Frequency<-NULL
for (i in 1:length(females$Year)) {
  if (females$Name[i] =="ISABEL") 
  {
    res.Year <-c (res.Year, females$Year[i])
    res.Frequency<-c(res.Frequency, females$Frequency[i])
  }
}  

res<-data.frame(res.Year, res.Frequency)

##idem pero utilizando que la base de datos está ordenada por nombres y por años y utilizando también que el número de años está limitado


ini<-min(females$Year)
fin<-max(females$Year)
rango.anual<-fin-ini+1
i<-1
while (females$Name[i]!="INGRID") {i<-i+1}

#Ahora i apunta al primer INGRID
j<-1
res.Year<-NULL
res.Frequency<-NULL
while  (females$Name[i] =="INGRID")
  {res.Year <-c(res.Year, females$Year[i])
  res.Frequency<-c(res.Frequency, females$Frequency[i])
  i<-i+1
  }

res<-data.frame(res.Year, res.Frequency)








