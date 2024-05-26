#' Display Github Profile
#'
#' Social card for a github profile
#'
#' @param item list of profiles
#' @note
#' Obtain GitHub API at https://github.com/settings/tokens, make sure to login
#' @export

profileDisplay1 <- function(item) {
  stopifnot(inherits(item, "list"))
  quickcode::init(incscripts, value = "")
  if(is.null(options()$r2social.team.add)){
    options(r2social.team.add=1)
    incscripts <- profile1
  }

 tt1$div(
   tt1$div(
     class="r2social-team-00430",
     tt1$div(
       class="vrow gy-4",

       lapply(item, function(e){
         tt1$div(
           class="vcol-xl-3 vcol-lg-4 vcol-md-6",
           tt1$div(
             class="vm64hy",

             tt1$img(
               src=e$image
               , class="img-fluid"
             ),
             tt1$div(
               class="vm64hy-info",
               tt1$div(
                 class="vm64hy-info-content",
                 tt1$h4(e$name),
                 tt1$span(e$title)
               ),
               tt1$div(
                 class="social",
                 lapply(e$social, function(r){
                   tt1.bundle(r$name,r$link)
                 })
               )
             )
           )
         )
       })




     )
   ),

   incscripts

 )
}





githubprofilescripts <- htmltools::tags$style(
  ".r2social-team-00430 .vm64hy .vm64hy-info-content{position:absolute;left:50px;right:0;bottom:0;transition:bottom .4s}.r2social-team-00430 .img-fluid{max-width:100%;height:auto}.r2social-team-00430 .vm64hy .social{position:absolute;left:-50px;top:0;bottom:0;width:50px;transition:left .3s ease-in-out;background:rgba(0,0,0,.6);text-align:center}.r2social-team-00430 *,.r2social-team-00430 ::after,.r2social-team-00430 ::before{box-sizing:border-box}div.r2social-team-00430{display:block;unicode-bidi:isolate}.r2social-team-00430{color:var(--default-color);background-color:var(--background-color);padding:60px 0;scroll-margin-top:90px;overflow:clip;--default-color:#ffffff}.r2social-team-00430 .vrow{display:-ms-flexbox;display:flex;-ms-flex-wrap:wrap;flex-wrap:wrap;margin-right:-15px;margin-left:-15px}.r2social-team-00430 .g-4,.r2social-team-00430 .gy-4{--bs-gutter-y:1.5rem}.r2social-team-00430 .vrow>*{flex-shrink:0;width:100%;max-width:100%;padding-right:calc(var(--bs-gutter-x) * .5);padding-left:calc(var(--bs-gutter-x) * .5);margin-top:var(--bs-gutter-y)}.r2social-team-00430 .vrow{--bs-gutter-x:1.5rem;--bs-gutter-y:0;display:flex;flex-wrap:wrap;margin-top:calc(-1 * var(--bs-gutter-y));margin-right:calc(-.5 * var(--bs-gutter-x));margin-left:calc(-.5 * var(--bs-gutter-x))}@media (min-width:768px){.r2social-team-00430 .vcol-md-6{-ms-flex:0 0 50%;flex:0 0 50%;max-width:50%}}@media (min-width:992px){.r2social-team-00430 .vcol-lg-4{-ms-flex:0 0 33.333333%;flex:0 0 33.333333%;max-width:33.333333%}}@media (min-width:1200px){.r2social-team-00430 .vcol-xl-3{-ms-flex:0 0 25%;flex:0 0 25%;max-width:25%}}.r2social-team-00430 .col,.r2social-team-00430 .vcol-1,.r2social-team-00430 .vcol-10,.r2social-team-00430 .vcol-11,.r2social-team-00430 .vcol-12,.r2social-team-00430 .vcol-2,.r2social-team-00430 .vcol-3,.r2social-team-00430 .vcol-4,.r2social-team-00430 .vcol-5,.r2social-team-00430 .vcol-6,.r2social-team-00430 .vcol-7,.r2social-team-00430 .vcol-8,.r2social-team-00430 .vcol-9,.r2social-team-00430 .vcol-auto,.r2social-team-00430 .vcol-lg,.r2social-team-00430 .vcol-lg-1,.r2social-team-00430 .vcol-lg-10,.r2social-team-00430 .vcol-lg-11,.r2social-team-00430 .vcol-lg-12,.r2social-team-00430 .vcol-lg-2,.r2social-team-00430 .vcol-lg-3,.r2social-team-00430 .vcol-lg-4,.r2social-team-00430 .vcol-lg-5,.r2social-team-00430 .vcol-lg-6,.r2social-team-00430 .vcol-lg-7,.r2social-team-00430 .vcol-lg-8,.r2social-team-00430 .vcol-lg-9,.r2social-team-00430 .vcol-lg-auto,.r2social-team-00430 .vcol-md,.r2social-team-00430 .vcol-md-1,.r2social-team-00430 .vcol-md-10,.r2social-team-00430 .vcol-md-11,.r2social-team-00430 .vcol-md-12,.r2social-team-00430 .vcol-md-2,.r2social-team-00430 .vcol-md-3,.r2social-team-00430 .vcol-md-4,.r2social-team-00430 .vcol-md-5,.r2social-team-00430 .vcol-md-6,.r2social-team-00430 .vcol-md-7,.r2social-team-00430 .vcol-md-8,.r2social-team-00430 .vcol-md-9,.r2social-team-00430 .vcol-md-auto,.r2social-team-00430 .vcol-sm,.r2social-team-00430 .vcol-sm-1,.r2social-team-00430 .vcol-sm-10,.r2social-team-00430 .vcol-sm-11,.r2social-team-00430 .vcol-sm-12,.r2social-team-00430 .vcol-sm-2,.r2social-team-00430 .vcol-sm-3,.r2social-team-00430 .vcol-sm-4,.r2social-team-00430 .vcol-sm-5,.r2social-team-00430 .vcol-sm-6,.r2social-team-00430 .vcol-sm-7,.r2social-team-00430 .vcol-sm-8,.r2social-team-00430 .vcol-sm-9,.r2social-team-00430 .vcol-sm-auto,.r2social-team-00430 .vcol-xl,.r2social-team-00430 .vcol-xl-1,.r2social-team-00430 .vcol-xl-10,.r2social-team-00430 .vcol-xl-11,.r2social-team-00430 .vcol-xl-12,.r2social-team-00430 .vcol-xl-2,.r2social-team-00430 .vcol-xl-3,.r2social-team-00430 .vcol-xl-4,.r2social-team-00430 .vcol-xl-5,.r2social-team-00430 .vcol-xl-6,.r2social-team-00430 .vcol-xl-7,.r2social-team-00430 .vcol-xl-8,.r2social-team-00430 .vcol-xl-9,.r2social-team-00430 .vcol-xl-auto{position:relative;width:100%;padding-right:15px;padding-left:15px;padding-bottom:10px}.r2social-team-00430 .section-title{color:var(--heading-color)}.r2social-team-00430 .vm64hy{text-align:center;position:relative;overflow:hidden}.r2social-team-00430 .vm64hy .vm64hy-info{opacity:0;position:absolute;inset:0;transition:.2s}.r2social-team-00430 .vm64hy .vm64hy-info-content h4{color:var(--contrast-color);font-weight:700;margin-bottom:2px;font-size:18px}.r2social-team-00430 .vm64hy .vm64hy-info-content span{font-style:italic;display:block;font-size:13px}.r2social-team-00430 .vm64hy .social a{transition:color .3s;display:block;color:var(--default-color);margin-top:15px}.r2social-team-00430 .vm64hy .social a:hover{color:var(--accent-color)}.r2social-team-00430 .vm64hy .social i{font-size:18px;margin:0 2px}.r2social-team-00430 .vm64hy:hover .vm64hy-info{background:linear-gradient(0deg,rgba(0,0,0,.9) 0,rgba(0,0,0,.8) 20%,rgba(255,255,255,0) 100%);opacity:1;transition:.4s}.r2social-team-00430 .vm64hy:hover .vm64hy-info-content{bottom:30px;transition:bottom .4s}.r2social-team-00430 .vm64hy:hover .social{left:0;transition:left .3s ease-in-out}"
)





tt1 <-htmltools::tags

tt1.bundle <- function(socialmot,href="#")
  tt1$a(alt=socialmot, href=href, htmltools::HTML(tt2[tolower(socialmot)]))

tt2 <- c(
  'website' = '<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-globe" viewBox="0 0 16 16">
                <path d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8m7.5-6.923c-.67.204-1.335.82-1.887 1.855A8 8 0 0 0 5.145 4H7.5zM4.09 4a9.3 9.3 0 0 1 .64-1.539 7 7 0 0 1 .597-.933A7.03 7.03 0 0 0 2.255 4zm-.582 3.5c.03-.877.138-1.718.312-2.5H1.674a7 7 0 0 0-.656 2.5zM4.847 5a12.5 12.5 0 0 0-.338 2.5H7.5V5zM8.5 5v2.5h2.99a12.5 12.5 0 0 0-.337-2.5zM4.51 8.5a12.5 12.5 0 0 0 .337 2.5H7.5V8.5zm3.99 0V11h2.653c.187-.765.306-1.608.338-2.5zM5.145 12q.208.58.468 1.068c.552 1.035 1.218 1.65 1.887 1.855V12zm.182 2.472a7 7 0 0 1-.597-.933A9.3 9.3 0 0 1 4.09 12H2.255a7 7 0 0 0 3.072 2.472M3.82 11a13.7 13.7 0 0 1-.312-2.5h-2.49c.062.89.291 1.733.656 2.5zm6.853 3.472A7 7 0 0 0 13.745 12H11.91a9.3 9.3 0 0 1-.64 1.539 7 7 0 0 1-.597.933M8.5 12v2.923c.67-.204 1.335-.82 1.887-1.855q.26-.487.468-1.068zm3.68-1h2.146c.365-.767.594-1.61.656-2.5h-2.49a13.7 13.7 0 0 1-.312 2.5m2.802-3.5a7 7 0 0 0-.656-2.5H12.18c.174.782.282 1.623.312 2.5zM11.27 2.461c.247.464.462.98.64 1.539h1.835a7 7 0 0 0-3.072-2.472c.218.284.418.598.597.933M10.855 4a8 8 0 0 0-.468-1.068C9.835 1.897 9.17 1.282 8.5 1.077V4z" />
              </svg>',
  'x' = '<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-twitter-x" viewBox="0 0 16 16">
                <path d="M12.6.75h2.454l-5.36 6.142L16 15.25h-4.937l-3.867-5.07-4.425 5.07H.316l5.733-6.57L0 .75h5.063l3.495 4.633L12.601.75Zm-.86 13.028h1.36L4.323 2.145H2.865z" />
              </svg>',
  'facebook' = '<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-facebook" viewBox="0 0 16 16">
                <path d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951" />
              </svg>',
  'instagram' = '<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-instagram" viewBox="0 0 16 16">
                <path d="M8 0C5.829 0 5.556.01 4.703.048 3.85.088 3.269.222 2.76.42a3.9 3.9 0 0 0-1.417.923A3.9 3.9 0 0 0 .42 2.76C.222 3.268.087 3.85.048 4.7.01 5.555 0 5.827 0 8.001c0 2.172.01 2.444.048 3.297.04.852.174 1.433.372 1.942.205.526.478.972.923 1.417.444.445.89.719 1.416.923.51.198 1.09.333 1.942.372C5.555 15.99 5.827 16 8 16s2.444-.01 3.298-.048c.851-.04 1.434-.174 1.943-.372a3.9 3.9 0 0 0 1.416-.923c.445-.445.718-.891.923-1.417.197-.509.332-1.09.372-1.942C15.99 10.445 16 10.173 16 8s-.01-2.445-.048-3.299c-.04-.851-.175-1.433-.372-1.941a3.9 3.9 0 0 0-.923-1.417A3.9 3.9 0 0 0 13.24.42c-.51-.198-1.092-.333-1.943-.372C10.443.01 10.172 0 7.998 0zm-.717 1.442h.718c2.136 0 2.389.007 3.232.046.78.035 1.204.166 1.486.275.373.145.64.319.92.599s.453.546.598.92c.11.281.24.705.275 1.485.039.843.047 1.096.047 3.231s-.008 2.389-.047 3.232c-.035.78-.166 1.203-.275 1.485a2.5 2.5 0 0 1-.599.919c-.28.28-.546.453-.92.598-.28.11-.704.24-1.485.276-.843.038-1.096.047-3.232.047s-2.39-.009-3.233-.047c-.78-.036-1.203-.166-1.485-.276a2.5 2.5 0 0 1-.92-.598 2.5 2.5 0 0 1-.6-.92c-.109-.281-.24-.705-.275-1.485-.038-.843-.046-1.096-.046-3.233s.008-2.388.046-3.231c.036-.78.166-1.204.276-1.486.145-.373.319-.64.599-.92s.546-.453.92-.598c.282-.11.705-.24 1.485-.276.738-.034 1.024-.044 2.515-.045zm4.988 1.328a.96.96 0 1 0 0 1.92.96.96 0 0 0 0-1.92m-4.27 1.122a4.109 4.109 0 1 0 0 8.217 4.109 4.109 0 0 0 0-8.217m0 1.441a2.667 2.667 0 1 1 0 5.334 2.667 2.667 0 0 1 0-5.334" />
              </svg>',
  'linkedin' = ' <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-linkedin" viewBox="0 0 16 16">
                <path d="M0 1.146C0 .513.526 0 1.175 0h13.65C15.474 0 16 .513 16 1.146v13.708c0 .633-.526 1.146-1.175 1.146H1.175C.526 16 0 15.487 0 14.854zm4.943 12.248V6.169H2.542v7.225zm-1.2-8.212c.837 0 1.358-.554 1.358-1.248-.015-.709-.52-1.248-1.342-1.248S2.4 3.226 2.4 3.934c0 .694.521 1.248 1.327 1.248zm4.908 8.212V9.359c0-.216.016-.432.08-.586.173-.431.568-.878 1.232-.878.869 0 1.216.662 1.216 1.634v3.865h2.401V9.25c0-2.22-1.184-3.252-2.764-3.252-1.274 0-1.845.7-2.165 1.193v.025h-.016l.016-.025V6.169h-2.4c.03.678 0 7.225 0 7.225z" />
              </svg>',
  'whatsapp' = '<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-whatsapp" viewBox="0 0 16 16">
                <path d="M13.601 2.326A7.85 7.85 0 0 0 7.994 0C3.627 0 .068 3.558.064 7.926c0 1.399.366 2.76 1.057 3.965L0 16l4.204-1.102a7.9 7.9 0 0 0 3.79.965h.004c4.368 0 7.926-3.558 7.93-7.93A7.9 7.9 0 0 0 13.6 2.326zM7.994 14.521a6.6 6.6 0 0 1-3.356-.92l-.24-.144-2.494.654.666-2.433-.156-.251a6.56 6.56 0 0 1-1.007-3.505c0-3.626 2.957-6.584 6.591-6.584a6.56 6.56 0 0 1 4.66 1.931 6.56 6.56 0 0 1 1.928 4.66c-.004 3.639-2.961 6.592-6.592 6.592m3.615-4.934c-.197-.099-1.17-.578-1.353-.646-.182-.065-.315-.099-.445.099-.133.197-.513.646-.627.775-.114.133-.232.148-.43.05-.197-.1-.836-.308-1.592-.985-.59-.525-.985-1.175-1.103-1.372-.114-.198-.011-.304.088-.403.087-.088.197-.232.296-.346.1-.114.133-.198.198-.33.065-.134.034-.248-.015-.347-.05-.099-.445-1.076-.612-1.47-.16-.389-.323-.335-.445-.34-.114-.007-.247-.007-.38-.007a.73.73 0 0 0-.529.247c-.182.198-.691.677-.691 1.654s.71 1.916.81 2.049c.098.133 1.394 2.132 3.383 2.992.47.205.84.326 1.129.418.475.152.904.129 1.246.08.38-.058 1.171-.48 1.338-.943.164-.464.164-.86.114-.943-.049-.084-.182-.133-.38-.232" />
              </svg>',
  'tiktok' = '<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-tiktok" viewBox="0 0 16 16">
                <path d="M9 0h1.98c.144.715.54 1.617 1.235 2.512C12.895 3.389 13.797 4 15 4v2c-1.753 0-3.07-.814-4-1.829V11a5 5 0 1 1-5-5v2a3 3 0 1 0 3 3z" />
              </svg>',
  'telegram' = '<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-telegram" viewBox="0 0 16 16">
                <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0M8.287 5.906q-1.168.486-4.666 2.01-.567.225-.595.442c-.03.243.275.339.69.47l.175.055c.408.133.958.288 1.243.294q.39.01.868-.32 3.269-2.206 3.374-2.23c.05-.012.12-.026.166.016s.042.12.037.141c-.03.129-1.227 1.241-1.846 1.817-.193.18-.33.307-.358.336a8 8 0 0 1-.188.186c-.38.366-.664.64.015 1.088.327.216.589.393.85.571.284.194.568.387.936.629q.14.092.27.187c.331.236.63.448.997.414.214-.02.435-.22.547-.82.265-1.417.786-4.486.906-5.751a1.4 1.4 0 0 0-.013-.315.34.34 0 0 0-.114-.217.53.53 0 0 0-.31-.093c-.3.005-.763.166-2.984 1.09" />
              </svg>',
  'youtube' = '<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-youtube" viewBox="0 0 16 16">
                <path d="M8.051 1.999h.089c.822.003 4.987.033 6.11.335a2.01 2.01 0 0 1 1.415 1.42c.101.38.172.883.22 1.402l.01.104.022.26.008.104c.065.914.073 1.77.074 1.957v.075c-.001.194-.01 1.108-.082 2.06l-.008.105-.009.104c-.05.572-.124 1.14-.235 1.558a2.01 2.01 0 0 1-1.415 1.42c-1.16.312-5.569.334-6.18.335h-.142c-.309 0-1.587-.006-2.927-.052l-.17-.006-.087-.004-.171-.007-.171-.007c-1.11-.049-2.167-.128-2.654-.26a2.01 2.01 0 0 1-1.415-1.419c-.111-.417-.185-.986-.235-1.558L.09 9.82l-.008-.104A31 31 0 0 1 0 7.68v-.123c.002-.215.01-.958.064-1.778l.007-.103.003-.052.008-.104.022-.26.01-.104c.048-.519.119-1.023.22-1.402a2.01 2.01 0 0 1 1.415-1.42c.487-.13 1.544-.21 2.654-.26l.17-.007.172-.006.086-.003.171-.007A100 100 0 0 1 7.858 2zM6.4 5.209v4.818l4.157-2.408z" />
              </svg>'
)


profile1 <- tt1$style(
  ".r2social-team-00430 .vm64hy .vm64hy-info-content{position:absolute;left:50px;right:0;bottom:0;transition:bottom .4s}.r2social-team-00430 .img-fluid{max-width:100%;height:auto}.r2social-team-00430 .vm64hy .social{position:absolute;left:-50px;top:0;bottom:0;width:50px;transition:left .3s ease-in-out;background:rgba(0,0,0,.6);text-align:center}.r2social-team-00430 *,.r2social-team-00430 ::after,.r2social-team-00430 ::before{box-sizing:border-box}div.r2social-team-00430{display:block;unicode-bidi:isolate}.r2social-team-00430{color:var(--default-color);background-color:var(--background-color);padding:60px 0;scroll-margin-top:90px;overflow:clip;--default-color:#ffffff}.r2social-team-00430 .vrow{display:-ms-flexbox;display:flex;-ms-flex-wrap:wrap;flex-wrap:wrap;margin-right:-15px;margin-left:-15px}.r2social-team-00430 .g-4,.r2social-team-00430 .gy-4{--bs-gutter-y:1.5rem}.r2social-team-00430 .vrow>*{flex-shrink:0;width:100%;max-width:100%;padding-right:calc(var(--bs-gutter-x) * .5);padding-left:calc(var(--bs-gutter-x) * .5);margin-top:var(--bs-gutter-y)}.r2social-team-00430 .vrow{--bs-gutter-x:1.5rem;--bs-gutter-y:0;display:flex;flex-wrap:wrap;margin-top:calc(-1 * var(--bs-gutter-y));margin-right:calc(-.5 * var(--bs-gutter-x));margin-left:calc(-.5 * var(--bs-gutter-x))}@media (min-width:768px){.r2social-team-00430 .vcol-md-6{-ms-flex:0 0 50%;flex:0 0 50%;max-width:50%}}@media (min-width:992px){.r2social-team-00430 .vcol-lg-4{-ms-flex:0 0 33.333333%;flex:0 0 33.333333%;max-width:33.333333%}}@media (min-width:1200px){.r2social-team-00430 .vcol-xl-3{-ms-flex:0 0 25%;flex:0 0 25%;max-width:25%}}.r2social-team-00430 .col,.r2social-team-00430 .vcol-1,.r2social-team-00430 .vcol-10,.r2social-team-00430 .vcol-11,.r2social-team-00430 .vcol-12,.r2social-team-00430 .vcol-2,.r2social-team-00430 .vcol-3,.r2social-team-00430 .vcol-4,.r2social-team-00430 .vcol-5,.r2social-team-00430 .vcol-6,.r2social-team-00430 .vcol-7,.r2social-team-00430 .vcol-8,.r2social-team-00430 .vcol-9,.r2social-team-00430 .vcol-auto,.r2social-team-00430 .vcol-lg,.r2social-team-00430 .vcol-lg-1,.r2social-team-00430 .vcol-lg-10,.r2social-team-00430 .vcol-lg-11,.r2social-team-00430 .vcol-lg-12,.r2social-team-00430 .vcol-lg-2,.r2social-team-00430 .vcol-lg-3,.r2social-team-00430 .vcol-lg-4,.r2social-team-00430 .vcol-lg-5,.r2social-team-00430 .vcol-lg-6,.r2social-team-00430 .vcol-lg-7,.r2social-team-00430 .vcol-lg-8,.r2social-team-00430 .vcol-lg-9,.r2social-team-00430 .vcol-lg-auto,.r2social-team-00430 .vcol-md,.r2social-team-00430 .vcol-md-1,.r2social-team-00430 .vcol-md-10,.r2social-team-00430 .vcol-md-11,.r2social-team-00430 .vcol-md-12,.r2social-team-00430 .vcol-md-2,.r2social-team-00430 .vcol-md-3,.r2social-team-00430 .vcol-md-4,.r2social-team-00430 .vcol-md-5,.r2social-team-00430 .vcol-md-6,.r2social-team-00430 .vcol-md-7,.r2social-team-00430 .vcol-md-8,.r2social-team-00430 .vcol-md-9,.r2social-team-00430 .vcol-md-auto,.r2social-team-00430 .vcol-sm,.r2social-team-00430 .vcol-sm-1,.r2social-team-00430 .vcol-sm-10,.r2social-team-00430 .vcol-sm-11,.r2social-team-00430 .vcol-sm-12,.r2social-team-00430 .vcol-sm-2,.r2social-team-00430 .vcol-sm-3,.r2social-team-00430 .vcol-sm-4,.r2social-team-00430 .vcol-sm-5,.r2social-team-00430 .vcol-sm-6,.r2social-team-00430 .vcol-sm-7,.r2social-team-00430 .vcol-sm-8,.r2social-team-00430 .vcol-sm-9,.r2social-team-00430 .vcol-sm-auto,.r2social-team-00430 .vcol-xl,.r2social-team-00430 .vcol-xl-1,.r2social-team-00430 .vcol-xl-10,.r2social-team-00430 .vcol-xl-11,.r2social-team-00430 .vcol-xl-12,.r2social-team-00430 .vcol-xl-2,.r2social-team-00430 .vcol-xl-3,.r2social-team-00430 .vcol-xl-4,.r2social-team-00430 .vcol-xl-5,.r2social-team-00430 .vcol-xl-6,.r2social-team-00430 .vcol-xl-7,.r2social-team-00430 .vcol-xl-8,.r2social-team-00430 .vcol-xl-9,.r2social-team-00430 .vcol-xl-auto{position:relative;width:100%;padding-right:15px;padding-left:15px;padding-bottom:10px}.r2social-team-00430 .section-title{color:var(--heading-color)}.r2social-team-00430 .vm64hy{text-align:center;position:relative;overflow:hidden}.r2social-team-00430 .vm64hy .vm64hy-info{opacity:0;position:absolute;inset:0;transition:.2s}.r2social-team-00430 .vm64hy .vm64hy-info-content h4{color:var(--contrast-color);font-weight:700;margin-bottom:2px;font-size:18px}.r2social-team-00430 .vm64hy .vm64hy-info-content span{font-style:italic;display:block;font-size:13px}.r2social-team-00430 .vm64hy .social a{transition:color .3s;display:block;color:var(--default-color);margin-top:15px}.r2social-team-00430 .vm64hy .social a:hover{color:var(--accent-color)}.r2social-team-00430 .vm64hy .social i{font-size:18px;margin:0 2px}.r2social-team-00430 .vm64hy:hover .vm64hy-info{background:linear-gradient(0deg,rgba(0,0,0,.9) 0,rgba(0,0,0,.8) 20%,rgba(255,255,255,0) 100%);opacity:1;transition:.4s}.r2social-team-00430 .vm64hy:hover .vm64hy-info-content{bottom:30px;transition:bottom .4s}.r2social-team-00430 .vm64hy:hover .social{left:0;transition:left .3s ease-in-out}"
)
