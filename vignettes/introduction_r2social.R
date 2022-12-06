## ----eval=FALSE---------------------------------------------------------------
#  
#  library(shiny)
#  library(r2social)
#  
#  ui <- fluidPage(
#  
#    r2social.scripts(),
#  
#    #include share buttons
#    shareButton(link = "http://rpkg.net", position = "left"),
#    shareButton(link = "http://obianom.com", position = "right"),
#    shareButton(link = "http://google.com", position = "inline"),
#  
#    #include customized connect buttons where you specify direct links
#    connectButton(link = "http://rpkg.net", visit.us=TRUE, position = "inline"),
#    connectButton(link = "https://www.linkedin.com/in/oobianom", linkedin=TRUE, position = "inline"),
#    connectButton(link = "https://twitter.com/R2Rpkg", twitter=TRUE, position = "inline",display.inline = FALSE),
#    connectButton(link = "https://twitter.com/R2Rpkg", twitter=TRUE, position = "inline",display.inline = FALSE)
#  )
#  
#  

## ----eval=FALSE---------------------------------------------------------------
#  
#  library(r2social)
#  
#  r2social.scripts()
#  
#  # include share buttons
#  shareButton(link = "http://rpkg.net", position = "left")
#  shareButton(link = "http://obianom.com", position = "right")
#  shareButton(link = "http://66pharm.com", position = "inline")
#  
#  # include customized connect buttons where you specify direct links
#  connectButton(link = "http://rpkg.net", visit.us = TRUE, position = "inline")
#  connectButton(link = "https://www.linkedin.com/in/oobianom", linkedin = TRUE, position = "inline")
#  connectButton(link = "https://twitter.com/R2Rpkg", twitter = TRUE, position = "inline", display.inline = FALSE)
#  connectButton(link = "https://twitter.com/R2Rpkg", twitter = TRUE, position = "inline", display.inline = FALSE)
#  
#  
#  

