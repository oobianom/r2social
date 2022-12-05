library(shiny)
library(r2social)


ui <- fluidPage(
  selectInput("dataset", label = "Dataset", choices = ls("package:datasets")),
  verbatimTextOutput("summary"),
  tableOutput("table"),
  r2social.scripts(),
  shareButton(link = "http://obianom.com", position = "left"),
  shareButton(link = "http://obianom.com", position = "right"),
  shareButton(link = "http://google.com", position = "inline")
)
