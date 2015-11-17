wins <- function(ERA, RD) if(round(88.61828 - 2.05972 * ERA + 0.09473 * RD) > 162) 162 else round(88.61828 - 2.05972 * ERA + 0.09473 * RD)


shinyServer(
        function(input, output) {
                output$inputteam <- renderPrint({input$team})
                output$inputERA <- renderPrint({as.numeric(input$ERA)})
                output$inputRD <- renderPrint({as.numeric(input$RD)})
                output$prediction <- renderPrint({wins(input$ERA, input$RD)})
        } 
        )