$(function() {
  $(".r2social-style1-heart").on("click", function() {
    $(this).toggleClass("is-active");
  });
});






  <button class="r2social-style2-btn-secondary r2social-style2-review" onclick="toggle(this)">
     <i class="fa fa-heart" aria-hidden="true"></i> Like it ?
   </button>

$('.r2social-style2-review').on('click', function() {
  if ($(this).html() == '<i class="fa fa-heart" aria-hidden="true"></i> You liked it!') {
    $(this).html('<i class="fa fa-heart" aria-hidden="true"></i> Like it ?');
  } else {
    $(this).html('<i class="fa fa-heart" aria-hidden="true"></i> You liked it!');
  }
});
