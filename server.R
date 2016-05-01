
library(shiny)

areaofaCircle <- function(circle) 3.14 * circle ^ 2

shinyServer(
    function(input, output) {
        output$inputValue <- renderPrint({input$circle})
        output$prediction <- renderPrint({areaofaCircle(input$circle)})
    }
)
