<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formularioa Zerbitzuak</title>
    <link rel="stylesheet" href="../css/maketazioa.css">
    <link rel="stylesheet" href="../css/ZerbitzuaErregistratu.css">
</head>

<body>
    <header>
        <img src="../img/logoa.png" alt="Logo">
        <div class="header-izena">Zerbitzuen Aukeraketa</div>
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
                        <input type="radio" name="hegaldi-mota"> Joan
                    </label>
                    <label>
                        <input type="radio" name="hegaldi-mota"> Joan/Etorri
                    </label>
                    <br><br>
                    <label for="jatorria">Jatorrizko Aireportua</label>
                    <input type="text" id="jatorria" name="jatorria" placeholder="--Aukeratu--">
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
                </div>
                <br>
                <div class="zerbitzua-botoia">
                    <button type="submit">Gorde Zerbitzua</button>
                </div>
        </div>
        </form>
    </section>

    <script src="../js/script.js"></script>
</body>

</html>