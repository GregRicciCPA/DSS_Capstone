# Week 7 Capstone Project Data Science Coursera
# Next Word Predition Model
# Greg Ricci
# 05/12/2020
# Shiny App

library(shiny)


shinyUI(pageWithSidebar(
    headerPanel(h1("The Word Predictor...",style='background-color:coral;
                     padding-left: 15px')),
    
   # titlePanel("Capstone Project for the Data Science Specialization"),
    tabPanel("Description","Disclaimer - this application is a proto-type and uses ngrams to predict the next word in a sentence. It is based on a subset of data prepared in advance utilizing the SwiftKey, English language version, Datasets (blogs, news and tweets). The model was tested and validated against the Datasets mentoned with slightly above average results. Further Natural Language Processing methods to improve the prediction model can be considered such as: increasing the sample size, extending the source Dataset, also the implementation of various permutations of multiple ngram models and then a need to revalidate the model."),
   
    sidebarLayout(
    sidebarPanel(
       titlePanel("Input area:"),  
       textInput("text", label = ("Please enter a word or words in the below box:"), 
                  value = "Happy Birthday",width = NULL, placeholder = NULL),
        h6(em("ONLY English words are recognized, no numbers or special characters")),
       
       tags$div(
         tags$ul(
           tags$li("__SUGGESTED WORDS___"), 
           tags$li("Happy Birthday"), 
           tags$li("in the"),
           tags$li("before his 30th birthday"),
           tags$li("Students at Southwest High"),
           tags$li("I"),
           tags$li("Nothing"),
           tags$li("Thank"),
         )
      ),
        submitButton("Submit","Predict"),
     ),
   
    
    mainPanel(
      headerPanel("Output area:"),
      
      titlePanel(em("The Word Predictor - see the next word...")),
     
        h4("...The next word"),
        verbatimTextOutput("twitter_next",placeholder = TRUE),

      #         h4("...Blogs"),
      #     verbatimTextOutput("blogs_next", placeholder = TRUE),
      #    
      #   h4("...News", placeholder = TRUE),
      #   verbatimTextOutput("news_next"),

        br(),
      )
)))
   
 

