library(shiny)
library(shinydashboard)
library(ggplot2)
library(MASS)

ui <- dashboardPage(
  dashboardHeader(title = "SHINY SESIÓN IV"),
  dashboardSidebar(sidebarMenu(
    menuItem(
      "Práctica 1",
      tabName = "pract1",
      icon = icon("dashboard")
    ),
    menuItem("Práctica 2", tabName = "pract2", icon = icon("rocket"))
  )),
  
  
  dashboardBody(tabItems(
    # First tab content: UI de la primera práctica:
    tabItem(tabName = "pract1",
            fluidPage(
              # Application title
              titlePanel("SHINY SESIÓN III: GENERAR MUESTRAS ALEATORIAS"),
              
              # Sidebar with a slider input for number of bins
              sidebarLayout(
                sidebarPanel(
                  # Campo para introducir el tamaño de la muestra:
                  numericInput(
                    "n",
                    label = "Tamaño de la muestra",
                    value = "10",
                    width = NULL
                  ),
                  
                  # Campo para introducir la correlación de la muestra (máximo valor que puede tomar es 1 porque si no da error y se cierra:
                  numericInput   (
                    "corr",
                    label = "Correlación",
                    0.5,
                    step = 0.05,
                    max = 1
                  ),
                  
                  # Boton para generar la muestra y cor al ser pulsado:
                  actionButton("pulse", label = "Generar muestra aleatoria")
                  
                ),
                
                # Show a plot of the generated distribution
                mainPanel(
                  #Output de la gráfica y verbatim:
                  plotOutput("grafica1", click = "click1"),
                  verbatimTextOutput("correlacion")
                )
              )
            )),
    
    # Second tab content: UI de la segunda práctica:
    tabItem(tabName = "pract2",
            fluidPage(
              titlePanel("Shiny Sesión III"),
              
              # Definimos los 3 tipos de clicks:
              plotOutput(
                "grafica2",
                hover = "hoverGrafica",
                dblclick = "click2Grafica",
                click = "clickGrafica"
              ),
              
              
              # Main panel for displaying outputs ----
              mainPanel(# Output: Tabset con las 3 pestañas la cual funciona cada una con un tipo de acción.
                tabsetPanel(
                  type = "tabs",
                  tabPanel("Click", tableOutput("outputClick")),
                  tabPanel("Doble Click", tableOutput("output2Click")),
                  tabPanel("Hover", tableOutput("outputHover"))
                  
                ))
            ))
    
  ))
)
    
    
  


