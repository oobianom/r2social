library(shiny)
library(r2social)


ui <- fluidPage(
  r2social.scripts(),
  shareButton(link = "http://obianom.com", position = "right"),
  shareButton(link = "http://google.com", position = "inline"),
  selectInput("dataset", label = "Dataset", choices = ls("package:datasets")),
  connectButton(link = "http://rpkg.net", visit.us=TRUE, position = "inline"),
  connectButton(link = "https://www.linkedin.com/in/oobianom", linkedin=TRUE, position = "inline"),
  connectButton(link = "https://x.com/R2Rpkg", x=TRUE, position = "inline",display.inline = FALSE),
  connectButton(link = "https://x.com/R2Rpkg", x=TRUE, position = "inline",display.inline = FALSE),
  verbatimTextOutput("summary"),
  tableOutput("table")
)
