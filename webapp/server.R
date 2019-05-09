#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(ggplot2)
read_csv("/home/ubuntu/Assignments/Shiny/webapp/Tomato.csv")

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  output$histogram <- renderPlot({
    
    tomato_histo <- ggplot(data = tomato, aes_string(y=input$traits), color=species)

    tomato_histo + geom_histogram() + facet_wrap(~species) + ylab("Count") 
    + ggtitle("Total length by species")
  })
  
})
