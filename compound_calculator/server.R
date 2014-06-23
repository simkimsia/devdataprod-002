library(shiny)

returns <- function(principal, annual_interest_rate, n, t) {
    rate <- annual_interest_rate / 100
    principal * ( (1 + (rate/n))^(n * t) )
}
    
    
    
    
shinyServer(
    function(input, output) {
        options(scipen=999)
        output$principal <-renderPrint({input$principal})
        output$annual_interest_rate <-renderPrint({input$annual_interest_rate})
        output$n <-renderPrint({input$n})
        output$t <-renderPrint({input$t})
        output$prediction <-renderPrint({returns(input$principal, 
                                                          input$annual_interest_rate, 
                                                          input$n, 
                                                          input$t
                                                          )})
    }
)