library(shiny)

# Define UI for application that assigns Hogwarts houses
ui <- fluidPage(
  
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
)

# Define server logic required to choose Hogwarts house
server <- function(input, output) {
  
  output$house <- renderText({
    if (input$favcolor == "Y") "Hufflepuff"
    else if (input$favcolor == "B") "Ravenclaw"
    else if (input$favcolor == "R") "Gryffindor"
    else if (input$favcolor == "G") "Slytherin"
  }) 
}

shinyApp(ui = ui, server = server)
