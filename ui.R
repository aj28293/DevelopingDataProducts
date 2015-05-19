
library(shiny)
library(ggplot2)
require(markdown)

data(swiss)
dat <- swiss



shinyUI(fluidPage(
  navbarPage("Swiss Fertility and Socioeconomic Indicators (1888) Data",
             tabPanel("Plot of Fertility and Socioeconomic Indicators vs. Infant Mortality",
                      sidebarPanel(
                        
                        h3('Select Indicator Variable to plot vs. Infant Mortality'),
                        
                        selectInput('x', 'X', names(dat), selected = "Fertility"),
                        
                        
                        checkboxInput('smooth', 'Smooth'),
                        
                        
                        tags$br(),
                        tags$br(),
                        strong('Fertility and Socioeconomic Indicators'),
                        tags$ul(
                          tags$li('Fertility - Ig, common standardized fertility measure'),
                          tags$li('Agriculture - % of males involved in agriculture as occupation'),
                          tags$li('Examination - % draftees receiving highest mark on army examination'),
                          tags$li('Education - % education beyond primary school for draftees.'),
                          tags$li('Catholic - % catholic (as opposed to protestant)'),
                          tags$li('Infant.Mortality - live births who live less than 1 year.')
                          
                        ) 
                      ),
                      mainPanel(
                      
                       plotOutput('plot')     
                      )
             ),
             tabPanel("Overview",
                   mainPanel(
                   includeMarkdown("instructions.md")
                  )
              )
  )
)
)
                      
             
             
             
  #)
  