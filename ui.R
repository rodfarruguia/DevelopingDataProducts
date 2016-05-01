library(shiny)

# Define UI for dataset viewer application
shinyUI(
    pageWithSidebar(
        # Application title
        headerPanel("Area of a circle prediction"),
        
        sidebarPanel(
            numericInput('circle', 'Please enter a numerical value or use the up and down arrows.', min = 0, value = 0),
           
            submitButton('Submit')
        ),
        mainPanel(
            h3('Results of prediction'),
            h4('You entered a radius of'),
            verbatimTextOutput("inputValue"),
            h4('Which resulted in an area of'),
            verbatimTextOutput("prediction")
        )
    )
)

