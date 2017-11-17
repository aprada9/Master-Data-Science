
library(shiny)

# Define UI for application that draws a histogram
fluidPage(
  
  # Application title
  titlePanel("SHINY SESIÓN III: GENERAR MUESTRAS ALEATORIAS"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(

      # Campo para introducir el tamaño de la muestra:
      numericInput("n", label = "Tamaño de la muestra", value = "10", width = NULL),
      
      # Campo para introducir la correlación de la muestra (máximo valor que puede tomar es 1 porque si no da error y se cierra:
      numericInput   ("corr", label = "Correlación", 0.5,step = 0.05, max = 1),
  
      # Boton para generar la muestra y cor al ser pulsado:
      actionButton("pulse", label = "Generar muestra aleatoria")
      
      ),
    
# Show a plot of the generated distribution
    mainPanel(
      
      #Output de la gráfica y verbatim:
      plotOutput("grafica", click = "click"),
      verbatimTextOutput("correlacion")
    )
  )
)

