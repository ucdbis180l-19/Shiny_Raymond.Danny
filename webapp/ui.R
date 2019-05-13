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
  
  helpText("This application creates a histogram to show the difference between",
           "the heights of the stem of 5 tomato species.  Please use the check box below to choose any combinations of",
           "of the various parts of the stem for plotting. The hypocotyl length refers to the height of the stem before the first node, and the internodes are the height between nodes."),
  # Copy the chunk below to make a group of checkboxes
  checkboxGroupInput("traits", label = h3("Stem lengths"), 
                     choices = list("Hypocotyl Length" = "hyp", "Internode 1" = "int1", "Internode 2" = "int2", 
                                    "Internode 3" = "int3", "Internode 4"= "int4"), 
                     selected = "hyp"),
  
  
  mainPanel(plotOutput("tomato_histo"))
            
  
))