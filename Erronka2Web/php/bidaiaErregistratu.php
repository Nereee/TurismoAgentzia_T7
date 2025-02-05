<?php
session_start();
require 'conexion.php';
if (!isset($_SESSION['izenaAgentzia'])) {
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
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>

<body>
    <header>
        <img src="<?php echo htmlspecialchars($_SESSION['Logoa']); ?>" alt="Logoa">
        <a href="registroak.php"><button id="atzeraButton">Atzera</button></a>
        <?php echo htmlspecialchars($_SESSION['izenaAgentzia']); ?>
        <button id="logoutButton" onclick="saioaItxi()">Itxi saioa</button>
        <div id="argiaIluna"></div>
    </header>
    <section class="bidaia-formularioa">
        <form>
            <h1>Bidaia Formularioa</h1>
            <div id="form-bidaia">
                <label for="izena">Izena:</label>
                <input type="text" id="izena" name="izena" placeholder="" required>
                <label for="bidaia-mota">Bidaia mota:</label>
                <select id="bidaia-mota" name="bidaia-mota">
                    <option value="">--Aukeratu--</option>
                    <?php
                //DATU BASETIK
                $sql = "select kodBidaiaMota, DeskribapenaBidaiMota from bidaia_mota"; 
                $result = $conn->query($sql);
                if ($result->num_rows > 0) {
                    while ($row = $result->fetch_assoc()) {
                        echo "<option value='" . $row['kodBidaiaMota'] . "'>" . $row['DeskribapenaBidaiMota'] . "</option>";
                    }
                }
                ?>
                </select>

                <label for="hasiera-data">Hasiera Data:</label>
                <input type="date" id="hasiera-data" name="hasiera-data" required>

                <label for="amaiera-data">Amaiera Data:</label>
                <input type="date" id="amaiera-data" name="amaiera-data" onblur="egunakKalkulatu()" required>

                <label for="egunak">Egunak:</label>
                <input type="text" id="egunak" name="egunak" placeholder="Egunak" readonly>

                <label for="herrialdea">Herrialdea:</label>
                <select id="herrialdea" name="herrialdea">
                    <option value="">--Aukeratu--</option>
                    <?php
                //DATU BASETIK
                $sql = "select kodHerrialdea, Deskribapena from herrialdea"; 
                $result = $conn->query($sql);
                if ($result->num_rows > 0) {
                    while ($row = $result->fetch_assoc()) {
                        echo "<option value='" . $row['kodHerrialdea'] . "'>" . $row['Deskribapena'] . "</option>";
                    }
                }
                $conn->close();
                ?>
                </select>

                <label for="deskribapena">Deskribapena:</label>
                <textarea id="deskribapena" name="deskribapena" rows="4" placeholder=""></textarea>
            </div>

            <div class="bidaia-botoia">
                <button type="button" onclick="bidaiaErregistratu(
                    document.getElementById('izena').value.trim(),
                    document.getElementById('bidaia-mota').value,
                    document.getElementById('hasiera-data').value,
                    document.getElementById('amaiera-data').value,
                    document.getElementById('egunak').value,
                    document.getElementById('herrialdea').value,
                    document.getElementById('deskribapena').value.trim()
                    )">Gorde</button>
            </div>
        </form>
    </section>
    <script src="../js/script.js"></script>
    <script src="../js/bidaiaErregistratu.js"></script>
</body>

</html>