#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to choose Hogwarts house
shinyServer(function(input, output) {

    output$house <- renderText({
        if (input$favcolor == "Y") "Hufflepuff"
        else if (input$favcolor == "B") "Ravenclaw"
        else if (input$favcolor == "R") "Gryffindor"
        else if (input$favcolor == "G") "Slytherin"
    }) 
})
