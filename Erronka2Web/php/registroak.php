<?php
session_start();
require '../php/conexion.php';
if (!isset($_SESSION['Izena'])) {
    header("Location: ../index.html");
    exit();
}
?>
<!DOCTYPE html>
<html lang="eu">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/maketazioa.css">
    <link rel="stylesheet" href="../css/registroak.css">
</head>

<body>
    <header>
        <img src="<?php echo htmlspecialchars($_SESSION['Logoa']); ?>" alt="Logoa">
        <div class="header-izena">
            <?php echo htmlspecialchars($_SESSION['Izena']); ?>
        </div>
    </header>
    <section id="registroBotoiak">
        <button id="botoiaBidaiak" onclick="window.location.href='BidaiaErregistratu.php'">Bidaiak
            Erregistratu</button>
        <button id="botoiaZerbitzuak" onclick="window.location.href='ZerbitzuaErregistratu.php'">Zerbitzuak
            Erregistratu</button>
    </section>
    <div id="argiaIluna"></div>
    <script src="js/script.js"></script>
</body>

</html>