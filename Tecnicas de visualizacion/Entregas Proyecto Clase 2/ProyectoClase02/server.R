library(shiny)

function(input, output){
 
  output$grafica <- renderPlot({
    
    graficabase <- ggplot(data=mpg, aes_string(x=input$variablex,  y=input$variabley)) + 
      geom_point() 
    
    
    if (input$facet)
      graficabase + facet_wrap(~manufacturer, ncol=4)
    else
      graficabase
      
    
  })
  
  output$texto <- renderText({
    #Voy a necesitar usar PASTE0
    "Soy el amo"
    
  })
  
  
  
}

#Añadir texto que cambie: "Esta es la gráfica de la variable **"

# Añadir un checkbox para que se coloree la variable class.
# tienen que funcionar todas las combinaciones
# Pista: En un if tambien se pueden sobreescribir variables