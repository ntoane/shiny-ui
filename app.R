library(shiny)
animals <- c("dog", "cat", "mouse", "bird", "other", "I hate animals")

# Define UI for application that draws a histogram
ui <- fluidPage(
  
    # Application title
    titlePanel("Shiny UI elements"),
    
    # Text inputs
    textInput("name", "What is your name"),
    passwordInput("password", "Enter your password"),
    textAreaInput("story", "Tell me about yourself", rows=3),
    
    # Numeric inputs
    numericInput("num", "Number one", value = 0, min = 0, max = 100),
    sliderInput("num2", "Number two", value = 50, min = 0, max = 100),
    sliderInput("rng", "Range", value = c(10, 20), min = 0, max = 100),
    
    # Date inputs
    dateInput("dob", "When were you born?"),
    dateRangeInput("holiday", "When do you want to go on vacation next?"),
    
    # User choice from pre-specified options
    selectInput("state", "What's your favourite state?", state.name),
    radioButtons("animal", "What's your favourite animal?", animals)
)

# Define server logic required to draw a histogram
server <- function(input, output) {

}

# Run the application 
shinyApp(ui = ui, server = server)
