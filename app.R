library(shiny)

# Define UI for application that draws a histogram
ui <- fluidPage(
    # Application title
    titlePanel("Shiny UI elements"),
    textInput("name", "What is your name"),
    passwordInput("password", "Enter your password"),
    textAreaInput("story", "Tell me about yourself", rows=3)

)

# Define server logic required to draw a histogram
server <- function(input, output) {

}

# Run the application 
shinyApp(ui = ui, server = server)
