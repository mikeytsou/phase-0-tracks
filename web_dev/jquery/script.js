window.onload = function() {

$(document).ready(function() {
  $("h1").fadeOut(1000).fadeIn(1000);

  $(".nav-menu__item").click(function() {
    $(this).fadeOut(500);
    $(this).fadeIn(500);
  });

  $(".skills-table__body tr").hover(
  function() {
    $(this).addClass("hover");
  },
  function() {
    $(this).removeClass("hover");
  });
});

}








