# r2social R package: include social links and connect buttons in Rmarkdown and shiny applications

### Official site: https://r2social.obi.obianom.com

##### View a live demo: [r2social demo](https://rstudio-pubs-static.s3.amazonaws.com/979733_c818519050184128a6a74a27b8c84156.html)

##### The goal of this new R package is to provide functions that allow the inclusion of share and connect buttons on any page. This has been tested in Rmarkdown documents as well as on simply Shiny applications. See the examples folder of this package.

[![CRAN\_Status\_Badge](https://img.shields.io/badge/rPkgNet-published-green)](https://rpkg.net/package/r2social) [![CRAN\_Status\_Badge](https://www.r-pkg.org/badges/version/r2social)](https://cran.r-project.org/package=r2social) [![](https://cranlogs.r-pkg.org/badges/r2social)](https://cran.r-project.org/package=r2social)
[![](https://cranlogs.r-pkg.org/badges/last-week/r2social)](https://cran.r-project.org/package=r2social)
[![](https://cranlogs.r-pkg.org/badges/grand-total/r2social)](https://cran.r-project.org/package=r2social)




![](https://r2social.obi.obianom.com/r2social2.gif)

## Installation and Library Attachment

The r2social package is available on CRAN and can be installed as shown below

`install.packages(r2social)`

Attach library 

```{r}

library(shiny)
library(r2social)

```

## Feature 2: Profile card with social links

### Shiny application

```{r}
ui <- fluidPage(

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
))


)

```

### Rmarkdown application

```{r}

profileDisplay1(list(
  a = list(
    name = "Obi Obianom",
    title = "Senior Scientist",
    image = "https://r2social.obi.obianom.com/misc/team2.jpg",
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
    image = "https://r2social.obi.obianom.com/misc/team4.jpg",
    social = list(list(name = "youtube",
                       link = "https://youtube.com/R2Rpkg"))
  )
))

```

## Feature 1: Add social links on the sides

### Shiny application

```{r}

#ex 1 - to share various links
ui <- fluidPage(
  r2social.scripts(),
  shareButton(link = "https://rpkg.net", position = "left"),
  shareButton(link = "https://shinyappstore.com", position = "inline"),
  shareButton(link = "https://shinyappstore.com", plain = T, position = "inline"), #plain style
  shareButton(link = "https://obianom.com", position = "right")
)

#ex 2 - to link your page to specific domain online
ui <- fluidPage(
  r2social.scripts(),
  # to my personal website
  connectButton(link = "https://obianom.com", position = "inline",link.out = FALSE, visit.us = TRUE),

  # to my Twitter/X page
  connectButton(link = "https://x.com/R2Rpkg", position = "inline",link.out = FALSE, x = TRUE)
)


```

### Rmarkdown document

```{r}

library(r2social)

r2social.scripts()
shareButton(link = "https://rpkg.net", position = "left")
shareButton(link = "https://shinyappstore.com", position = "inline")
shareButton(link = "https://obianom.com", position = "right")





```
