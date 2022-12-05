# r2social R package: social links and buttons for markdown and shiny applications

under development...

```{r}

library(shiny)
library(r2social)


ui <- fluidPage(
  r2social.scripts(),
  shareButton(link = "https://rpkg.net", position = "left"),
  shareButton(link = "https://66pharm.com", position = "inline")
  shareButton(link = "https://obianom.com", position = "right")
)


```

![](https://r2social.obi.obianom.com/r2social2.gif)
