
############Saber si un número es par
par<-function(n){
  if (n%%2==0)  {
    sol<-"el número es par"}
  else {sol<-"el número es impar"}
  return(sol)
}
par(27)
par(28)



###########Saber si un número es par (2)
par2<-function(n){
  if (n%%2==0) {
    sol<-"el número es par"}
    else {sol<-"el número es impar"}
    return (sol)
}
par2(27)
par2(28)



######### Cálculo del factorial de 8

factorial <- function(n){
  if (n<0) {f<-"el número debe ser positivo o cero"}
  else{
  f<-1
  while (n>0)
  {
    f<-f*n
    n<-n-1
  }}
  return(f)
}
factorial(8)
factorial(231)

#######Construir una agenda de teléfonos

agenda<- function(){
  ln<-"Victoria"
  lt<-"32995844"
  continuar<-"S";
  while (continuar =="S") {
    nombre<- readline(prompt="Dime el nombre: ")
    telefono<-readline(prompt="Dime el teléfono: ")
    ln<-c(ln,nombre)
    lt<-c(lt,telefono)
    continuar <- readline(prompt="¿Continuar(S/N)? ")
  }
  return (data.frame(ln, lt))
}
agenda()
  
#######Añadir a una agenda de teléfonos

add.agenda<- function(agenda.ant){
  ln<-agenda.ant$nombres
  lt<-agenda.ant$telefonos
  continuar<-"S";
  while (continuar =="S") {
    nombre<- readline(prompt="Dime el nombre: ")
    telefono<-readline(prompt="Dime el teléfono: ")
    ln<-c(ln,nombre)
    lt<-c(lt,telefono)
    continuar <- readline(prompt="¿Continuar(S/N)? ")
  }
  return (data.frame(ln, lt))
}
miagenda <add.agenda(miagenda)


##


add.agenda<- function(agenda.ant){
  ln<-agenda.ant$nombres
  lt<-agenda.ant$telefonos
  continuar<-"S";
  while (continuar =="S") {
    nombre<- readline(prompt="Dime el nombre: ")
    telefono<-readline(prompt="Dime el teléfono: ")
    ln<-c(ln,nombre)
    lt<-c(lt,telefono)
    continuar <- readline(prompt="¿Continuar(S/N)? ")
  }
  return (data.frame(ln, lt))
}
miagenda <add.agenda(miagenda)



continuar <- readline(prompt="¿Continuar(S/N)? ")
nombre <- readline(prompt="Dime el nombre: ")
telefono <- readline(prompt="Dime el teléfono: ")







#####

#####Construir una agenda de teléfonos##############
nueva.agenda<-function(){
  ###esta función crea una agenda 
  ###que almacenar· en un dataframe con dos campos: nombres, telefonos
  nombres<-"Victoria"
  telefonos<-"234432234"
  continuar<-"S";
  while (continuar =="S") {
    nombre<-readline(prompt="Dime el nombre: ")
    telefono<-readline(prompt="Dime el teléfono: ")
    nombres<-c(nombres,nombre)
    telefonos<-c(telefonos,telefono)
    continuar <- readline(prompt="¿Continuar(S/N)? ")
  }
  mdf<-data.frame(nombres, telefonos)
  mdf$nombres<-as.character(mdf$nombres)
  mdf$telefonos<-as.character(mdf$telefonos)
  return (mdf)
}
miagenda<-nueva.agenda()


#####Construir una agenda de teléfonos##############
add.agenda<-function(agenda.ant){
  ###esta función añade nombres y teléfonos a una agenda 
  ###que está almacenada en un dataframe con dos campos: nombres, telefonos
  nombres<-agenda.ant$nombres
  telefonos<-agenda.ant$telefonos
  continuar<-"S";
  while (continuar =="S") {
    nombre<-readline(prompt="Dime el nombre: ")
    telefono<-readline(prompt="Dime el teléfono: ")
    nombres<-c(nombres,nombre)
    telefonos<-c(telefonos,telefono)
    continuar <- readline(prompt="¿Continuar(S/N)? ")
  }
  return (data.frame(nombres, telefonos))
}

miagenda2<-add.agenda(miagenda)


#######

m<-22
n<-7
v<-m+2
m<-m+2
while (n>1)
{
  m<-m+2
  v<-c(v,m)
  n<-n-1
}


print(v) 


#######
m<-21
n<-7
v<-m+2
m<-m+2
  if (m%%2!=0){m<-m+1}
while (n>1)
{
  m<-m+2
  v<-c(v,m)
  n<-n-1
}


print(v) 


### Maximo del vector
v<-c(6,3,15,0,9,1,2,17,12)

maximo<-function(v){
  Max<-v[i]
n<-length(v)
for(i in 2:n){
  if (v[i]>Max){Max<-v[i]}}
return(Max)
}
max(v)
maximo(v)




#### Frecuencia de 5
v<-c(6,5,15,3,5,3,0,5,0,0,1,6,6,5,0)
x<-5

frecuencia<-function(v,x){
  freq<-0
  n<-length(v)
  for(i in 1:n){
    if (v[i]==x){freq<-freq++1}
    }
  return(freq)
}
frecuencia(v,x)


### Frecuencia máxima dentro del vector (que imprima "El maximo de V es: ",m," y aparece ",f," veces en el vector")
m<-maximo(v)
f<-frecuencia(v,m)
sprintf("El maximo de V es: %d y aparece %d veces en el vector", m, f)




##########

#contarpares<-function(v){
#  contador<-0
#    for (i in (1:length(v)))
#      if (par2(v(i))==1) {contador <- contador+1}
#        return (contador)
#}
#v<-c(7,3,2,6,5,9)
#contarpares(v)



