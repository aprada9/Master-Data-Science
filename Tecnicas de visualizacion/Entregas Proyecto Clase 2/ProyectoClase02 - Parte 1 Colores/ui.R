library(shiny)

shinyUI(
  fluidPage(
    sidebarLayout(
      sidebarPanel(
        selectInput("variablex", label = h3("eje horizontal"), 
                    choices = list("Cylinders" = "cyl",
                                   "Miles per galon" = 'hwy',
                                   "Displacement" = 'displ'), 
                    selected = 1),
        
        selectInput("variabley", label = h3("eje vertical"), 
                    choices = list("Cylinders" = 'cyl', 
                                   "Miles per galon" = 'hwy',
                                   "Displacement" = 'displ'), 
                    selected = 1),
        
        checkboxInput("facet", label = "División", value = FALSE),
        
        checkboxInput("color", label = "Colorear por tipo", value = FALSE)
        
      ),
      mainPanel(
        
       
        plotOutput("grafica")

      )
    )
  )
)

########### - ENUNCIADO - ###########
# Añade un checkbox con el texto "Colorear por tipo" y con el id "color" debajo del checkbox existente.
# 
# - Este checkbox al activarlo debe colorear los puntos del diagrama de dispersión por la variable "class".
# Consecuentemente al desactivarlo el color debe desaparecer.
# 
# - Todas las interacciones deben funcionar con el checkbox de color. Es decir, el usuario puede solicitar 
# cualquier combinación de parámetros y debe seguir funcionando. Por ejemplo: facet con color con variable X e Y, 
# sin facet con color con variable Y y Z...
# 
# - Se premiará la correcta sintáxis e indentación. Recordar que los espacios y no hacer las sentencias demasiado 
# largas ayuda a la comprensión del código.

