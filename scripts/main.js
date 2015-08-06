(function(){
  'use strict';

  $(document).ready(function() {

    // process the form
    $('form').submit(function(event) {

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
