$(document).ready(function(){
  var url = window.location;
  $('ul.nav a[href="'+ url +'"]').parent().addClass('active');
  $('ul.nav a').filter(function() {
       return this.href == url;
  }).parent().addClass('active');

  $('.ckeditor').ckeditor({
    // optional config
  });

  var urlPath = window.location.pathname;
  if(urlPath === '/login'){
    console.log(urlPath)
    $('footer').hide();
  }

  if(urlPath === '/signup'){
    console.log(urlPath)
    $('footer').hide();
  }

});
