#' Add social buttons to a page
#'
#' Highly customizable social buttons for the pages
#'
#' @param ... list of social buttons to add
#' @param position position of the share buttons
#' @param bg.color background color
#' @param text.color text color
#' @param misc miscillanenous
#'
#' @section Examples for r2social:
#' More examples and demo pages are located at this link -
#' \url{https://rpkg.net/package/r2social}.
#'
#' @return Resizeable split screen container
#'
#' @examples
#'
#' sharebuttons()
#'
#' @export

sharebuttons <- function(...,
                         position = c("vertical", "horizontal"),
                         bg.color = "black",
                         text.color = "black",
                         muisc = NULL) {
  # fetch selected position
  position <- match.arg(position)

  # # preset
  # if (is.null(border.color)) border.color <- "#ffffff"
  # uniquenum <-
  #   substring(round(as.numeric(Sys.time()) * sample(7:78, 1)), 5)
  #
  # # set splitter classes
  # switch(position,
  #   vertical = {
  #     class.0 <- paste0("container", uniquenum)
  #     class.a <- paste0("left", uniquenum)
  #     class.b <- paste0("splitter", uniquenum)
  #     class.c <- paste0("right", uniquenum)
  #     class.d <- paste0("Height", uniquenum)
  #   },
  #   horizontal = {
  #     class.0 <- paste0("container-horizontal", uniquenum)
  #     class.a <- paste0("top", uniquenum)
  #     class.b <- paste0("splitter-horizontal", uniquenum)
  #     class.c <- paste0("bottom", uniquenum)
  #     class.d <- paste0("Width", uniquenum)
  #   }
  # )


  # shiny::div(shiny::div(
  #   class = holders,
  #   shiny::div(
  #     class = panel.a,
  #     style = paste0(bgcol, bg.left.color, ";"),
  #     style = ifelse(is.null(left.bg.url), "", paste0(bgurl, left.bg.url, ");")),
  #     style = ifelse(
  #       is.null(text.left.color),
  #       "",
  #       paste0(textcol, text.left.color, ";")
  #     ),
  #     left
  #   ),
  #   shiny::div(class = splitters,
  #              style = paste0(bgcol, splitter.color)),
  #   shiny::div(
  #     class = panel.b,
  #     style = paste0(bgcol, bg.right.color, ";"),
  #     style = ifelse(is.null(right.bg.url), "", paste0(bgurl, right.bg.url, ");")),
  #     style = ifelse(
  #       is.null(text.right.color),
  #       "",
  #       paste0(textcol, text.right.color, ";")
  #     ),
  #     right
  #   )
  # ),
  # cssjs)



  shiny::div(
    class = "social",

    # telegram
    shiny::tags$a(
      href = "#",
      shiny::div(
        class = "social-btn color-telegram",
        shiny::div(
          class = "icons8-telegram-app"
        ),
        shiny::p(
          class = "order-1 google-font margin-telgram",
          Telegram
        )
      )
    ),

    # facebook
    shiny::tags$a(
      href = "#",
      shiny::div(
        class = "social-btn color-instagram",
        shiny::div(
          class = "icons8-instagram"
        ),
        shiny::p(
          class = "order-1 google-font margin-telgram",
          Telegram
        )
      )
    ),

    # instagram
    shiny::tags$a(
      href = "#",
      shiny::div(
        class = "social-btn color-whatsapp",
        shiny::div(
          class = "icons8-whatsapp"
        ),
        shiny::p(
          class = "order-1 google-font margin-instagram",
          Telegram
        )
      )
    )
  )



  # <div class="share-buttons">
  #   <div class="share-button">
  #   <div class="share-button-secondary">
  #   <div class="share-button-secondary-content">
  #   share on twitter
  # </div>
  #   </div>
  #   <div class="share-button-primary">
  #   <i class="share-button-icon fa fa-twitter"></i>
  #   </div>
  #   </div>
  #
  #   <div class="share-button">
  #   <div class="share-button-secondary">
  #   <div class="share-button-secondary-content">
  #   share on facebook
  # </div>
  #   </div>
  #   <div class="share-button-primary">
  #   <i class="share-button-icon fa fa-facebook"></i>
  #   </div>
  #   </div>
  #
  #   <div class="share-button">
  #   <div class="share-button-secondary">
  #   <div class="share-button-secondary-content">
  #   pin on pinterest
  # </div>
  #   </div>
  #   <div class="share-button-primary">
  #   <i class="share-button-icon fa fa-pinterest"></i>
  #   </div>
  #   </div>
  #
  #   <div class="share-button">
  #   <div class="share-button-secondary">
  #   <div class="share-button-secondary-content">
  #   share on tumblr
  # </div>
  #   </div>
  #   <div class="share-button-primary">
  #   <i class="share-button-icon fa fa-tumblr"></i>
  #   </div>
  #   </div>
  #
  #   <div class="share-button">
  #   <div class="share-button-secondary">
  #   <div class="share-button-secondary-content">
  #   share on google+
  #   </div>
  #   </div>
  #   <div class="share-button-primary">
  #   <i class="share-button-icon fa fa-google-plus"></i>
  #   </div>
  #   </div>
  #   </div>
}





#' Add r2social scripts
#'
#' Wrap functions needed for styling of the containers
#'
#' @param name script file name
#'
#' @return scripts needed for styling
#'
#' @examples
#'
#' if (interactive()) {
#'   r2social.scripts()
#' }
#'
#' @export
#'
#'

r2social.scripts <- function(name = "sharesocial") {
  template.loc1 <- file.path(find.package(package = pkgn), "themes")
  css <- paste0(name, ".css")
  js <- paste0(name, ".js")

  if (interactive()) {
    # include scripts
    htmltools::htmlDependency(
      pkgn, vers,
      src = template.loc1,
      script = js,
      stylesheet = css,
      all_files = TRUE
    )
  } else {
    # fetch scripts
    fetch.css <- readLines(file.path(template.loc1, css))
    fetch.js <- readLines(file.path(template.loc1, js))

    # combine scripts
    combine.css.js <- c(
      "<", scr.elm[1], ">", fetch.css, "</", scr.elm[1], ">",
      "<", scr.elm[2], ">", fetch.js, "</", scr.elm[2], ">"
    )

    # collapse and set to html
    tear.combo <- paste(combine.css.js, collapse = "")
    # set to html
    attr(tear.combo, scr.elm[3]) <- TRUE
    class(tear.combo) <- c(scr.elm[4], "character")
    # display html
    return(tear.combo)
  }
}

scr.elm <- c("style", "script", "html")
pkgn <- "r2social"
vers <- "1.0"
