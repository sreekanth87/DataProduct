shinyUI(
  
  pageWithSidebar(
  
  headerPanel("MPG Estimator"),
  
  sidebarPanel(
    sliderInput('d', 'Engine Displacement in Liters',value = 0, min = 1, max = 8, step = 0.1,)
  ,radioButtons('t','Transmission Type',c("Automatic"= 0, "Manual"= 1)),
  submitButton('Estimate'),
  h3("Read me:"), 
  h4("Select your vehicle's engine size (displacement) in liters using the slider"), 
  h4("Select any one transmission type"), 
  h4("Click on the Estimate button to find out the estimated Miles per Gallon (MPG)"),
  h4("Click on the Estimate button everytime you change a selection.")
),
  
  mainPanel(
    h3("Estimated MPG"),
      verbatimTextOutput('p')
    )
  )
)

