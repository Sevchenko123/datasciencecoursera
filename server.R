library(shiny)
library(ggplot2)
data <- mtcars
shinyServer(function(input, output) {
       Y <- reactive({
                paste("mpg ~", "as.integer(", input$ind,")")
        })
        
        myFit <- reactive({
                lm(as.formula(Y()),data=data)
        })
        
        output$summary <- renderPrint({
                independent <- input$ind
                if(independent == "cyl")
                        summary(mtcars$cyl)
                else if(independent == "disp")
                        summary(mtcars$disp)
                else if(independent == "hp")
                        summary(mtcars$hp)
                else if(independent == "drat")
                        summary(mtcars$drat)
                else if(independent == "wt")
                        summary(mtcars$wt)
                else if(independent == "qsec")
                        summary(mtcars$qsec)
                else if(independent == "vs")
                        summary(mtcars$vs)
                else if(independent == "am")
                        summary(mtcars$am)
                else if(independent == "gear")
                        summary(mtcars$gear)
                else if(independent == "carb")
                        summary(mtcars$carb)
                else if(independent == "mpg")
                        summary(mtcars$mpg)
                
        })
        
        
        output$text <- renderText({
                paste("Regression Model:", "mpg ~", input$ind)
        })
        
        output$myPlot <- renderPlot ({
                with(data, {plot(as.formula(Y()),xlab=input$ind,ylab="mpg")
                            abline(myFit())
                })
        })
})
