jQuery(function($) {
  var current_location = window.location.pathname;

  if (current_location.indexOf("/stores") == 0) {
    $(".topnav a#stores").addClass('active');
  } else {
    $(".topnav a#home").addClass('active');
  }
});