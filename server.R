library(caret)
data(mtcars)
cars<-mtcars
#converting cu.in. to liters
cars$disp<-cars$disp*0.0163871

shinyServer(
  function(input, output) {
    fit<-reactive({glm(mpg~disp*factor(am),cars, family=gaussian)}) 
       output$p<-renderPrint({round(predict(fit(),data.frame("disp"=input$d,"am"=input$t)),1)})
         }
  )
