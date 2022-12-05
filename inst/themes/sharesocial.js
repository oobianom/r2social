$(function(){
  $(".r2social-link-container a").click(function(e){
    e.preventDefault();
    console.log($(this).attr('href'));
    window.open($(this).attr('href'),'_r2socialxlink','height=500,width=400,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no, status=yes');
  })
})
