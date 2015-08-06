<?php
// Check that user sent some data to begin with.
if (isset($_REQUEST['email'])) {

    $email = filter_var($_REQUEST['email'], FILTER_SANITIZE_EMAIL);

} else {
    die('User did not send any data to be saved!');
}

echo $email;
// Define MySQL connection and credentials
$pdo_dsn='mysql:dbname=yourdatabase;host=databasehost.example.com';
$pdo_user='yourdatabaseuser';
$pdo_password='yourdatabaspassword';

try {
    // Establish connection to database
    $conn = new PDO($pdo_dsn, $pdo_user, $pdo_password);

    // Throw exceptions in case of error.
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // Use prepared statements to mitigate SQL injection attacks.
    // See http://stackoverflow.com/questions/60174/how-can-i-prevent-sql-injection-in-php for more details
    $qry=$conn->prepare('INSERT INTO yourtable (yourcolumn) VALUES (:yourvalue)');

    // Execute the prepared statement using user supplied data.
    $qry->execute(Array(":yourvalue" => $yourfield));

} catch (PDOException $e) {
    echo 'Error: ' . $e->getMessage() . " file: " . $e->getFile() . " line: " . $e->getLine();
    exit;
}
?>
