#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(quantmod)
# Define server logic required to draw a histogram
shinyServer(function(input, output) {
 
   datain<-reactive({
     if(input$uname=="All") subset(hotel.s2,input$dates[2]>=as.Date(rev.dt)&input$dates[1]<=as.Date(rev.dt) 
                                   )
      else subset(hotel.s2,user.name==input$uname)})
   
  
  output$txt<-renderText({
    paste(input$uname,"reviews from",input$dates[1],"to",input$dates[2])
    })
  
  
output$rev<-renderTable({
 datain()
    })
  
  
  
})
