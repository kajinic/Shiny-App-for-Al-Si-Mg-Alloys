shinyUI(fluidPage(
  # Application title.
  titlePanel("Aluminum-Silicon-Magnesium Alloys"),
  
  # Sidebar with slider inputs 
  sidebarLayout(
      sidebarPanel(
    
      sliderInput("silicon",
                  "Silicon",
                  min = 0.1,
                  max = 15,
                  value = 0.1,
                  step = 0.01),
    
      sliderInput("magnesium",
                  "Magnesium",
                  min = 0.1,
                  max = 0.8,
                  value = 0.1,
                  step = 0.01)
      
    ),
  
    mainPanel(
      tags$h3("Chemical Composition [wt. %]"),
      tableOutput("input.table"),
      tags$h3("Predictions"),
      tags$h4("Liquidus Temperature [deg C]"),
      tableOutput("liquidus.results"),
      tags$h4("Solidus Temperature [deg C]"),
      tableOutput("solidus.results"),
      tags$h4("Solidification Range [deg C]"),
      tableOutput("delta.results")
      
    )
  )

  
))