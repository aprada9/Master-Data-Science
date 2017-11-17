library (shiny)
library(ggplot2)

shinyUI(
  
  fluidPage(
    
    titlePanel("Shiny Sesión III"),
    
    # Definimos los 3 tipos de clicks:
    plotOutput("grafica", hover = "hoverGrafica",dblclick = "click2Grafica", click = "clickGrafica"),
    
    
    # Main panel for displaying outputs ----
    mainPanel(
      
      # Output: Tabset con las 3 pestañas la cual funciona cada una con un tipo de acción.
      tabsetPanel(type = "tabs",
                  tabPanel("Click", tableOutput("outputClick")),
                  tabPanel("Doble Click", tableOutput("output2Click")),
                  tabPanel("Hover", tableOutput("outputHover"))
                  
      )
    )
  )
)
