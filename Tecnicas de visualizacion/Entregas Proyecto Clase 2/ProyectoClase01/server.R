library(shiny)

#A través de la siguiente función estamos haciendo que el histograma(output) 
#dependa de los valores que tenga en cada momento la barra de bins(imput), quedando por lo tanto vinculado.

shinyServer<-function(input, output) {
  
  output$plot <- renderPlot({
  
  x    <- faithful$waiting
  bins <- seq(min(x), max(x), length.out = input$bins + 1)
  
  hist(x, breaks = bins, col = "#76AADB", border = "white",
       xlab = "Waiting time to next eruption (in mins)",
       main = "Histogram of waiting times")
  
})

}