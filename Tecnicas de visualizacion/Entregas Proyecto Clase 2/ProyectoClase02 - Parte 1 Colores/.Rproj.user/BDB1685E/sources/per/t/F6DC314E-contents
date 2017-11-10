library(shiny)
library(ggplot2)

function(input, output){
 
  output$grafica <- renderPlot({
    
    graficabase <- ggplot(data=mpg, aes_string(x=input$variablex,  y=input$variabley)) + 
      geom_point() 
    
# Para que funcionen todas las posibles combinaciones en un checkboxsimple habra que definir las acciones 
# de todas las posibles combinaciones, que en este caso son 4, dentro de un mismo condicional múltiple:
 
#Condición 1: Los dos marcados 
    
  if ((input$facet==TRUE) && (input$color==TRUE)){
      ggplot(data=mpg, aes_string(x=input$variablex,  y=input$variabley, colour="class")) +
        geom_point() +
        facet_wrap(~manufacturer, ncol=4)
      
   } else    
 
#Condición 2: Divisón-ON Color-OFF 
     
       if ((input$facet==TRUE) && (input$color==FALSE)){
          graficabase + facet_wrap(~manufacturer, ncol=4)
     
             } else     

#Condición 3: Divisón-OFF Color-ON  
               
                   if ((input$facet==FALSE)&&(input$color==TRUE))  { 
                ggplot(data=mpg, aes_string(x=input$variablex,  y=input$variabley, colour="class")) +
                  geom_point()
              
                } else  
                  
#Condición 4: Divisón-OFF Color-OFF  
                  
                     if ((input$facet==FALSE)&&(input$color==FALSE))    {
                      graficabase 
                  }
  })
  
}




