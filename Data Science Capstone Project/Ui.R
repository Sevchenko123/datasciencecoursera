library(shiny)

# Define UI for dataset viewer application
shinyUI(fluidPage(
        
        # Application title.
        titlePanel("Predictive Text Model using N-gram approach"),
        
        sidebarLayout(
                sidebarPanel(
                        textInput("obs", "Enter Your Statement :"),
                        
                        helpText("This widget will use this statement to predict the most likely next word."),
                        
                        submitButton("Predict Next Word")
                ),
                
                mainPanel(
                        h6("Your text :"),
                        textOutput("Original"),
                        br(),
                        h6("Your statement has been formatted as per certain conditions:"),
                        textOutput("Translated"),
                        br(),
                        br(),
                        h3("Next Word :"),
                        div(textOutput("BestGuess"), style = "color:blue"),
                        br(),
                        h3("The model guessed your word based on the following data:"),
                        tableOutput("view")
                )
        )
))
