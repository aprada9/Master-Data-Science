library(shiny)

server <- shinyServer(function(input, output){
  
  output$grafica <- renderPlot({
    ggplot(data=mpg, aes(x=cty, y=hwy)) + 
      geom_point() 
  })
  
  # 1 - Output de la pestaña Click
  output$outputClick<-renderTable({
    
    nearPoints(mpg, input$clickGrafica)
  })
  
  # 2 - Output de la pestaña Doble Click
  output$output2Click<-renderTable({
    
    nearPoints(mpg, input$click2Grafica)
  })
  
  # 3 - Output de la pestaña Hover
  output$outputHover<-renderTable({
    
    nearPoints(mpg, input$hoverGrafica)
  })
  
  
})