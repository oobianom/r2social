#' Display Social Links on Profile Card
#'
#' Social profile card for a any profile
#'
#' @param item list of profiles along with their image and other items
#' @return HTML of social links displayed on a card
#'
#' @examples
#'
#' profileDisplay2(
#'   list(
#'     a = list(
#'       name = "Obi Obianom",
#'       title = "Senior Scientist",
#'       image = "https://r2social.obi.obianom.com/misc/team3.jpg",
#'       social = list(
#'         list(
#'           name = "x",
#'           link = "https://x.com/R2Rpkg"
#'         ),
#'         list(
#'           name = "linkedin",
#'           link = "https://linkedin.com/oobianom"
#'         ),
#'         list(
#'           name = "website",
#'           link = "https://obianom.com"
#'         ),
#'         list(
#'           name = "youtube",
#'           link = "https://youtube.com/R2Rpkg"
#'         )
#'       )
#'     ),
#'     b = list(
#'       name = "William Hane",
#'       title = "Core Developer",
#'       image = "https://r2social.obi.obianom.com/misc/team1.jpg",
#'       social = list(list(
#'         name = "youtube",
#'         link = "https://youtube.com/R2Rpkg"
#'       ))
#'     ),
#'     c = list(
#'       name = "Maximillian Qian",
#'       title = "Code Cleaner",
#'       image = "https://r2social.obi.obianom.com/misc/team2.jpg",
#'       social = list(list(
#'         name = "facebook",
#'         link = "https://facebook.com/R2Rpkg"
#'       ))
#'     )
#'   )
#' )
#'
#' @export

profileDisplay2 <- function(item) {
  stopifnot(inherits(item, "list"))
  quickcode::init(incscripts, value = "")
  if (is.null(options()$r2social.team.add2)) {
    options(r2social.team.add2 = 1)
    incscripts <- profile2
  }

  tt1$div(
    tt1$div(
      class = "r2social-x75q-container",
      lapply(item, function(e) {
        tt1$div(
          class = "r2social-x75q-card r2social-x75q-cardx",
          style = paste0('background-image: url("',e$image,'")'),
          tt1$div(
            class = "r2social-x75q-border",
            tt1$h2(
              e$name
            ),tt1$span(
              e$title
            ),
            tt1$div(
              class = "r2social-x75q-icons",
              lapply(e$social, function(r) {
                tt1.bundle(r$name, r$link)
              })
            )
          )
        )
      })
    ),
    incscripts
  )
}










profile2 <- tt1$style(
  '.r2social-x75q-icons,.r2social-x75q-icons a,h2{color:var(--keydefault-color)}.r2social-x75q-container{--keydefault-color:white;max-height:800px;max-width:1280px;display:flex;justiify-content:space-around}.r2social-x75q-card{margin-right:10px;margin-bottom:10px;height:379px;width:300px;background:#000;border-radius:10px;transition:background .8s;overflow:hidden;box-shadow:0 70px 63px -60px #000;display:flex;justify-content:center;align-items:center;position:relative}.fa,h2{opacity:0;transition:opacity 1s}.r2social-x75q-cardx{background-position:center center;background-repeat:no-repeat;background-size:cover}.r2social-x75q-cardx:hover{background-position:left center;background-repeat:no-repeat;background-size:auto}.r2social-x75q-cardx:hover .fa,.r2social-x75q-cardx:hover h2{opacity:1}h2{font-family:"Helvetica Neue",Helvetica,Arial,sans-serif;margin:20px}.r2social-x75q-icons{position:absolute;fill:var(--keydefault-color);height:130px;top:226px;width:50px;display:flex;flex-direction:column;align-items:center;justify-content:space-around}.r2social-x75q-icons a:hover{color:#ccc}.r2social-x75q-border{height:369px;width:290px;background:0 0;border-radius:10px;transition:border 1s;position:relative}.r2social-x75q-border:hover{r2social-x75q-border:1px solid var(--keydefault-color);border:1px solid var(--keydefault-color)}' )
