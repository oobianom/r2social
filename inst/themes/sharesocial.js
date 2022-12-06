/*! r2social | (c) Written by Obi Obianom, www.obianom.com | all rights reserved */
$(function(){$(".r2social-link-container a").click(function(t){t.preventDefault(),console.log($(this).attr("href")),window.open($(this).attr("href"),"_r2socialxlink","height=500,width=400,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no, status=yes")})});
