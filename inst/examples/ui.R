library(shiny)
library(r2social)


ui <- fluidPage(
  r2social.scripts(),
  profileDisplay1(list(
    a = list(
      name = "Obi Obianom",
      title = "Senior Scientist",
      image = "https://r2social.obi.obianom.com/misc/team3.jpg",
      social = list(
        list(name = "x",
             link = "https://x.com/R2Rpkg"),
        list(name = "linkedin",
             link = "https://linkedin.com/oobianom"),
        list(name = "website",
             link = "https://obianom.com"),
        list(name = "youtube",
             link = "https://youtube.com/R2Rpkg")
      )
    ),
    b = list(
      name = "William Hane",
      title = "Core Developer",
      image = "https://r2social.obi.obianom.com/misc/team1.jpg",
      social = list(list(name = "youtube",
                         link = "https://youtube.com/R2Rpkg"))
    )
  )),
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
