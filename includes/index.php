<?php
require_once 'config.php';

$sql = 'Selelct id, name, email, age FROM users';
$result = $connection->query($sql);
?>

<!DOCTYPE html>
<html land="en">

<head> 
    <meta charset= "UTF-8">
    <meta name="viewport content ...


    <?phpif ($result->num_rows > 0) : 
    ?>

    <table>
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>EMAIL</th>
            <th>AGE</th>
