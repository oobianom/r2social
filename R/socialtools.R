#' Customizable social icons
#'
#' For use in making buttons to share a page or connect to your social media
#'
#' @param link link address to share
#' @param type type of social button e.g. share or connect
#' @param image image link for pinterest only
#' @param text text link for twitter only
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
#' @param visit.us visit a direct link
#' @param link.out hyperlink to a page
#'
#' @section Examples for r2social:
#' More examples and demo pages are located at this link -
#' \url{https://rpkg.net/package/r2social}.
#'
#' @return Resizeable split screen container
#'
#' @examples
#'
#' socialButtons("https://66pharm.com")
#'
#' @export

socialButtons <- function(link,
                          type = c("share", "connect"),
                          image = NULL,
                          text = NULL,
                          position = c("left", "right", "inline"),
                          text.color = "white",
                          facebook = FALSE,
                          linkedin = FALSE,
                          twitter = FALSE,
                          tumblr = FALSE,
                          pinterest = FALSE,
                          whatsapp = FALSE,
                          reddit = FALSE,
                          instagram = FALSE,
                          blogger = FALSE,
                          weibo = FALSE,
                          tiktok = FALSE,
                          vk = FALSE,
                          telegram = FALSE,
                          youtube = FALSE,
                          visit.us = FALSE,
                          link.out = FALSE) {
  # attach scripts
  if (is.null(options()$r2socialscriptsincluded)) {
    r2social.scripts()
  }

  # fetch selected position and type
  position <- match.arg(position)
  type <- match.arg(type)

  # encode link
  link <- URLencode(link)
  url.prefix <- "https://"
  text <- ifelse(is.null(text), "", text)

  # social links
  soc.each <- list(
    list(name = "facebook", color = "#1877f2", show = facebook, link = paste0(url.prefix, "www.facebook.com/sharer/sharer.php?u=", link)),
    list(name = "linkedin", color = "#0A66C2", show = linkedin, link = paste0(url.prefix, "www.linkedin.com/shareArticle?mini=true&url=", link)),
    list(name = "twitter", color = "#1DA1F2", show = twitter, link = paste0(url.prefix, "twitter.com/intent/tweet?url=", link, "&text=", URLencode(text))),
    list(name = "tumblr", color = "#529ECC", show = tumblr, link = paste0(url.prefix, "www.tumblr.com/share?v=3&u=", link, "&t=", URLencode(text))),
    list(name = "pinterest", color = "#E60023", show = pinterest, link = paste0(url.prefix, "pinterest.com/pin/create/button/?url=", URLencode(text), "&media=", ifelse(is.null(image), "", URLencode(image)), "&description=", URLencode(text))),
    list(name = "whatsapp", color = "#24cc63", show = whatsapp, link = paste0(url.prefix, "web.whatsapp.com/send?text=", URLencode(text), " ", link)),
    list(name = "reddit", color = "#FF5700", show = reddit, link = paste0(url.prefix, "reddit.com/submit?url=", link, "&title=", URLencode(text))),
    list(name = "baidu", color = "black", show = FALSE, link = paste0(url.prefix, "cang.baidu.com/do/add?iu=", link, "&it=", URLencode(text))),
    list(name = "blogger", color = "#fc4f08", show = blogger, link = paste0(url.prefix, "www.blogger.com/blog-this.g?u=", link, "&n=", link, "&t=", URLencode(text))),
    list(name = "weibo", color = "#ce1126", show = weibo, link = paste0(url.prefix, "service.weibo.com/share/share.php?url=", link, "&title=", URLencode(text))),
    list(name = "tiktok", color = "#010101", show = tiktok, link = paste0(url.prefix, "www.tiktok.com/@addisonre?url=", link)),
    list(name = "link out", color = "#cccccc", show = link.out, link = paste0(link, "?title=", URLencode(text))),
    list(name = "visit us", color = "#cccccc", show = visit.us, link = paste0(link, "?title=", URLencode(text))),
    list(name = "instagram", color = "#C32AA3", show = instagram, link = paste0(url.prefix, "www.xing.com/app/user?op=share&url=", link)),
    list(name = "telegram", color = "#0088cc", show = telegram, link = paste0(url.prefix, "telegram.me/share/url?url=", link, "&text=", URLencode(text))),
    list(name = "vk", color = "#4a76a8", show = vk, link = paste0(url.prefix, "vk.com/share.php?url=", link)),
    list(name = "youtube", color = "#ff0000", show = youtube, link = link)
  )
  shiny::div(
    class = paste0("r2social-link-container r2social-social-", position),

    # add social icons
    lapply(soc.each, function(isc) {
      if (isc$show) {
        shiny::tags$a(
          href = ifelse(type == "share", isc$link, link),
          target = "_r2socialxlink",
          shiny::div(
            class = paste0("social-btn-", position),
            style = paste0("background-color:", isc$color),
            shiny::div(
              class = paste0("r2social-icons-", position, " r2s-ico-", gsub("[^[:alnum:]]", "-", isc$name))
            ),
            shiny::p(
              class = "order-1 google-font margin-telgram",
              style = paste0("color:", text.color),
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
    attr(tear.combo, "html") <- TRUE
    class(tear.combo) <- c("html", "character")
    # display html
    return(tear.combo)
  }
}

scr.elm <- c("style", "script", "html")
pkgn <- "r2social"
vers <- "1.0"
