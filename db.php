<?php
// db.php – shared DB connection

$host = 'localhost';
$db   = 'tsunameats_db';
$user = 'root';
$pass = 'root'; // MAMP default is often 'root'; if that fails, try empty string ''

$conn = new mysqli($host, $user, $pass, $db);

if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
?>
