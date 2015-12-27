library(UsingR)

model <- lm(dist ~ speed, cars)
slope <- as.numeric(model$coeff["speed"])
y_intercept <- as.numeric(model$coeff["(Intercept)"])

stoppingDistance <- function(speed) slope*speed + y_intercept

shinyServer(
  function(input, output) {
    output$inputValue <- renderPrint({input$speed})
    output$prediction <- renderPrint({stoppingDistance(input$speed)})
  }
)