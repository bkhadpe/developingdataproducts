library(shiny)


shinyServer(
  function(input, output)
  {
    output$newHist <- renderPlot({
      mns = NULL
      set.seed(1234)
      simulations <- input$simulations
      size <- input$size
      lambda <- input$lambda
      for (i in 1:simulations) mns = c(mns,mean(rexp(size,lambda)))
      hist(mns, xlab='Means of Simulations', main='Histogram of Means of Random Exponentials')                                             
    })
        
  }
)
