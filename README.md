# r2social R package: include social links and connect buttons in Rmarkdown and shiny applications

### Official site: https://r2social.obi.obianom.com

#### The goal of this new R package is to provide functions that allow the inclusion of share and connect buttons on any page. This has been tested in Rmarkdown documents as well as on simply Shiny applications. See the examples folder of this package.

[![CRAN\_Status\_Badge](https://img.shields.io/badge/rPkgNet-published-green)](https://rpkg.net/package/r2social) [![CRAN\_Status\_Badge](https://www.r-pkg.org/badges/version/r2social)](https://cran.r-project.org/package=r2social) [![](https://cranlogs.r-pkg.org/badges/r2social)](https://cran.r-project.org/package=r2social)
[![](https://cranlogs.r-pkg.org/badges/last-week/r2social)](https://cran.r-project.org/package=r2social)
[![](https://cranlogs.r-pkg.org/badges/grand-total/r2social)](https://cran.r-project.org/package=r2social)




![](https://r2social.obi.obianom.com/r2social2.gif)

### Installation and Library Attachment

The r2social package is available on CRAN and can be installed as shown below

`install.packages(r2social)`

Attach library 

`library(r2social)`


### Shiny application

```{r}

library(shiny)
library(r2social)

ui <- fluidPage(
  r2social.scripts(),
  shareButton(link = "https://rpkg.net", position = "left"),
  shareButton(link = "https://66pharm.com", position = "inline"),
  shareButton(link = "https://obianom.com", position = "right")
)


```

### Rmarkdown document

```{r}

library(r2social)

r2social.scripts()
shareButton(link = "https://rpkg.net", position = "left")
shareButton(link = "https://66pharm.com", position = "inline")
shareButton(link = "https://obianom.com", position = "right")



```
