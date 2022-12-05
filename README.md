# r2social R package: social links and buttons for markdown and shiny applications

## Official site: https://r2tooltip.obi.obianom.com

[![CRAN\_Status\_Badge](https://img.shields.io/badge/rPkgNet-not_published-red)](https://rnetwork.obi.obianom.com/package/r2social) [![CRAN\_Status\_Badge](https://www.r-pkg.org/badges/version/r2social)](https://cran.r-project.org/package=r2social) [![](https://cranlogs.r-pkg.org/badges/r2social)](https://cran.r-project.org/package=r2social)
[![](https://cranlogs.r-pkg.org/badges/last-week/r2social)](https://cran.r-project.org/package=r2social)
[![](https://cranlogs.r-pkg.org/badges/grand-total/r2social)](https://cran.r-project.org/package=r2social)

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
