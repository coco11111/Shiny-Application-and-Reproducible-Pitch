# project
library(shiny)
shinyUI(fluidPage(
    titlePanel("Plot normal distribution"),
    sidebarLayout(
        sidebarPanel(
            sliderInput("bins","Number of bins:(slide the bar from the left to the right slowly to see how the histgram changes)",min = 1,max = 10000,value = 30)
        ),
        mainPanel(
            h3("Normal Distribution"),
            plotOutput("plot1")
        )
    )
))