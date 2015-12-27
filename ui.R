shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Car stopping distance prediction"),

    sidebarPanel(
      numericInput('speed', 'Speed in mph', 10, min = 5, max = 25, step = 1),
      submitButton('Submit')
    ),
    mainPanel(
        h3('Results of prediction'),
        h4('You entered (in mph)'),
        verbatimTextOutput("inputValue"),
        h4('Which resulted in a prediction of (in feet)'),
        verbatimTextOutput("prediction")
    )
  )
)