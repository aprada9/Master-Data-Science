library(ggplot2)

#A lo largo de este script probamos distintos tipos de gráficos y combinaciones 
#de la librería ggplot2 con una tabla de ejemplos de coches.

ggplot(mpg, aes(class))

ggplot(mpg, aes(class)) + geom_bar()

ggplot(mpg, aes(class)) + geom_point()

ggplot(data=mpg, aes(x=class, y=displ)) + geom_point() 

ggplot(data=mpg, aes(x=class, y=displ)) + 
  geom_point() 

ggplot(data=mpg, aes(x=cty, y=displ, colour=class, size=hwy)) + geom_point()

ggplot(data=mpg, aes(x=cty ,  size=hwy)) + 
  geom_bar() +
  geom_point(aes(y=displ,colour=class))

ggplot(data=mpg, aes(x=cty ,  size=hwy)) + 
  geom_bar() +
  geom_point(aes(y=displ,colour=class), alpha=0.08)

ggplot(data=mpg, aes(x=cty ,  size=hwy)) + 
  geom_bar() +
  geom_point(aes(y=displ,colour=class), position="jitter")



ggplot(data=mpg, aes(x=cty,  y=hwy)) + 
  geom_point() + 
  facet_grid(year~class)


ggplot(data=mpg, aes(y=displ,  x=cyl)) + 
  geom_point() + 
  facet_grid(.~manufacturer)


ggplot(data=mpg, aes(y=displ,  x=cyl)) + 
  geom_point() + 
  facet_wrap(~manufacturer, ncol=3)


ggplot(data=mpg, aes(y=displ,  x=cyl, color=manufacturer)) + 
  geom_point() +
  theme_bw()

  