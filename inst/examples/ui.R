library(shiny)
library(r2social)

ui <- fluidPage(
  r2social.scripts(),
  shareButton(),
  "Hello, world!"
)


