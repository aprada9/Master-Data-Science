
library(shiny)

# Define UI for application that draws a histogram
fluidPage(
  
  # Application title
  titlePanel("SHINY SESIÓN III: GENERAR MUESTRAS ALEATORIAS"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
      
      # Campo para introducir el tamaño de la muestra:
      numericInput("n", label = "Tamaño de la muestra", value = "1000", width = NULL),
      
      # Campo para introducir la correlación de la muestra (máximo valor que puede tomar es 1 porque si no da error y se cierra:
      numericInput   ("corr", label = "Correlación", 0.5,step = 0.05, max = 1),
      
      # Boton para generar la muestra y cor al ser pulsado:
      actionButton("pulse", label = "Generar muestra aleatoria"),
      
      #Parte 1 de la nueva práctica:
      
      textInput("polin", value=1, label = "Orden polinómico", placeholder = "Introducir orden polinómico" ),
      
      actionButton("pulse2", label = "Ajustar modelo"),
      
      checkboxInput("checkbox", label = "Muestra de training y de test", value = FALSE),
      
      conditionalPanel(
        condition = "input.checkbox == '1'",
        numericInput("training", value=50, label = "Porcentaje de training",step = 5, max = 99, min = 1 )
        
        )
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      
      #Output de la gráfica y verbatim:
      plotOutput("grafica", click = "click"),
      verbatimTextOutput("correlacion"),
      tableOutput("tablaca")
    )
  )
)

