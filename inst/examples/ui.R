library(shiny)
library(r2social)


ui <- fluidPage(
  selectInput("dataset", label = "Dataset", choices = ls("package:datasets")),
  verbatimTextOutput("summary"),
  tableOutput("table"),
  r2social.scripts(),
  shareButton(position = "left"),
  shareButton(position = "inline")
)
