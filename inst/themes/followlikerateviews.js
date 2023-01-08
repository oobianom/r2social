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









<div class="r2social-style3-like-container">
  <div class="r2social-style3-like-cnt unchecked" id="r2social-style3-like-cnt">
  <i class="r2social-style3-like-btn material-icons">thumb_up</i>
</div>
</div>



var check_status = false;
var like_cnt = $("#r2social-style3-like-cnt");
var like_parent = $(".r2social-style3-like-container");

var burst = new mojs.Burst({
  parent: like_parent,
  radius:   { 20: 60 },
  count: 15,
  angle:{0:30},
  children: {
    delay: 250,
    duration: 700,
    radius:{10: 0},
    fill:   [ '#ddca7e' ],
    easing: 		mojs.easing.bezier(.08,.69,.39,.97)
  }
});

$("#r2social-style3-like-cnt").click(function(){
  var t1 = new TimelineLite();
  var t2 = new TimelineLite();
  if(!check_status){
    t1.set(like_cnt, {scale:0});
    t1.set('.r2social-style3-like-btn', {scale: 0});
    t1.to(like_cnt, 0.6, {scale:1, background: '#ddca7e',ease: Expo.easeOut});
    t2.to('.r2social-style3-like-btn', 0.65, {scale: 1, ease: Elastic.easeOut.config(1, 0.3)}, '+=0.2');
//    t1.timeScale(5);
    check_status=true;
    //circleShape.replay();
    burst.replay();
  }
  else{
    t1.to(like_cnt, 1, {scale:1})
      .to(like_cnt, 1, {scale:1, background: 'rgba(255,255,255,0.3)', ease: Power4.easeOut});
    t1.timeScale(7);
    check_status=false;
  }

})





//STYLE 4 - HTML will be transferred to a function soon

<div class='middle-wrapper'>
  <div class='like-wrapper'>
    <a class='like-button'>
      <span class='like-icon'>
        <div class='heart-animation-1'></div>
        <div class='heart-animation-2'></div>
      </span>
      Like
    </a>
    <a class='like-button'>
      <span class='like-icon'>
        <div class='heart-animation-1'></div>
        <div class='heart-animation-2'></div>
      </span>
      Love
    </a>
    <a class='like-button'>
      <span class='like-icon'>
        <div class='heart-animation-1'></div>
        <div class='heart-animation-2'></div>
      </span>
      Favorite
    </a>
  </div>
</div>



$('a.like-button').on('click', function(e) {
  $(this).toggleClass('liked');

  setTimeout(() => {
    $(e.target).removeClass('liked')
  }, 1000)
});
