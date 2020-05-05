# Week 7 Capstone Project Data Science Coursera
# Next Word Predition Model
# Greg Ricci
# 05/12/2020
# Shiny App - Server
#

library(shiny)
#setwd('C:/Users/Anthony/Documents')
list.files('Documents')

source('NgramData.R')


shinyServer(function(input, output) {
    
    output$twitter_next <- renderText({
         hope <- as.character(twitter_predict(as.character(input$text))[2])
     })
 
#   output$blogs_next <- renderText({
    #          hope <- as.character(blogs_predict(as.character(input$text))[2])
    #      })
    #    
    #   output$news_next <- renderText({
    #      hope <- as.character(news_predict(as.character(input$text))[2])
    #  })
 })
