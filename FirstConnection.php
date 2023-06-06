<?php
    include 'connection.php';

    $conn = new mysqli($server_name, $username, $password, $database_name);

    if($conn -> connect_error) {
        die("Error: Couldn't connect. ".$conn -> connect_error);
    }
        
        echo "Connected Successfully";

    $conn -> close();

?>