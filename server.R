#project
library(shiny)
shinyServer(function(input, output) {
    output$plot1 <- renderPlot({
        set.seed(2134)
        number_of_points <- input$bins
        data <- rnorm(number_of_points)
        hist(data,xlim = c(-3,3),ylim = c(0,800),main = "mean",col = "grey",breaks = 30)
        output$mean <- renderText(mean(data))       
        abline(v=mean(data),col = "red")
    })
})