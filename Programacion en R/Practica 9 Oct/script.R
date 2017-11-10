library(stats)
str(swiss): head(swiss)

x <- swiss$Education[1:25]
sort(x, method="sh",index.return = TRUE)

y <- as.integer(rnorm(200, 5, 7))
sort(y, method="quick") 


x<-c(1:80, 78:34, 1,2,3,4,5,6,7,5,4,3,2)
n<-10
divideenBloques <- function( x, n){
  tam<-length(x)%/%n
  list<- NULL
  j<-1
  for (i in 0:(n-2)){
    list<-c(list,c(i*tam+1, (i+1)*tam))
  }
  list <-c (list, c((i+1)*tam)+1, length(x))
}
lista<-divideenBloques(x,n)