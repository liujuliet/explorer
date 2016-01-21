library(dplyr)
library(plotly)
library(readr)
library(shiny)

titanic.df = read_csv("data/titanic.csv")
avg.age <- mean(titanic.df$Age, na.rm = TRUE)

shinyUI(fluidPage(
  titlePanel("Overview of Titanic Passengers"),
  p("Data source: Kaggle"),
  
  sidebarLayout(
    sidebarPanel(
      h4("Summary Statistics"),
      
      h6(paste("Total Number of passengers:"), nrow(titanic.df)),
      h6(paste("Average Age:", avg.age))
    ),
    
    mainPanel(
      plotlyOutput("ageDist")
    )
  )
))