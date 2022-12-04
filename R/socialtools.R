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

  # preset
  if(is.null(border.color)) border.color <- "#ffffff"
  uniquenum <-
    substring(round(as.numeric(Sys.time()) * sample(7:78, 1)), 5)

  # set splitter classes
  switch(position,
         vertical = {
           class.0 <- paste0("container",uniquenum)
           class.a <- paste0("left",uniquenum)
           class.b <- paste0("splitter",uniquenum)
           class.c <- paste0("right",uniquenum)
           class.d <- paste0("Height",uniquenum)
         },
         horizontal = {
           class.0 <- paste0("container-horizontal",uniquenum)
           class.a <- paste0("top",uniquenum)
           class.b <- paste0("splitter-horizontal",uniquenum)
           class.c <- paste0("bottom",uniquenum)
           class.d <- paste0("Width",uniquenum)
         })

  holders <- paste0("r2resize-resizablediv-panel-", class.0)
  panel.a <- paste0("r2resize-resizablediv-panel-", class.a)
  splitters <- paste0("r2resize-resizablediv-", class.b)
  panel.b <- paste0("r2resize-resizablediv-panel-", class.c)

  # fetch css
  css <- ""
  theme.02.css <- paste0(template.loc(), "/sharesocial.css")
  if (file.exists(theme.02.css)) {
    css <- c(css, "<style>", readLines(theme.02.css), "</style>")
    css <- gsub("sib53lver", border.color, css)
    css <- paste(css, collapse = "")
  }


  # script fetch js
  theme.02.js <- paste0(template.loc(), "/sharesocial.js")
  script <- ""
  if (file.exists(theme.02.js)) {
    script <-
      paste(c("<script>", readLines(theme.02.js), "</script>"), collapse = " ")
    script <- gsub("resizepanelwhich", panel.a, script)
    script <- gsub("resizesplitterwhich", splitters, script)
    script <- gsub("HeWigdht", class.d, script)
  }
  # combine stylesheets and scripts
  cssjs <- paste0(css, script)
  cssjs <- gsub("87n767m08o", uniquenum, cssjs)
  # set to html
  attr(cssjs, "html") <- TRUE
  class(cssjs) <- c("html", "character")

  # set initial content
  bgcol <- "background-color:"
  bgurl <- "background-image:url("
  textcol <- "color:"
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


