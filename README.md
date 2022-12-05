# r2social R package: social links and buttons for markdown and shiny applications

under development...

```{r}

library(shiny)
library(r2social)


ui <- fluidPage(
  r2social.scripts(),
  shareButton(position = "left"),
  shareButton(position = "right")
)


```

![](https://r2tooltip.obi.obianom.com/r2social.gif)
