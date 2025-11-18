<?php
// db.php – shared DB connection

// $host = 'localhost';
//$db   = 'tsunameats_db';
//$user = 'root';
//$pass = 'root'; // MAMP default is often 'root'; if that fails, try empty string ''

//$conn = new mysqli($host, $user, $pass, $db);

//if ($conn->connect_error) {
//  die("Connection failed: " . $conn->connect_error);
//}
//

$env_vars = [
    'DB_SERVER'   => $_SERVER['REDIRECT_DB_SERVER']   ?? $_SERVER['DB_SERVER']   ?? null,
    'DB_USERNAME' => $_SERVER['REDIRECT_DB_USERNAME'] ?? $_SERVER['DB_USERNAME'] ?? null,
    'DB_PASSWORD' => $_SERVER['REDIRECT_DB_PASSWORD'] ?? $_SERVER['DB_PASSWORD'] ?? null,
    'DB_NAME'     => $_SERVER['REDIRECT_DB_NAME']     ?? $_SERVER['DB_NAME']     ?? null
];

if (in_array(null, $env_vars, true))
    die('Missing required environment variables');

define('DB_SERVER', $env_vars['DB_SERVER']);
define('DB_USER',   $env_vars['DB_USERNAME']);
define('DB_PASS',   $env_vars['DB_PASSWORD']);
define('DB_NAME',   $env_vars['DB_NAME']);

// Create database connection 
$connection = new mysqli(DB_SERVER, DB_USER, DB_PASS, DB_NAME);

if ($connection->connect_error)
    die("Connection failed: " . $connection->connect_error);
    ?>