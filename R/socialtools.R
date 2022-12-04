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
          "Telegram"
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
          class = "order-1 google-font margin-instagram",
          "Insta"
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
          "Whatsapp"
        )
      )
    )
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



#facebook: https://www.facebook.com/sharer/sharer.php?u=https%3A//github.com/oobianom
#linkedin: https://www.linkedin.com/shareArticle?mini=true&url=https%3A//github.com/oobianom
#twitter:https://twitter.com/intent/tweet?url=https%3A%2F%2Fgithub.com%2Foobianom&text=Check%20this%20out%20for%20me
#tumblr: http://www.tumblr.com/share?v=3&u=https%3A%2F%2Fgithub.com%2Foobianom&t=Check%20this%20out%20for%20me
#pinterest: http://pinterest.com/pin/create/button/?url=https%3A%2F%2Fgithub.com%2Foobianom&media=https%3A%2F%2Fobinna.obianom.com%2Fsite_libs%2FRPPkg-1.0%2Fassets%2Fimages%2Fprofile.jpg&description=Check%20this%20out%20for%20me
#whatsapp: whatsapp://send?text=https://github.com/oobianom
#reddit: https://reddit.com/submit?url=&title=
#baidu: https://cang.baidu.com/do/add?it=&iu=
#blogger:https://www.blogger.com/blog-this.g?u=&n=&t=
#weibo: https://service.weibo.com/share/share.php?url=&title=
#xing: https://www.xing.com/app/user?op=share&url=
#vk: https://vk.com/share.php?url=
#telegram: https://telegram.me/share/url?url=&text=
#viber: viber://forward?text=

