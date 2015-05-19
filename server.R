

library(shiny)

library(ggplot2)

library(GGally)


data(swiss)
dat <- swiss


shinyServer(
  function(input, output) {
    
    
    
    #Render plot of Indicator vs Infant Mortality
    output$plot <- renderPlot({
      
      p <- ggplot(dat, aes_string(x=input$x, y="Infant.Mortality")) + geom_point()
      
      
      
      if (input$smooth)
        p <- p + geom_smooth(method = "loess")
      print(p)
      
    }, height=800)
    
   
  }
)