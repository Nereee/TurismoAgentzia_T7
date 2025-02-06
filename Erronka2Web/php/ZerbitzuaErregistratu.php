<?php
session_start();
require '../php/conexion.php';
if (!isset($_SESSION['Izena'])) {
    header("Location: ../index.html");
    exit();
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/maketazioa.css">
    <link rel="stylesheet" href="../css/ZerbitzuaErregistratu.css">
</head>

<body>
    <header>
        <img src="<?php echo htmlspecialchars($_SESSION['Logoa']); ?>" alt="Logoa">
        <?php echo htmlspecialchars($_SESSION['Izena']); ?>
        <div id="argiaIluna"></div>
    </header>
    <section>
        <div class="zerbitzua-formularioa">
            <h1>Aukeratu Zerbitzua</h1>
            <form>
                <label>
                    <input type="radio" name="opcion" value="hegaldia" onclick="formularioakIkusi('form-hegaldia')">
                    Hegaldia
                </label>
                <br>
                <label>
                    <input type="radio" name="opcion" value="ostatua" onclick="formularioakIkusi('form-ostatua')">
                    Ostatua
                </label>
                <br>
                <label>
                    <input type="radio" name="opcion" value="beste-bat" onclick="formularioakIkusi('form-beste-bat')">
                    Beste Batzuk
                </label>
                <br><br>

                <div id="form-hegaldia" class="hidden">
                    <label for="hegaldi-mota">Zein hegaldia mota da?</label>
                    <br><br>
                    <label>
                        <input type="radio" name="hegaldi-mota" onclick="formularioakIkusi('form-hegaldia')"> Joan
                    </label>
                    <label>
                        <input type="radio" name="hegaldi-mota" onclick="joanEtorriErakutsi('form-joan-etorri')">
                        Joan/Etorri
                    </label>
                    <br><br>
                    <h4>Hegaldia (joana)</h4>
                    <br>
                    <label for="jatorria">Jatorrizko aireportua:</label>
                    <select id="jatorria" name="jatorria">
                        <option value="">--Aukeratu--</option>
                        <?php
                        // DATU BASETIK
                        $sql = "select KodAireportua, hiria from aireportua"; 
                        $result = $conn->query($sql);
                        if ($result->num_rows > 0) {
                            while ($row = $result->fetch_assoc()) {
                                echo "<option value='" . $row['hiria'] . "'>" . $row['hiria'] . " -- (" . $row['KodAireportua'] . ")" . "</option>";
                            }
                        }
                        $conn->close();
                        ?>

                    </select>
                    <br><br>
                    <label for="helmuga">Helmugako Aireportua</label>
                    <input type="text" id="helmuga" name="helmuga" placeholder="--Aukeratu--">
                    <br><br>
                    <label for="hegaldia-kodea">Hegaldi Kodea:</label>
                    <input type="text" id="hegaldia-kodea" name="hegaldia-kodea" placeholder="">
                    <br><br>
                    <label for="airelinea">Airelinea:</label>
                    <input type="text" id="airelinea" name="airelinea" placeholder="--Aukeratu--">
                    <br><br>
                    <label for="prezioahegaldia">Prezioa (€):</label>
                    <input type="number" id="prezioahegaldia" name="prezioahegaldia" placeholder="" step="0.01">
                    <br><br>
                    <label for="data">Irteera Data:</label>
                    <input type="date" id="data" name="data">
                    <br><br>
                    <label for="ordua">Irteera Ordua:</label>
                    <input type="time" id="ordua" name="ordua">
                    <br><br>
                    <label for="ordua">Bidaiaren Iraupena (h)</label>
                    <input type="number" id="denboraOrduak" name="denboraOrduak">
                    <br><br>
                </div>

                <div id="form-ostatua" class="hidden">
                    <label for="hotel-izena">Hotelaren Izena:</label>
                    <input type="text" id="hotel-izena" name="hotel-izena" placeholder="Sartu hotelaren izena">
                    <br><br>
                    <label for="ostatu-hiria">Hiria:</label>
                    <input type="text" id="ostatu-hiria" name="ostatu-hiria" placeholder="Sartu hiriaren izena">
                    <br><br>
                    <label for="prezioaostatua">Prezioa (€):</label>
                    <input type="number" id="prezioaostatua" name="prezioaostatua" placeholder="" step="0.01">
                    <br><br>
                    <label for="datasarreraostatua">Sarrera Eguna:</label>
                    <input type="date" id="datasarreraostatua" name="datasarreraostatua">
                    <br><br>
                    <label for="datairteeraostatua">Irteera Eguna:</label>
                    <input type="date" id="datairteeraostatua" name="datairteeraostatua">
                    <br><br>
                    <label for="logelamota">Logela Mota:</label>
                    <input type="text" id="logelamota" name="logelamota" placeholder="--Aukeratu--">
                    <br><br>
                </div>

                <div id="form-beste-bat" class="hidden">
                    <label for="zerbitzu-izena">Zerbitzuaren Izena:</label>
                    <input type="text" id="zerbitzu-izena" name="zerbitzu-izena" placeholder="Sartu zerbitzuaren izena">
                    <br><br>
                    <label for="datak">Data:</label>
                    <br>
                    <input type="date" id="datak" name="datak">
                    <br><br>
                    <label for="deskribapena">Deskribapena:</label>
                    <br>
                    <textarea id="deskribapena" name="deskribapena"
                        placeholder="Idatzi zerbitzuaren deskribapena"></textarea>
                    <br><br>
                    <label for="kostua">Prezioa (€):</label>
                    <br>
                    <input type="number" id="kostua" name="kostua" placeholder="Sartu Prezioa" step="0.01">
                    <br><br>
                </div>

                <div id="form-joan-etorri" class="hidden">
                    <h4>Hegaldia (joan-etorria)</h4>
                    <label for="itzulera-data">Itzulera Data:</label>
                    <input type="date" id="itzulera-data" name="itzulera-data">
                    <br><br>
                    <label for="itzulera-ordua">Itzulera Ordua:</label>
                    <input type="time" id="itzulera-ordua" name="itzulera-ordua">
                    <br><br>
                    <label for="itzulera-ordua">Buletako Bidaiaren Iraupena (h)</label>
                    <input type="number" id="itzulera-ordua" name="itzulera-ordua">
                    <br><br>
                    <label for="bueltako-hegaldia-kodea">Bueltako Hegaldi Kodea:</label>
                    <input type="text" id="bueltako-hegaldia-kodea" name="bueltako-hegaldia-kodea" placeholder="">
                    <br><br>
                    <label for="bueltako-airelinea">Bueltako Airelinea:</label>
                    <input type="text" id="airelinea" name="bueltako-airelinea" placeholder="--Aukeratu--">
                    <br><br>
                </div>
                <div class="zerbitzua-botoia">
                    <button type="submit">Gorde Zerbitzua</button>
                </div>
        </div>
        </form>
    </section>

    <script src="../js/script.js"></script>
</body>

</html>