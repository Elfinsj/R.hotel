#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Hotel Search"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
       helpText("Look up users' review by user.name and rev.date."),
       textInput("uname","User.name","All"),
                 dateRangeInput("dates", 
                                "Date range",
                                start = "2014-11-20", 
                                end ="2015-01-01"),
       submitButton("Get Rev")
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      textOutput("txt"),
      br(),
      tableOutput("rev")
       
    )
  )
))
