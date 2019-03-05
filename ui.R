library(shiny)
# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Predict the species of the flower"),
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
       sliderInput("frac",
                   "Fraction of data to be used for training",
                   min = 0.5,
                   max = 0.8,
                   value = 0.7,
                   step = 0.05),
       checkboxInput('ScatterPlot',"Scatter plots",value=FALSE),
       checkboxInput('BoxPlot',"Box plots",value=FALSE),
       h5("We use Random Forest maching learning algorithm to predict the species 
          of flower, based on it's botanical features."), 
       h5("1. Check the above box to see the Exploratory Analysis
          (please select one at a time)."),
       h5("2. Use the above slider to set the fraction of data 
          to be used for training the model. Rest of the data will 
          be used for making predictions."),
       h5("Note: Give couple of seconds after hitting submit."),
       submitButton("Submit")
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      h3("Prediction Accuracy"),
      textOutput("Accuracy"),
      plotOutput("Plot")
    )
  )
))
