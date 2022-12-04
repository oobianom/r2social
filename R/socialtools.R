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

  if(is.null(options()$r2socialscriptsincluded))
    r2social.scripts()

  # fetch selected position
  position <- match.arg(position)


  soc.each <- list(
    list(name = "facebook", color = "#1877f2", show = TRUE, link="https://www.facebook.com/sharer/sharer.php?u=https%3A//github.com/oobianom"),
    list(name = "linkedin", color = "#0A66C2", show = TRUE, link="https://www.linkedin.com/shareArticle?mini=true&url=https%3A//github.com/oobianom"),
    list(name = "twitter", color = "#1DA1F2", show = TRUE, link="https://twitter.com/intent/tweet?url=https%3A%2F%2Fgithub.com%2Foobianom&text=Check%20this%20out%20for%20me"),
    list(name = "tumblr", color = "#529ECC", show = TRUE, link="https://www.tumblr.com/share?v=3&u=https%3A%2F%2Fgithub.com%2Foobianom&t=Check%20this%20out%20for%20me"),
    list(name = "pinterest", color = "#E60023", show = TRUE, link="https://pinterest.com/pin/create/button/?url=https%3A%2F%2Fgithub.com%2Foobianom&media=https%3A%2F%2Fobinna.obianom.com%2Fsite_libs%2FRPPkg-1.0%2Fassets%2Fimages%2Fprofile.jpg&description=Check%20this%20out%20for%20me"),
    list(name = "whatsapp", color = "#24cc63", show = TRUE, link="https://whatsapp://send?text=https://github.com/oobianom"),
    list(name = "reddit", color = "#FF5700", show = TRUE, link="https://reddit.com/submit?url=&title="),
    list(name = "baidu", color = "black", show = FALSE, link="https://cang.baidu.com/do/add?it=&iu="),
    list(name = "blogger", color = "#3b5998", show = TRUE, link="https://www.blogger.com/blog-this.g?u=&n=&t="),
    list(name = "weibo", color = "#3b5998", show = TRUE, link="https://service.weibo.com/share/share.php?url=&title="),
    list(name = "tiktok", color = "#010101", show = TRUE, link="https://service.weibo.com/share/share.php?url=&title="),
    list(name = "instagram", color = "#C32AA3", show = TRUE, link="https://www.xing.com/app/user?op=share&url="),
    list(name = "telegram", color = "#0088cc", show = TRUE, link="https://telegram.me/share/url?url=&text="),
    list(name = "vk", color = "#4a76a8", show = TRUE, link="https://vk.com/share.php?url="),
    list(name = "youtube", color = "#ff0000", show = TRUE, link="https://viber://forward?text=")
  )
  shiny::div(
    class = "r2social-social",

    # add social icons
    lapply(soc.each, function(isc)
      if(isc$show)
    shiny::tags$a(
      href = isc$link,
      shiny::div(
        class = "social-btn color-telegram",
        style =paste0("background-color:",isc$color),
        shiny::div(
          class = paste0("r2social-icons1 r2s-ico-",isc$name)
        ),
        shiny::p(
          class = "order-1 google-font margin-telgram",
          isc$name
        )
      )
    ))
  )



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
  #if(is.null(options()$r2socialscriptsincluded)) return()
  #options(r2socialscriptsincluded = TRUE)

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


