<?php

// Datu baserako konexioko parametroak
$servername = "localhost:3307";
$username = "root";
$password = "";
$dbname = "db_bidaiak";

// Konexioa egin
$conn = new mysqli($servername, $username, $password, $dbname);

// Konexioa egiaztatu
if ($conn->connect_error) {
    die("Arazoa Konexioan: " . $conn->connect_error);
}
?>