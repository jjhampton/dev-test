<?php
// Check that user sent some data to begin with.
if (isset($_REQUEST['email'])) {

    $email = filter_var($_REQUEST['email'], FILTER_SANITIZE_EMAIL);

} else {
    die('User did not send any data to be saved!');
}

echo $email;
?>
