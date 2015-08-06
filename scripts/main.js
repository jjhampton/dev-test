(function(){
  'use strict';

  $(document).ready(function() {

    //reference credit: http://www.hongkiat.com/blog/css-sticky-position/
    var stickyNavTop = 500;

    var stickyNav = function(){
      var scrollTop = $(window).scrollTop();

      if (scrollTop > stickyNavTop) {
        $('.sticky-nav').removeClass('hidden');
        $('.sticky-nav').addClass('sticky');
      } else {
        $('.sticky-nav').addClass('hidden');
        $('.sticky-nav').removeClass('sticky');
      }
    };

    stickyNav();

    $(window).scroll(function() {
        stickyNav();
    });

    // event handlers to scroll to top of page when clicking stick nav button or logo
    $('.sticky-nav-button').on('click', function() {
      $('body').scrollTop(0);
    });

    $('.sticky-logo').on('click', function() {
      $('body').scrollTop(0);
    });

    $('.sticky-nav-brand').on('click', function() {
      $('body').scrollTop(0);
    });

    // event handler to process the form
    $('invite-form').submit(function(event) {

        // get form data
        var formData = {
            'email': $('input[name=email]').val(),
        };
        // process the form
        $.ajax({
            type: 'POST',
            url: 'signup.php',
            data: formData,
            dataType: 'json', // what type of data do we expect back from the server
        }).then(function(data) {
          // here we will handle errors and validation messages
          if (data.success) {
          $('.invite-form').after('<div class="invite-success">' + data.message + '</div>');
          $('.invite-button').addClass('hidden');
          }
        });

        // prevent page refresh on form submit
        event.preventDefault();
    });
  });

})();
