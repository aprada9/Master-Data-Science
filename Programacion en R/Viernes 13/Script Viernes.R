a<-c(1,1,6); b <-c(4,5,1)
sqrt(sum((a-b)^2))
     
source("http://www.bioconductor.org/biocLite.R")
biocLite()
biocLite("multtest")
library(multtest);
 data(golub)
 golub.gnames[1042,]
 
## Grep se utiliza para buscar un patrón 
index <- grep("Cyclin",golub.gnames[,2])
index
golub.gnames[index,2]


dist.cyclin <- dist(golub[index,],method="euclidian")
diam <- as.matrix(dist.cyclin)
colnames(diam) <- golub.gnames[index,3]
rownames(diam) <- colnames(diam)
diam[1:5,1:5]


source("http://www.bioconductor.org/biocLite.R")
biocLite()
biocLite("genefilter")
library("genefilter"); 
biocLite("ALL")
library("ALL");
data(ALL)

closeto1389_at <- genefinder(ALL, "1389_at", 10, method = "euc")
closeto1389_at[[1]]$indices
round(closeto1389_at[[1]]$dists,1)

featureNames(ALL)[closeto1389_at[[1]]$indices]
str(closeto1389_at)


names <- list(c("g1","g2","g3","g4","g5"),c("p1","p2"))
sl.clus.dat<- matrix(c(1,1,1,1.1,3,2,3,2.3,5,5),ncol = 2,byrow = TRUE,dimnames = names)
sl.clus.dat
plot(sl.clus.dat,type="n", xlim=c(0,6), ylim=c(0,6))
text(sl.clus.dat,labels=row.names(sl.clus.dat))
print(dist(sl.clus.dat,method="euclidian"),digits=3)
sl.out<-hclust(dist(sl.clus.dat,method="euclidian"),method="single")
plot(sl.out)

sl.out<-hclust(dist(rnorm(20,0,1),method="euclidian"),method="single")
plot(sl.out)


x <- c(rnorm(10,0,0.1),rnorm(10,3,0.5),rnorm(10,10,1.0))
plot(hclust(dist(x,method="euclidian"),method="single"))


data(golub, package="multtest")
clusdata <- data.frame(golub[1042,],golub[2124,])
colnames(clusdata)<-c("CCND3 Cyclin D3","Zyxin")
gol.fac <- factor(golub.cl,levels=0:1, labels= c("ALL","AML"))
plot(clusdata, pch=as.numeric(gol.fac))
legend("topright",legend=c("ALL","AML"),pch=1:2)
plot(hclust(dist(clusdata,method="euclidian"),method="single"))

#

data(golub, package="multtest")
clusdata <- data.frame(golub[1042,],golub[2124,])
colnames(clusdata)<-c("CCND3 Cyclin D3","Zyxin")
gol.fac <- factor(golub.cl,levels=0:1, labels= c("ALL","AML"))

plot(clusdata, pch=as.numeric(gol.fac))
legend("topright",legend=c("ALL","AML"),pch=1:2)
plot(hclust(dist(clusdata,method="euclidian"),method="single"))
data <- rbind(matrix(rnorm(100,0,0.5), ncol = 2), matrix(rnorm(100,2,0.5), ncol = 2))
cl <- kmeans(data, 50)
cl

plot(data,col=cl$cluster)
points(cl$centers,col=1:2, pch=8,cex=2)

install.packages("TeachingDemos")
library(TeachingDemos)
put.points.demo()

sl.out<-hclust(dist(rnorm(20,0,1),method="euclidian"),method="single")
plot(sl.out)

eigen(cor(golub))$values[1:5]

data <- golub; p <- ncol(data); n <- nrow(data) ; nboot<-1000
eigenvalues <- array(dim=c(nboot,p))
for (i in 1:nboot){dat.star <- data[sample(1:n,replace=TRUE),]
eigenvalues[i,] <- eigen(cor(dat.star))$values}