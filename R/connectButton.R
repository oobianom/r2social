#' Add Connect with us buttons
#'
#' Buttons for others to connect socially to you
#'
#' @param link the direct link to navigate to
#' @param image image link only for pinterest
#' @param text text link for twitter
#' @param position position of buttons e.g "left","right","bottom","inline"
#' @param display.inline TRUE or FALSE if the button should be inline
#' @param visit.us visit custom link
#' @param link.out visit custom link
#' @param facebook link to an account on Facebook
#' @param linkedin link to an account on Linkedin
#' @param twitter link to an account on Twitter
#' @param tumblr link to an account on Tumblr
#' @param pinterest link to an account on Pinterest
#' @param instagram link to an account on Instagram
#' @param whatsapp link to an account on Whatsapp
#' @param reddit link to an account on Reddit
#' @param blogger link to an account on blogger
#' @param weibo link to an account on weibo
#' @param tiktok link to an account on tiktok
#' @param vk link to an account on VK or VKontakte
#' @param telegram link to an account on Telegram
#' @param youtube link to an account on Youtube
#'
#' @section Examples for r2social:
#' More examples and demo pages are located at this link -
#' \url{https://rpkg.net/package/r2social}.
#'
#' @return Connect with me/us button via social links
#'
#' @examples
#' connectButton(
#' link = "//rpkg.net",
#' visit.us = TRUE,
#' position = "left")
#' connectButton(
#' link = "//www.linkedin.com/in/oobianom",
#' linkedin = TRUE,
#' position = "right")
#' connectButton(
#' link = "//twitter.com/R2Rpkg",
#' twitter = TRUE, position = "inline")
#'
#' @export

connectButton <- function(link,
                          image = NULL,
                          text = NULL,
                          position = c("left", "right", "inline"),
                          display.inline = TRUE,
                          link.out = TRUE,
                          visit.us = FALSE,
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
                          youtube = FALSE) {
  # fetch selected position
  position <- match.arg(position)

  # fetch button by type
  shiny::div(
    style = paste0("display:", ifelse(display.inline, "inline-block", "unset")),
    socialButtons(
      link = link,
      type = "connect",
      image = image,
      text = text,
      position = position,
      text.color = "white",
      facebook = facebook,
      linkedin = linkedin,
      twitter = twitter,
      tumblr = tumblr,
      pinterest = pinterest,
      whatsapp = whatsapp,
      reddit = reddit,
      instagram = instagram,
      blogger = blogger,
      weibo = weibo,
      tiktok = tiktok,
      vk = vk,
      link.out = link.out,
      visit.us = visit.us,
      telegram = telegram,
      youtube = youtube
    )
  )
}
