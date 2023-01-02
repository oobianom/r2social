#' Add rating Button to any page
#'
#' Customize and include rating button in markdown and shiny apps
#'
#'
#' @param text the text to share on social media
#' @param text.color text color e.g black
#' @param count count of number of ratings
#'
#' @section Examples for r2social:
#' More examples and demo pages are located at this link -
#' \url{https://api.rpkg.net}.
#'
#' @return Add rating button to any page
#'
#' @examples
#'
#' ratingButton()
#'
#' @export

ratingButton <- function(text = "rating",text.color = "black", count= TRUE) {
  # fetch selected position
  position <- match.arg(position)

  # fetch button by type
  shiny::div(
    class="r2social-style1-heart",
    text
  )

}


