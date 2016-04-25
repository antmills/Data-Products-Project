#Load shiny package here:
library(shiny)
library(rCharts)
library(ggplot2)

#Define UI for my shiny application here:

shinyUI(fluidPage(
        
        #Application title provided here (Header)
        titlePanel(h4("Quake Data Explorer - My Final Project for Building Data Products Course",align="center")),
        
        #SidebarLayout callout and details start here
        sidebarLayout(
                
                #sideBar panel constraints and details provided here:
                sidebarPanel(
                        selectInput("var",label = "Select the appropriate variable", choices = c("Depth"=1, "Magnitude"=2, "Stations"=3)),
                        
                        sliderInput("mybin", "Select the number of histogram BINs by using the slider below", min=3, max=50, value=20),
                        
                        radioButtons("color", label = "Select the desired color of histogram",
                                     choices = c("Blue", "Green",
                                                 "Purple","Orange","Yellow"), selected = "Purple")
                        
                ),
                
                #mainPanel details provided here:
                mainPanel(
                        plotOutput("quakeshist")
                )
        )
))


