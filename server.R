shinyServer(function(input, output) {
  output$ageDist <- renderPlotly({
    ages <- titanic.df$Age  
    
    # draw the histogram
    plot_ly(x=ages, 
            type = "histogram",
            color = "#FFB366")
  })
})