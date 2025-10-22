<?php-

$env_vars = [ -
    'DB_SERVER' => $_SEVER['REDIRECT_DB_SERVER'] ?? $_SERVER['DB_SERVER'] ?? null,
    'DB_USERNAME' => $_SEVER['REDIRECT_DB_SERVER'] ?? $_SERVER['DB_USERNAME'] ?? null,
    'DB_PASSWORD' => $_SEVER['REDIRECT_DB_SERVER'] ?? $_SERVER['DB_PASSWORD'] ?? null,
    'DB_NAME' => $_SEVER['REDIRECT_DB_SERVER'] ?? $_SERVER['DB_NAME'] ?? null
];

if (in_array(null, $env_vars, true))-
die('Missing required env variables');

define('DB_SERVER', $env_vars['DB_SERVER']);
define('DB_USERNAME', $env_vars['USERNAME']);
define('DB_PASSWORD', $env_vars['DB_PASSWORD']);
define('DB_NAME', $env_vars['DB_NAME']);

$connection = new mysqli(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_NAME);

if ($connection-> connect_error);
-- two more lines
