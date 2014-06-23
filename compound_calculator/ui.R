library(shiny)

shinyUI(
    pageWithSidebar(
        #Application title
        headerPanel("Compound interest for future value prediction"),
        sidebarPanel(
            numericInput('principal', 'Principal investment', 300000, min = 100000, max = 1200000, step = 50000),
            numericInput('annual_interest_rate', 'Annual interest rate in %', 5, min = 1, max = 90, step = 1),
            numericInput('n', 'Number of times interest compounded per year', 1, min = 1, max = 12, step = 1),
            numericInput('t', 'Number of years money invested for', 3, min = 3, max = 30, step = 1),
            submitButton('Submit')
        ),
        mainPanel(
            h2("Documentation on how to use:"),
            p("1. Fill in the Principal, Annual Interest rate, Number of times per year compound interest takes place, Number of years of investment"),
            p("2. Press Submit to calculate the final value of investment"),
            p("2. Voila!~ Value at the bottom of this panel"),
            h3('Results of prediction'),
            h4('If you start with this principal of'),
            verbatimTextOutput('principal'),
            h4('at annual interest rate of'),
            verbatimTextOutput('annual_interest_rate'),
            h4('where interest is compounded each year at this many times of'),
            verbatimTextOutput('n'),
            h4('and you keep the money invested at this many years'),
            verbatimTextOutput('t'),
            h4('Which resulted in a prediction of your return at'),
            verbatimTextOutput('prediction')
        )
    )    
)