library(shiny)
animals <- c("dog", "cat", "mouse", "bird", "other", "I hate animals")

# Define UI for application that draws a histogram
ui <- fluidPage(
    #Browser window title
    title = "Illustration of basic Shiny UI",
  
    # Application title
    titlePanel("Shiny UI elements"),
    
    fluidRow(
      column( width = 4,
        # Text inputs
        tags$h5("Text inputs"),
        textInput("name", "What is your name"),
        passwordInput("password", "Enter your password"),
        textAreaInput("story", "Tell me about yourself", rows=3),
        
        # Numeric inputs
        tags$h5("Numeric inputs"),
        numericInput("num", "Number one", value = 0, min = 0, max = 100),
        sliderInput("num2", "Number two", value = 50, min = 0, max = 100),
        sliderInput("rng", "Range", value = c(10, 20), min = 0, max = 100),
      ),
      
      column( width = 4,
        # Date inputs
        tags$h5("Date inputs"),
        dateInput("dob", "When were you born?"),
        dateRangeInput("holiday", "When do you want to go on vacation next?"),
        
        # User choice from pre-specified options
        tags$h5("Selection inputs"),
        selectInput("state", "What's your favourite state?", state.name, multiple = TRUE),
        radioButtons("animal", "What's your favourite animal?", animals),
      ),
      
      column( width = 4,
        # File upload
        tags$h5("File upload"),
        fileInput("upload", NULL),
        
        # Action button and link
        tags$h5("Action buttons"),
        actionButton("click", "Click me!"),
        actionButton("drink", "Drink me!", icon = icon("cocktail")),
        actionButton("click", "Click me!", class = "btn-danger")
      )
      
    )

)

# Define server logic required to draw a histogram
server <- function(input, output) {

}

# Run the application 
shinyApp(ui = ui, server = server)
