$(function(){
  $(".r2social-link-container").click(function(e){
    e.preventDefault();
    alert("obinna")
    window.open($(this).attr('href'),'popUpWindow','height=500,width=400,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no, status=yes');
  })
})
