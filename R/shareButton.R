#' Add social buttons to share a page
#'
#' Customize social buttons available for sharing of pages
#'
#' @param link the link to share on social media
#' @param image the image link to share on social media
#' @param text the text to share on social media
#' @param position of buttons e.g "left","right","bottom","inline"
#' @param text.color text color e.g black
#' @param plain logical. with or without background
#' @param facebook share on Facebook
#' @param linkedin share on Linkedin
#' @param x share on Twitter
#' @param tumblr share on Tumblr
#' @param pinterest share on Pinterest
#' @param whatsapp share on Whatsapp
#' @param reddit share on Reddit
#' @param blogger share on Blogger
#' @param weibo share on Weibo
#' @param tiktok share on Tiktok
#' @param vk share on VK or VKontakte
#' @param telegram share on Telegram
#' @param visit.us share on custom link
#' @param bg.col background color for the icons.
#'
#' @note
#' 'bg.col' argument is only functional if 'plain' argument is set to false
#'
#' @section Examples for r2social:
#' More examples and demo pages are located at this link -
#' \url{https://r2social.obi.obianom.com}.
#'
#' @return Share link button via social media platforms
#'
#' @examples
#'
#' shareButton(link = "http://rpkg.net", position = "left")
#' shareButton(link = "http://obianom.com", position = "right")
#' shareButton(link = "https://shinyappstore.com/", plain = TRUE, position = "inline") #plain styling
#' shareButton(link = "https://shinyappstore.com/", plain = FALSE, position = "inline") #beautified
#'
#' @export

shareButton <- function(link,
                        image = NULL,
                        text = NULL,
                        position = c("left", "right", "inline"),
                        text.color = "black",
                        plain = FALSE,
                        facebook = TRUE,
                        linkedin = TRUE,
                        bg.col = NULL,
                        x = FALSE,
                        tumblr = FALSE,
                        pinterest = FALSE,
                        whatsapp = FALSE,
                        reddit = FALSE,
                        blogger = FALSE,
                        weibo = FALSE,
                        tiktok = FALSE,
                        vk = FALSE,
                        telegram = FALSE,
                        visit.us = FALSE) {
  # fetch selected position
  position <- match.arg(position)

  # fetch button by type
  socialButtons(link = link,
    type = "share",
    image = image,
    text = text,
    plain = plain,
    bg.col = bg.col,
    position = position,
    text.color = text.color,
    facebook = facebook,
    linkedin = linkedin,
    x = x,
    tumblr = tumblr,
    pinterest = pinterest,
    whatsapp = whatsapp,
    reddit = reddit,
    blogger = blogger,
    weibo = weibo,
    tiktok = tiktok,
    vk = vk,
    visit.us = visit.us,
    telegram = telegram
  )
}
