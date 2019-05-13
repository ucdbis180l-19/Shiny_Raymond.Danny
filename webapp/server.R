#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(tidyverse)
tomato <- read_csv("/home/ubuntu/Shiny_Raymond.Danny/webapp/Tomato.csv")

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  output$tomato_histo <- renderPlot({
    tomato$pl <- rowSums(tomato[,input$traits])
    
    ggplot(data = tomato, aes_string(x=tomato$pl,fill="species")) + geom_histogram() + facet_wrap(~species) + xlab("Height(cm)") + ylab("Count") + ggtitle("Total length by species")
  })
  
})
