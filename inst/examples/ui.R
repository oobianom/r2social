library(shiny)
library(r2social)

ui <- fluidPage(
  r2social.scripts(),
  sharebuttons(),
  "Hello, world!"
)


