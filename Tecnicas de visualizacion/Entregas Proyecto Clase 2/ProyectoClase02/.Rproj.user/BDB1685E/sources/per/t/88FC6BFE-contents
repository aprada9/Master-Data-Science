library(shiny)

shinyUI(
  fluidPage(
    sidebarLayout(
      sidebarPanel(
        selectInput("variablex", label = h3("eje horizontal"), 
                    choices = list("Cylinders" = 'cyl',
                                   "Miles per galon" = 'hwy',
                                   "Displacement" = 'displ'), 
                    selected = 1),
        
        selectInput("variabley", label = h3("eje vertical"), 
                    choices = list("Cylinders" = 'cyl', 
                                   "Miles per galon" = 'hwy',
                                   "Displacement" = 'displ'), 
                    selected = 1),
        
        checkboxInput("facet", label = "División", value = FALSE)
        
      ),
      mainPanel(
        
        TextOutput("texto"),
        plotOutput("grafica")

      )
    )
  )
)
