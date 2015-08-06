<?php

  $errors = array(); // array to hold validation errors
  $data = array(); // array to pass back data

  // Check that user sent some data to begin with.
  if (empty($_POST['email'])) {
    $errors['email'] = 'Email is required.';
  }
  else {
    $email = filter_var($_POST['email'], FILTER_SANITIZE_EMAIL);
  }

  // if there are any errors in our errors array, return a success boolean of false
  if ( ! empty($errors)) {
    $data['success'] = false;
    // if there are items in our errors array, return those errors
    $data['errors']  = $errors;
  }
  else {
    define('DB_NAME', 'demo');
    define('DB_USER', 'demodev');
    define('DB_PASSWORD', 'Tkcslg9J#iPX34Qv$0Jmp1@RA');
    define('DB_HOST', 'localhost');

    $link = mysql_connect(DB_HOST, DB_USER, DB_PASSWORD);

    if (!link) {
      $data['errors'] = 'Could not connect: ' .mysql_error();
    }

    $db_selected = mysql_select_db(DB_NAME, $link);

    if(!$db_selected) {
      $data['errors'] = 'Can\'t use ' . DB_NAME . ': ' .mysql_error();
    }

    $sql = "INSERT INTO invite (email) VALUES ('$email')";

    if (!mysql_query($sql)) {
      $data['success'] = false;
      $data['errors'] = 'Error: ' . mysql_error();
      mysql_close();
    }
    else {
      $data['success'] = true;
      $data['message'] = 'Success!';
      mysql_close();
    }
  }

  // return all our data to an AJAX call
  echo json_encode($data);

?>
