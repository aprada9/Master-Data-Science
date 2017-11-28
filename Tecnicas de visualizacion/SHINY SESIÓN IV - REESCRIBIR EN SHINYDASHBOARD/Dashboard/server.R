

server <- function(input, output) {
  #########################
  ### Server Práctica 1:###
  #########################
  
  misDatos <- reactiveValues(muestra = NULL)
  
  observe({
    #Cada vez que pulse, que se ejecute lo siguiente:
    input$pulse
    corr <- isolate(as.numeric(input$corr))
    # Definimos sigma ya que es necesario para la función mvrnorm que usaremos posteriormente:
    sigm <- matrix(c(1, corr, corr, 1), 2)
    n <- isolate(as.numeric(input$n))
    #creamos 'muestra' con mvrnorm de los parámetros introducidos en pantalla.
    misDatos$muestra <-
      mvrnorm(n, c(0, 0), sigm, empirical = TRUE)
  })
  
  #Hacemos que al pulsar sobre la gráfica se añada ese punto a la muestra:
  observeEvent(input$click1, {
    misDatos$muestra <-
      rbind(misDatos$muestra, c(input$click1$x, input$click1$y))
    
  })
  
  output$grafica1 <- renderPlot({
    plot(misDatos$muestra, xlab = "", ylab = "")
  })
  
  output$correlacion <- renderText({
    paste0("La correlación es: ", cor(misDatos$muestra)[1, 2])
  })
  
  
  
  
  #########################
  ### Server Práctica 2:###
  #########################
  
  output$grafica2 <- renderPlot({
    ggplot(data = mpg, aes(x = cty, y = hwy)) +
      geom_point()
  })
  
  # 1 - Output de la pestaña Click
  output$outputClick <- renderTable({
    nearPoints(mpg, input$clickGrafica)
  })
  
  # 2 - Output de la pestaña Doble Click
  output$output2Click <- renderTable({
    nearPoints(mpg, input$click2Grafica)
  })
  
  # 3 - Output de la pestaña Hover
  output$outputHover <- renderTable({
    nearPoints(mpg, input$hoverGrafica)
  })
  
  
  
  
}

