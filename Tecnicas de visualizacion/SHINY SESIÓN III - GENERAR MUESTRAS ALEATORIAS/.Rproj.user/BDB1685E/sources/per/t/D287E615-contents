library(shiny)
library(MASS)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

  misDatos<- reactiveValues(muestra=NULL)
  
  observe({
    #Cada vez que pulse, que se ejecute lo siguiente:
    input$pulse 
    corr <- isolate(as.numeric(input$corr))
    # Definimos sigma ya que es necesario para la función mvrnorm que usaremos posteriormente:
    sigm <- matrix(c(1,corr,corr,1),2)
    n <- isolate(as.numeric(input$n))
    #creamos 'muestra' con mvrnorm de los parámetros introducidos en pantalla.
    misDatos$muestra <-
      mvrnorm(n,c(0,0),sigm, empirical = TRUE)
  })
  
  #Hacemos que al pulsar sobre la gráfica se añada ese punto a la muestra:
  observeEvent(input$click,{
    misDatos$muestra <- 
      rbind(misDatos$muestra,c(input$click$x,input$click$y))
    
  })

  output$grafica<- renderPlot({
    plot(misDatos$muestra, xlab = "", ylab = "")
  })
  
  output$correlacion <-renderText({
    paste0("La correlación es: ", cor(misDatos$muestra)[1,2])
  })
})
