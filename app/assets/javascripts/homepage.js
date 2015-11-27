$('#first-one').click(function(){
  console.log('test')
  $(this).removeClass('grey-one').addClass('blue-one')
  $('#second-one').removeClass('blue-one').addClass('grey-one')
});
$('#second-one').click(function(){
  $(this).removeClass('grey-one').addClass('blue-one')
  $('#first-one').removeClass('blue-one').addClass('grey-one')
});


$(function() {
  $('a[href*=#]:not([data-toggle="tab"])').click(function() {
    if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
      var target = $(this.hash);
      target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
      if (target.length) {
        $('html,body').animate({
          scrollTop: target.offset().top
        }, 1000);
        return false;
      }
    }
  });
});
