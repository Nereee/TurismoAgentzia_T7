<?php
session_start();
require 'conexion.php';
if (!isset($_SESSION['izenaAgentzia'])) {
    header("Location: ../index.html");
    exit();
}
$idFormulario = $_POST['idFormulario'];

if ($idFormulario == 'form-hegaldia') {
    $bidaiaMota = $conn->real_escape_string($_POST['bidaiaMota']);
    $jatorria = $conn->real_escape_string($_POST['jatorria']);
    $helmuga = $conn->real_escape_string($_POST['helmuga']);
    $hegaldia_kodea = $conn->real_escape_string($_POST['hegaldia-kodea']);
    $airelinea = $conn->real_escape_string($_POST['airelinea']);
    $prezioahegaldia = $conn->real_escape_string($_POST['prezioahegaldia']);
    $data = $conn->real_escape_string($_POST['data']);
    $ordua = $conn->real_escape_string($_POST['ordua']);
    $denboraOrduak = $conn->real_escape_string($_POST['denboraOrduak']);

    $sql = "INSERT INTO hegaldia (bidaiaMota, jatorria, helmuga, hegaldia_kodea, airelinea, prezioahegaldia, data, ordua, denboraOrduak) 
            VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";

    $stmt = $conn->prepare($sql);
    $stmt->bind_param("sssssdsss", $bidaiaMota, $jatorria, $helmuga, $hegaldia_kodea, $airelinea, $prezioahegaldia, $data, $ordua, $denboraOrduak);

    if ($stmt->execute()) {
        echo "<script>Swal.fire('Ondo!', 'Hegaldiaren datuak gordeta daude.', 'success');</script>";
    } else {
        echo "<script>Swal.fire('Errorea!', 'Errorea gertatu da hegaldiaren datuak gordetzerakoan.', 'error');</script>";
    }
} elseif ($idFormulario == 'form-ostatua') {

    $bidaiaMota = $conn->real_escape_string($_POST['bidaiaMota']);
    $hotel_izena = $conn->real_escape_string($_POST['hotel-izena']);
    $ostatu_hiria = $conn->real_escape_string($_POST['ostatu-hiria']);
    $prezioaostatua = $conn->real_escape_string($_POST['prezioaostatua']);
    $data_joan = $conn->real_escape_string($_POST['data-joan']);
    $data_etorri = $conn->real_escape_string($_POST['data-etorri']);
    $logelamota = $conn->real_escape_string($_POST['logelamota']);

    $sql = "INSERT INTO ostatu (bidaiaMota, hotel_izena, ostatu_hiria, prezioaostatua, data_joan, data_etorri, logelamota) 
            VALUES (?, ?, ?, ?, ?, ?, ?)";

    $stmt = $conn->prepare($sql);
    $stmt->bind_param("sssdsss", $bidaiaMota, $hotel_izena, $ostatu_hiria, $prezioaostatua, $data_joan, $data_etorri, $logelamota);

    if ($stmt->execute()) {
        echo "<script>Swal.fire('Ondo!', 'Ostatua datuak gordeta daude.', 'success');</script>";
    } else {
        echo "<script>Swal.fire('Errorea!', 'Errorea gertatu da ostatuaren datuak gordetzerakoan.', 'error');</script>";
    }
} elseif ($idFormulario == 'form-beste-bat') {

    $bidaiaMota = $conn->real_escape_string($_POST['bidaiaMota']);
    $zerbitzu_izena = $conn->real_escape_string($_POST['zerbitzu-izena']);
    $data = $conn->real_escape_string($_POST['data']);
    $deskribapena = $conn->real_escape_string($_POST['deskribapena']);
    $kostua = $conn->real_escape_string($_POST['kostua']);

    $sql = "INSERT INTO beste_zerbitzuak (izenaBesteZerbitzuak, data, deskribapenaBesteZerbitzuak, prezioBesteZerbitzua) 
            VALUES (?, ?, ?, ?)";

    $stmt = $conn->prepare($sql);
    $stmt->bind_param("sssd", $zerbitzu_izena, $data, $deskribapena, $kostua);

    if ($stmt->execute()) {
        echo "<script>Swal.fire('Ondo!', 'Beste bat zerbitzua gordeta daude.', 'success');</script>";
    } else {
        echo "<script>Swal.fire('Errorea!', 'Errorea gertatu da beste bat zerbitzuaren datuak gordetzerakoan.', 'error');</script>";
    }
} elseif ($idFormulario == 'form-joan-etorri') {

    $bidaiaMota = $conn->real_escape_string($_POST['bidaiaMota']);
    $jatorria = $conn->real_escape_string($_POST['jatorria']);
    $helmuga = $conn->real_escape_string($_POST['helmuga']);
    $hegaldia_kodea = $conn->real_escape_string($_POST['hegaldia-kodea']);
    $airelinea = $conn->real_escape_string($_POST['airelinea']);
    $prezioahegaldia = $conn->real_escape_string($_POST['prezioahegaldia']);
    $data = $conn->real_escape_string($_POST['data']);
    $ordua = $conn->real_escape_string($_POST['ordua']);
    $denboraOrduak = $conn->real_escape_string($_POST['denboraOrduak']);
    $itzulera_data = $conn->real_escape_string($_POST['itzulera-data']);
    $itzulera_ordua = $conn->real_escape_string($_POST['itzulera-ordua']);
    $itzulera_orduak = $conn->real_escape_string($_POST['itzulera-ordua']);  // orduak
    $bueltako_hegaldia_kodea = $conn->real_escape_string($_POST['bueltako-hegaldia-kodea']);
    $bueltako_airelinea = $conn->real_escape_string($_POST['bueltako-airelinea']);

    $sql = "INSERT INTO joan_etorri (bidaiaMota, jatorria, helmuga, hegaldia_kodea, airelinea, prezioahegaldia, data, ordua, denboraOrduak, itzulera_data, itzulera_ordua, itzulera_orduak, bueltako_hegaldia_kodea, bueltako_airelinea) 
            VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

    $stmt = $conn->prepare($sql);
    $stmt->bind_param("sssssdsssssss", $bidaiaMota, $jatorria, $helmuga, $hegaldia_kodea, $airelinea, $prezioahegaldia, $data, $ordua, $denboraOrduak, $itzulera_data, $itzulera_ordua, $itzulera_orduak, $bueltako_hegaldia_kodea, $bueltako_airelinea);

    if ($stmt->execute()) {
        echo "<script>Swal.fire('Ondo!', 'Joan-ETorri datuak gordeta daude.', 'success');</script>";
    } else {
        echo "<script>Swal.fire('Errorea!', 'Errorea gertatu da Joan-Etorri datuak gordetzerakoan.', 'error');</script>";
    }
} else {
    echo "<script>Swal.fire('Error', 'El formulario no se ha enviado correctamente. Por favor, inténtalo de nuevo.', 'error');</script>";
}
?>