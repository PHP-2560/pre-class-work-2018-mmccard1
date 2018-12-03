library(shiny)

ui <- fluidPage(
  titlePanel("Probability of a Standard Normal Value"), 
  h4("Input a z-score below to view the corresponding p-value to the right."),
  sidebarLayout(   
    sidebarPanel(    
      numericInput("z", "z-score", 0)),
    mainPanel(
      textOutput("p")
  )
  )
)


server <- function(input, output) {
  output$p <- reactive({pnorm(input$z)})
}

shinyApp(ui = ui, server = server)