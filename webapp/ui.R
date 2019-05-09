#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Stem Heights of different Tomato species"),
  # Copy the chunk below to make a group of checkboxes
  checkboxGroupInput("traits", label = h3("Stem lengths"), 
                     choices = list("Hypocotyl Length" = "hyp", "Internode 1" = "int1", "Internode 2" = "int2", 
                                    "Internode 3" = "int3", "Internode 4"= "int4"), 
                     selected = 1),
  
  
  mainPanel(plotOutput("tomato_histo"))
            
  
))