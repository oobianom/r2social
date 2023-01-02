#' Add follow Button to any page
#'
#' Customize and include follow button in markdown and shiny apps
#'
#' @param link the link to share on social media
#' @param image the image link to share on social media
#' @param text the text to share on social media
#' @param position of buttons e.g "left","right","bottom","inline"
#' @param text.color text color e.g black
#'
#' @section Examples for r2social:
#' More examples and demo pages are located at this link -
#' \url{https://api.rpkg.net}.
#'
#' @return Add follow button to any page
#'
#' @examples
#'
#' followButton(link = "http://rpkg.net", position = "left")
#' followButton(link = "http://obianom.com", position = "right")
#' followButton(link = "http://66pharm.com", position = "inline")
#'
#' @export

followButton <- function(link,
                        image = NULL,
                        text = NULL,
                        position = c("left", "right", "inline"),
                        text.color = "black") {
  # fetch selected position
  position <- match.arg(position)

  # fetch button by type

}
