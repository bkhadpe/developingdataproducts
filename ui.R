# Shiny App UI for Evaluating the Distribution of Means of Random Exponentials

# This app enables the user to enter the variables for calculating the means
# of random exponential simulations to prove the Central Limit Theorem

shinyUI(pageWithSidebar(
  headerPanel("Distribution of Means of Random Exponentials"),
  sidebarPanel(
    p('This purpose of this app is to prove the Central Limit Theorem applied to a exponential distribution.'),
    p('The user can enter the variables for calculating the means of random exponential distributions, averaged over the specified number of simulations.'),
    p('The mean of a exponential distribution is 1/lambda. As the number of simulations increases (compared to the default of 25 in this app, the distribution of the means will be seen to become that of a standard normal distribution with a mean of 1/lambda.'),
    numericInput('lambda','Lambda (Rate)',0.2),
    numericInput('size','Number of Observations',40),
    numericInput('simulations','Number of Simulations',25)
  ),
  mainPanel(
    plotOutput('newHist')
  )
))

