# Week 7 Capstone Project Data Science Coursera
# Next Word Predition Model
# Greg Ricci
# 05/12/2020
# Code for each DataSet function

# Modification to base modeling done in the early part of the course
# original data - twtitter,blogs,news text files


 
# Specific Data Set Functions

twitter_predict <- function(x) {
  
  require(tm)
  
# Read csv dataset for Twitter
  
  full_twitter_lookup <- read.csv(file = "NgramData_twitter.csv",stringsAsFactors = FALSE)
  default <- full_twitter_lookup[full_twitter_lookup$length == 1,8]

  
# Clean the word predictor value 

  work <- tolower(x)
  work <- gsub("[[:punct:]]", "", work)
  work <- gsub("+\\d+", "", work)
  work <- gsub("^ *|(?<= ) | *$", "", work, perl=T)

  
# split data into Ngrams 
  
  chopped <- strsplit(work," ")
  howlong <- length(chopped[[1]])
  if(howlong < 3) { maxcount <- howlong} else { maxcount <- 3}

  for(i in 1:maxcount) {
    nam <- paste("n",i,"_search",sep = "")
    assign(nam,chopped[[1]][howlong+1-i])
  }

  
# Ngram three words
  
  if(maxcount > 2) {
    n3_search <- paste(n3_search,n2_search,n1_search,sep =" ")
    n3_full <- full_twitter_lookup[full_twitter_lookup$less1gram == n3_search,]
    if(nrow(n3_full)<1) {n3_next <- c(0,default)} else {n3_next <- n3_full[1,7:8]}
  } else { n3_next <- c(0,default)}

  
# Ngram two words
  
  if(maxcount > 1) {
    n2_search <- paste(n2_search,n1_search,sep =" ")
    n2_full <- full_twitter_lookup[full_twitter_lookup$less1gram == n2_search,]
    if(nrow(n2_full)<1) {n2_next <- c(0,default)} else {n2_next <- n2_full[1,7:8]}
  } else { n2_next <- c(0,default)}

# Ngram One word

  n1_full <- full_twitter_lookup[full_twitter_lookup$less1gram == n1_search,]
  if(nrow(n1_full)<1) {n1_next <- c(0,default)} else {n1_next <- n1_full[1,7:8]}
  if(n2_next[1] > n3_next[1]) { showdown <- n2_next} else { showdown <- n3_next }
  if(n1_next[1] > showdown[1]) { output <- n1_next} else {output <- showdown}

  output
}


# Next Data Set

# blogs_predict <- function(x) {
  
#   require(tm)
  
# Read csv dataset for Blogs 
  
#   full_blogs_lookup <- read.csv(file = "NgramData_blog.csv",stringsAsFactors = FALSE)
    default <- full_blogs_lookup[full_blogs_lookup$length == 1,8]
  
  
# Clean the word predictor value
  
    #   work <- tolower(x)
    #   work <- gsub("[[:punct:]]", "", work)
    #  work <- gsub("+\\d+", "", work)
    #   work <- gsub("^ *|(?<= ) | *$", "", work, perl=T)
  
  
# split data into Ngrams 

    #  chopped <- strsplit(work," ")
    #  howlong <- length(chopped[[1]])
    #  if(howlong < 3) { maxcount <- howlong} else { maxcount <- 3}

    #    for(i in 1:maxcount) {
    #   nam <- paste("n",i,"_search",sep = "")
    #   assign(nam,chopped[[1]][howlong+1-i])
    #  }
  
  
# Ngram three words
  
    #  if(maxcount > 2) {
    #   n3_search <- paste(n3_search,n2_search,n1_search,sep =" ")
    #  n3_full <- full_blogs_lookup[full_blogs_lookup$less1gram == n3_search,]
    #  if(nrow(n3_full)<1) {n3_next <- c(0,default)} else {n3_next <- n3_full[1,7:8]}
    #   } else { n3_next <- c(0,default)}

  
# Ngram two words
  
    #  if(maxcount > 1) {
    #  n2_search <- paste(n2_search,n1_search,sep =" ")
    #  n2_full <- full_blogs_lookup[full_blogs_lookup$less1gram == n2_search,]
    #   if(nrow(n2_full)<1) {n2_next <- c(0,default)} else {n2_next <- n2_full[1,7:8]}
    #  } else { n2_next <- c(0,default)}
  
  
# Ngram One word
  
    #   n1_full <- full_blogs_lookup[full_blogs_lookup$less1gram == n1_search,]
    #  if(nrow(n1_full)<1) {n1_next <- c(0,default)} else {n1_next <- n1_full[1,7:8]}
    # if(n2_next[1] > n3_next[1]) { showdown <- n2_next} else { showdown <- n3_next }
    #   if(n1_next[1] > showdown[1]) { output <- n1_next} else {output <- showdown}
    #   output
    # }


# Next Data Set

    # news_predict <- function(x) {
  
  #  require(tm)
  
# Read csv dataset for News 
  
    # full_news_lookup <- read.csv(file = "NgramData_news.csv",stringsAsFactors = FALSE)
    #  default <- full_news_lookup[full_news_lookup$length == 1,8]

# Clean the word predictor value
  
    #  work <- tolower(x)
    # work <- gsub("[[:punct:]]", "", work)
    # work <- gsub("+\\d+", "", work)
    #  work <- gsub("^ *|(?<= ) | *$", "", work, perl=T)
  
  
# split data into Ngrams 
  
    # chopped <- strsplit(work," ")
    #  howlong <- length(chopped[[1]])
    #  if(howlong < 3) { maxcount <- howlong} else { maxcount <- 3}
  
    # for(i in 1:maxcount) {
    #  nam <- paste("n",i,"_search",sep = "")
    #  assign(nam,chopped[[1]][howlong+1-i])
    #   }

  
# Ngram Three words
  
    # if(maxcount > 2) {
    #    n3_search <- paste(n3_search,n2_search,n1_search,sep =" ")
    #   n3_full <- full_news_lookup[full_news_lookup$less1gram == n3_search,]
    #  if(nrow(n3_full)<1) {n3_next <- c(0,default)} else {n3_next <- n3_full[1,7:8]}
    # } else { n3_next <- c(0,default)}
  

# Ngram two words
    #  
    #  if(maxcount > 1) {
    #     n2_search <- paste(n2_search,n1_search,sep =" ")
    #    n2_full <- full_news_lookup[full_news_lookup$less1gram == n2_search,]
    #   if(nrow(n2_full)<1) {n2_next <- c(0,default)} else {n2_next <- n2_full[1,7:8]}
    #   } else { n2_next <- c(0,default)}
 
  
# Ngram One word
  
    #  n1_full <- full_news_lookup[full_news_lookup$less1gram == n1_search,]
    #     if(nrow(n1_full)<1) {n1_next <- c(0,default)} else {n1_next <- n1_full[1,7:8]}
    #  if(n2_next[1] > n3_next[1]) { showdown <- n2_next} else { showdown <- n3_next }
    #    if(n1_next[1] > showdown[1]) { output <- n1_next} else {output <- showdown}
    # output
    #  }

