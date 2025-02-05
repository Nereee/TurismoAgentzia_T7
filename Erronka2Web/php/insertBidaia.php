<?php
session_start();
require 'conexion.php';
if (!isset($_SESSION['izenaAgentzia'])) {
    header("Location: ../index.html");
    exit();
}
$idAgentzia = $_SESSION['IDAgentzia'];

    $izena = $conn->real_escape_string($_POST['izena']);
    $bidaiaMota = $conn->real_escape_string($_POST['bidaia-mota']);
    $hasiera_data = $conn->real_escape_string($_POST['hasiera-data']);
    $amaiera_data = $conn->real_escape_string($_POST['amaiera-data']);
    $herrialdea = $conn->real_escape_string($_POST['herrialdea']);
    $deskribapena = $conn->real_escape_string($_POST['deskribapena']);

    $sql = "INSERT INTO bidaia (izenaBidaia, deskribapenaBidaia, dataIrteera, dataAmaiera, IDAgentzia, kodBidaiaMota, kodHerrialdea) 
            VALUES (?, ?, ?, ?, ?, ?, ?)";

    $stmt = $conn->prepare($sql);
    $stmt->bind_param("sssssss", $izena, $deskribapena, $hasiera_data, $amaiera_data, $idAgentzia, $bidaiaMota, $herrialdea);
    
    if ($stmt->execute()) {
        echo "<script>Swal.fire('Ondo!', 'Hegaldiaren datuak gordeta daude.', 'success');</script>";
    } else {
        echo "<script>Swal.fire('Errorea!', 'Errorea gertatu da hegaldiaren datuak gordetzerakoan.', 'error');</script>";
    }
?>