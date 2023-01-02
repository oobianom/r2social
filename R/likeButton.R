#' Add Like Button to any page
#'
#' Customize and include like button in markdown and shiny apps
#'
#'
#' @param text the text to share on social media
#' @param text.color text color e.g black
#' @param count count of number of likes
#'
#' @section Examples for r2social:
#' More examples and demo pages are located at this link -
#' \url{https://api.rpkg.net}.
#'
#' @return Add like button to any page
#'
#' @examples
#'
#' likeButton()
#'
#' @export

likeButton <- function(text = "Like",text.color = "black", count= TRUE) {
  # fetch selected position
  position <- match.arg(position)

  # fetch button by type
  shiny::div(
    class="r2social-style1-heart",
    text
  )

}


