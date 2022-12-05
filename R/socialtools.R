#' Add social buttons to share a page
#'
#' Customize social buttons available for sharing of pages
#'
#' @param link,
#' @param image = NULL,
#' @param text = NULL,
#' @param position = c("left","right","bottom","inline"),
#' @param text.color = "black",
#' @param facebook share on Facebook
#' @param linkedin share on Linkedin
#' @param twitter share on Twitter
#' @param tumblr share on Tumblr
#' @param pinterest share on Pinterest
#' @param instagram share on Instagram
#' @param whatsapp share on Whatsapp
#' @param reddit share on Reddit
#' @param blogger share on blogger
#' @param weibo share on weibo
#' @param tiktok share on tiktok
#' @param vk share on VK or VKontakte
#' @param telegram share on Telegram
#' @param youtube share on Youtube
#'
#' @section Examples for r2social:
#' More examples and demo pages are located at this link -
#' \url{https://rpkg.net/package/r2social}.
#'
#' @return Resizeable split screen container
#'
#' @examples
#'
#' shareButton()
#'
#' @export

shareButton <- function(link,
                        image = NULL,
                        text = NULL,
                        position = c("left", "right", "inline"),
                        text.color = "black",
                        facebook = TRUE,
                        linkedin = TRUE,
                        twitter = TRUE,
                        tumblr = TRUE,
                        pinterest = TRUE,
                        whatsapp = TRUE,
                        reddit = TRUE,
                        instagram = TRUE,
                        blogger = TRUE,
                        weibo = TRUE,
                        tiktok = TRUE,
                        vk = TRUE,
                        telegram = TRUE,
                        youtube = TRUE) {
  if (is.null(options()$r2socialscriptsincluded)) {
    r2social.scripts()
  }

  # fetch selected position
  position <- match.arg(position)


  soc.each <- list(
    list(name = "facebook", color = "#1877f2", show = facebook, link = "https://www.facebook.com/sharer/sharer.php?u=https%3A//github.com/oobianom"),
    list(name = "linkedin", color = "#0A66C2", show = linkedin, link = "https://www.linkedin.com/shareArticle?mini=true&url=https%3A//github.com/oobianom"),
    list(name = "twitter", color = "#1DA1F2", show = twitter, link = "https://twitter.com/intent/tweet?url=https%3A%2F%2Fgithub.com%2Foobianom&text=Check%20this%20out%20for%20me"),
    list(name = "tumblr", color = "#529ECC", show = tumblr, link = "https://www.tumblr.com/share?v=3&u=https%3A%2F%2Fgithub.com%2Foobianom&t=Check%20this%20out%20for%20me"),
    list(name = "pinterest", color = "#E60023", show = pinterest, link = "https://pinterest.com/pin/create/button/?url=https%3A%2F%2Fgithub.com%2Foobianom&media=https%3A%2F%2Fobinna.obianom.com%2Fsite_libs%2FRPPkg-1.0%2Fassets%2Fimages%2Fprofile.jpg&description=Check%20this%20out%20for%20me"),
    list(name = "whatsapp", color = "#24cc63", show = whatsapp, link = "https://whatsapp://send?text=https://github.com/oobianom"),
    list(name = "reddit", color = "#FF5700", show = reddit, link = "https://reddit.com/submit?url=&title="),
    list(name = "baidu", color = "black", show = FALSE, link = "https://cang.baidu.com/do/add?it=&iu="),
    list(name = "blogger", color = "#fc4f08", show = blogger, link = "https://www.blogger.com/blog-this.g?u=&n=&t="),
    list(name = "weibo", color = "#ce1126", show = weibo, link = "https://service.weibo.com/share/share.php?url=&title="),
    list(name = "tiktok", color = "#010101", show = tiktok, link = "https://service.weibo.com/share/share.php?url=&title="),
    list(name = "instagram", color = "#C32AA3", show = instagram, link = "https://www.xing.com/app/user?op=share&url="),
    list(name = "telegram", color = "#0088cc", show = telegram, link = "https://telegram.me/share/url?url=&text="),
    list(name = "vk", color = "#4a76a8", show = vk, link = "https://vk.com/share.php?url="),
    list(name = "youtube", color = "#ff0000", show = youtube, link = "https://viber://forward?text=")
  )
  shiny::div(
    class = paste0("r2social-social-",position),

    # add social icons
    lapply(soc.each, function(isc) {
      if (isc$show) {
        shiny::tags$a(
          href = isc$link,
          shiny::div(
            class = paste0("social-btn-",position),
            style = paste0("background-color:", isc$color),
            shiny::div(
              class = paste0("r2social-icons-",position," r2s-ico-", isc$name)
            ),
            shiny::p(
              class = "order-1 google-font margin-telgram",
              isc$name
            )
          )
        )
      }
    })
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
  # if(is.null(options()$r2socialscriptsincluded)) return()
  # options(r2socialscriptsincluded = TRUE)

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
