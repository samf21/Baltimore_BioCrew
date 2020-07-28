#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that assigns Hogwarts houses
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Sorting Hat"),
  
  # Sidebar with a dropdown input for favorite color 
  sidebarLayout(
    sidebarPanel(
       selectInput("favcolor",
                   "Select your favorite color:",
                   list("yellow" = "Y", 
                        "blue" = "B",
                        "red" = "R",
                        "green" = "G"))
    ),
    
    # Show a Hogwarts house assignment
    mainPanel(
       h4('Your Hogwarts house is'),
       verbatimTextOutput("house")
    )
  )
))
