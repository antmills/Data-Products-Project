library(shiny) #Load shiny package
library(rCharts)
library(ggplot2)

#Dataset cleaned to report only on Depth, Magnitude, and Station data
data("quakes")
mydata<-quakes[,3:5]



shinyServer(
        function(input,output){
                # Create the reactive function so that the expression inside this function is reactive and also the value of the evaluated expression could be used by other render statements avoiding evaluation of expression multiple times.
                
                colm <- reactive({
                        as.numeric(input$var)
                        
                })
                
                
                #Using reactive object "colm" to create dynamic histogram for delimiting the number of histogram BINS, interchanging x axis label (when appropriate), and delimiting the span range of data (where appropriate) based on user input.
                output$quakeshist <- renderPlot(
                        
                        {
                                hist(mydata[,colm()], col =input$color, xlim = c(0, max(mydata[,colm()])), main = "Histogram of earthquakes by Depth, Magnitude, & number of reporting Stations", breaks = seq(0, max(mydata[,colm()]),l=input$mybin+1), xlab = names(mydata[colm()]))}
                        
                        
                )
                
                
                
                
        }
)