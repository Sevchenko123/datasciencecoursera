library(shiny)
library(datasets)
require(graphics)
shinyUI(fluidPage(
        headerPanel(h2("Coursera Project")),
        sidebarPanel(
                h3('Input Panel'),
                p('Select any independent variable with mpg as a dependent variable:'),
                selectInput('ind', label='Independent', selected='cyl', choices=names(mtcars)),
                h3('Documentation'),
                p("This application uses the mtcars dataset to plot a",
                  "linear regression model using two variables of this dataset:",
                  "one as independent variable, which can be chosen, and the",
                  "dependent variable is mpg."),
                p("The app generates a univariate/linear regression model with respect to the independent and dependent variable.")),
        
        # plot and output
        mainPanel(
                div(h2("Developing Data Products", style="color:#E41A1C;margin:-65px 0px 10px 20px;")),
                h4('Summary of Selected Attribute'),
                h4(verbatimTextOutput("summary")),
                h4(textOutput('text')),
                plotOutput('myPlot'))
        
))