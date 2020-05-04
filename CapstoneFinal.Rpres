The Word Predictor
========================================================
author: Greg Ricci
date: 05/12/2020
autosize: true

Capstone Project Shiny App Presentation 


Final Project Assignment
=======================================================
The goal of this exercise is to create a product to highlight the prediction algorithm that you have built and to provide an interface that can be accessed by others. 

For this project you must submit:

- A Shiny app that takes as input a phrase (multiple words) in a text box input and outputs a prediction of the next word. Develop the Shiny app in R that can predict the next word using previous ones, like that used in cellphone devices keyboard applications implemented by the SWIFTKEY.

- A slide deck consisting of no more than 5 slides created with R Studio Presenter (https://support.rstudio.com/hc/en-us/articles/200486468-Authoring-R-Presentations) pitching your algorithm and app as if you were presenting to your boss or an investor.

The Review Critera
========================================================
The Data Product:
- Does the link lead to a Shiny app with a text input box that is running on shinyapps.io?
- Does the app load to the point where it can accept input?
- When you type a phrase in the input box do you get a prediction of a single word after pressing submit and/or a suitable delay for the model to compute the answer?
- Put five phrases drawn from Twitter or news articles in English leaving out the last word. Did it give a prediction for every one? 

The Slide Deck:
- Does the link lead to a five slide deck on R Pubs? 
- Does the slide deck contain a description of the algorithm used to make the prediction? 
- Does the slide deck describe the app, give instructions, and describe how it functions?
- How would you describe the experience of using this app?
- Does the app present a novel approach and/or is particularly well done?
- Would you hire this person for your own data science startup company?


Overview of what has been done
========================================================
The goal of this Capstone Project:
- To develop a Shiny app in R that can predict the next word using previous ones, like that used in cellphone devices keyboard applications implemented by the SWIFTKEY.

Previous tasks that were done in order to get to this point were:
- Understanding the problem,
- Getting and Cleaning the Data,
- Exploratory Data Analysis,
- Ngram Modeling,
- Prediction Modeling.

and then now:

Natuarl Lanaguage Processing of the SWIFTKEY datasets and building a user friendly prediction model (ie: the shiny app).Enatils the following tasks:
- Creative exploration and analysis of the Datasets,
- Creating a data product,
- Creating a short slide deck.


The Application - How it works
========================================================
The Word Predictor application allows a user to enter a word or words into and then predicts the next possible word for a sentence.

- The user is prompted to enter a word or words into a input box, then  clicks the submit button,
- The prediction result will displayed in three boxs which show the next predicted word for the user input for each of the three Datasets.

- The predicted word is from the ngrams matrices, comparing it with tokenized frequency within the ngram sequences.

- the Output of the next predicetd word is displayed in three boxes, each representing one of the three differnt SWIFTKEY datasets (Twitter, Blogs and News).

- Sample word suggestions have been displayed for the user to assit the user in testing the applications ease of use. "Happy Birthday","in the","before his 30th birthday","Students at Southwest High","I","Nothing","Thank".





The Application - The Build
========================================================
- The data was download from the following link: https://d396qusza40orc.cloudfront.net/dsscapstone/dataset/Coursera-SwiftKey.zip

- Imported into Rstudio then r.code was written to accomplish the first five tasks stated on the prevouis slide.

- Then furtehr data analysis was performed, next I created the ui.R file that creates the main and side panels of the Shiny App and then the server.R file which controls the output of Shiny App. 

Give it a try:

- Users may find my Shiny App at the following link: 

- The code for the ui.R and server.R files and additional documentation can be found at the following GitHub repository link:


In Summury
========================================================

What an Awesome Application and THANK YOU for trying it out! 

This was a fun proto-type to build and I hope that you were able to see the value-add and any future potential in this application. I look forward to the possibility of incorporating some form of the application into the SWIFTKEY family of products. 

On a sidebar - When Using the application it always seems to bring me back in time before the age of technology to a Christmas morning of my childhood when I received the toy the "Magic 8 Ball". I'm sure you remember it...

- The Magic 8-Ball is a plastic sphere, made to look like an eight-ball, that is used for fortune-telling or seeking advice.  It was invented in 1950 by Albert C. Carter and Abe Bookman and manufactured by the Mattel Corporation.  The user asks a yes-no question to the ball and then turns it over to reveal an answer in a window on the ball. 

As noted in the Disclaimer: 
- This application is a proto-type and uses ngrams to predict the next word in a sentence. It is based on a subset of data prepared in advance utilizing the SWIFTKEY, English language version, Datasets (blogs, news and tweets). 

- The model was tested and validated against the Datasets mentioned with slightly above average results. 

- Further Natural Language Processing methods to improve the prediction model can be considered such as: increasing the sample size, extending the source Dataset, also the implementation of various permutations of multiple ngram models and then a need to revalidate the model. 

