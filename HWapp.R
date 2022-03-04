#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(dplyr)
library(tidyr)

counties <- readRDS("counties.rds")

# Define UI for application that draws a histogram
ui <- 
  fluidPage( #outer shell of the UI, setup in rows and columns
    
    # App title ----
    #titlePanel("Hello Shiny!"),
    h1("USA 2010 Census Data"),
    p("Pecentage of county that is White"),
    
    
    # Sidebar layout with input and output definitions ----
    sidebarLayout(
      
      # Sidebar panel for inputs ----
      sidebarPanel(
        
        # Input: Slider for the number of bins ----
        sliderInput(inputId = "bins", #input$bins
                    label = "Number of bins:",
                    min = 1,
                    max = 100,
                    value = 30)
        
      ),
      
      # Main panel for displaying outputs ----
      mainPanel(
        
        # Output: Histogram ----
        plotOutput(outputId = "distPlot"),
        plotOutput(outputId = "distPlot2")      
      )
    )
  )

# Run the application 
shinyApp(ui, server)
