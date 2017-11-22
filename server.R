shinyServer(function(input, output, session) {
  
  output$input.table <- renderTable({
    
    test.point <- data.frame(Si = input$silicon,
                             Mg = input$magnesium)

    test.point
    
  })
  
  output$liquidus.results <- renderTable({
    
      test.point <- data.frame(Si = input$silicon,
                               Mg = input$magnesium)
    
      pred.liquidus <- predict(fit.liquidus, newdata=test.point, interval="prediction")
      rmse_liquidus <- summary(fit.liquidus)$sigma
      Rsquared_liquidus <- summary(fit.liquidus)$r.squared
     
      data.frame(Prediction=pred.liquidus[1],
               RMSE = rmse_liquidus,
               Rsquared = Rsquared_liquidus)
    
  })
  
  output$solidus.results <- renderTable({
      
      test.point <- data.frame(Si = input$silicon,
                               Mg = input$magnesium)
      
      pred.solidus <- predict(fit.solidus, newdata=test.point, interval="prediction")
      rmse_solidus <- summary(fit.solidus)$sigma
      Rsquared_solidus <- summary(fit.solidus)$r.squared
      
      data.frame(Prediction=pred.solidus[1],
                 RMSE = rmse_solidus,
                 Rsquared = Rsquared_solidus)
    
  })
  
  output$delta.results <- renderTable({
      
      test.point <- data.frame(Si = input$silicon,
                               Mg = input$magnesium)
      
      pred.delta <- predict(fit.delta, newdata=test.point, interval="prediction")
      rmse_delta <- summary(fit.delta)$sigma
      Rsquared_delta <- summary(fit.delta)$r.squared
      
      data.frame(Prediction=pred.delta[1],
                 RMSE = rmse_delta,
                 Rsquared = Rsquared_delta)
    
  })
  
})