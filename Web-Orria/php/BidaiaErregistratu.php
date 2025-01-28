<?php
session_start();

if (!isset($_SESSION['nombre'])) {
    header("Location: ../index.html");
    exit();
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulario de Viaje</title>
    <link rel="stylesheet" href="../css/maketazioa.css">
    <link rel="stylesheet" href="../css/BidaiaErregistratu.css">
</head>

<body>
    <header>
        <img src="../img/logoa.png" alt="Logoa">
        <div class="header-izena">
            <?php echo htmlspecialchars($_SESSION['nombre']); ?>
        </div>
    </header>
    <div id="argiaIluna"></div>
    <section class="bidaia-formularioa">

        <form>
            <h1>Bidaia Formularioa</h1>
            <div class="bidaia-input">
                <label for="nombre">Izena:</label>
                <input type="text" id="nombre" name="nombre" placeholder="" required>
                <label for="tipo-viaje">Bidaia mota:</label>
                <select id="tipo-viaje" name="tipo-viaje">
                    <option value="">--Aukeratu--</option>
                </select>

                <label for="fecha-inicio">Hasiera Data:</label>
                <input type="date" id="fecha-inicio" name="fecha-inicio" required>

                <label for="fecha-fin">Amaiera Data:</label>
                <input type="date" id="fecha-fin" name="fecha-fin" required>

                <label for="dias">Egunak:</label>
                <input type="number" id="dias" name="dias" placeholder="" required>

                <label for="herrialdea">Herrialdea:</label>
                <select id="herrialdea" name="herrialdea">
                    <option value="">--Aukeratu--</option>
                </select>

                <label for="descripcion">Deskribapena:</label>
                <textarea id="descripcion" name="descripcion" rows="4" placeholder=""></textarea>
            </div>

            <div class="bidaia-botoia">
                <button type="submit">Gorde</button>
            </div>
        </form>
    </section>
    <script src="../js/script.js"></script>
</body>

</html>