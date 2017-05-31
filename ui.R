# Libraries and options ####
library(shiny)
library(shinythemes)

# Define the app ####

shinyUI(fluidPage(
    
    # Theme
    theme = shinytheme("spacelab"),
    
    # Application title
    titlePanel("Next Word Predictor"),
    
       
    
        
        sidebarPanel(
            
            # Text input
            textInput("text", label = ('Please enter with a sentence with two or more words separated by a space), value = 'the default value'),
            
            # Submit button for making the prediction
            submitButton("Submit"),
            
            hr(),
            # Table output
            dataTableOutput('table')),
        
        # Mainpanel ####
        
        mainPanel(
            tabsetPanel(type = "tabs", 
                        tabPanel("Predictions",
                        
            wellPanel(
                
                # Link to report
                helpText(a('More information on the project',
                           href='http://dataexcursions.com/Word-Prediction-Shiny-App', 
                           target = '_blank')
                ),
                
                # Link to repo
                helpText(a('Link to the GitHub Repository',
                           href='https://github.com/Magoji91/PREDICT-MODEL,
                           target = '_blank')
                ),
                
               
                # Barchart output
                h2("Top 5 Predicted Words"),
                plotOutput("barchart"),
                
               
                h2("Wordcloud for the Predicted Words"),
                plotOutput('wordcloud')
                
            )),
              tabPanel("Instructions",
               h1("Using the App"),
                HTML("(1.) The app predicts the next word in a sentence/partial sentence using the stupid backoffalgorithm <br>
                     (2.) To predict the next word type enter with a sentence with two or more words separated by a space <br> 
                     (3.) A table of predicted words and the algorithm used is presented in sidebar panel <br>
                     (4.) In the main panel a bar chart of the top 5 predicted words and the scores is presented along with a wordcloud of the top 100 predicted words <br>
                     (5.) For details of the algorithm as well as the R code please click on the hyperlinks in the word prediction tab <br>
                     "))
         
       
        
        ) )
    ))
