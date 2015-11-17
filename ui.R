library(shiny)
# For ui.R
shinyUI(pageWithSidebar(
        headerPanel("Predicting Wins for MLB Teams"), 
        sidebarPanel(
                h3('MLB Team Inputs'),
                numericInput('ERA', 'Enter the Earned Runs Average (e.g., 1.25):', 0, 0, min = 0),
                numericInput('RD', 'Enter the Runs Differential (e.g., 150):', 0, 0, min = 0),
                selectInput("team", "Choose a team:",
                     list("Diamondbacks","Braves","Orioles","Red Sox","Cub",
                          "White Sox","Reds","Indians","Rockies","Tigers",
                          "Marlins","Astros","Royals","Dodgers","Brewers",
                          "Twins","Mets","Yankees","Athlethics","Phillies",
                          "Pirates","Padres","Mariners","Giants","Cardinals",
                          "Devil Rays","Rangers","Blue Jays","Nationals")),
                
                submitButton("Submit")
                
),
        mainPanel(
                h4('Your team selection:'), verbatimTextOutput("inputteam"),
                h4('Your ERA prediction:'), verbatimTextOutput("inputERA"), 
                h4('You RD prediction:'), verbatimTextOutput("inputRD"), 
                h4('Projected wins:'), verbatimTextOutput("prediction"),
                helpText("Note: The maximum wins allowed for a team is 162. This 
                         assumes a team is able to win all of its regular season games.")
        ) 
))