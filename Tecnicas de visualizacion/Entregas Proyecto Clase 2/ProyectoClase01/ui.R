#Instalamos y requerimos la libraria shiny.

# install.packages("shiny")
library(shiny)


#Vamos entrando en las distintas capas de la página, introduciendo los datoscomo los títulos o la barra 
#corredera con el número de bins en aquellas páginas en las que queremos introduciras.
shinyUI(
  
  fluidPage(
    titlePanel("Old Faithful Geysser"),
    sidebarLayout(
      sidebarPanel(
        sliderInput("bins","Number of bins",0,10,4)
      ),
      mainPanel(
        plotOutput("plot")
      )
    )
  )
)
