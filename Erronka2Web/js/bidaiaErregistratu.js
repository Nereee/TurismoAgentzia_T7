async function bidaiaErregistratu(izena, bidaiaMota, hasieraData, hamaieraData, egunak, herrialdea, deskribapena) {

    if (!izena || !bidaiaMota || !hasieraData || !hamaieraData || !egunak || !herrialdea || !deskribapena) {
        Swal.fire("Errorea!", "Datu guztiak bete.", "error");
        return;
    }

    let today = new Date().toISOString().split("T")[0];

    if (hasieraData < today) {
        Swal.fire("Errorea!", "Hasiera data ezin da izan gaurko data baino lehenagokoa.", "error");
        return;
    } else if (hamaieraData < today) {
        Swal.fire("Errorea!", "Amaiera data ezin da izan gaurko data baino lehenagokoa.", "error");
        return;
    } else if (hasieraData > hamaieraData) {
        Swal.fire("Errorea!", "Hasiera data lehenagoa izan behar da hamaiera data baino.", "error");
        return;
    }

    if (egunak < 1) {
        Swal.fire("Errorea!", "Egun kopurua ezin da 0 izan.", "error");
        return;
    }

    if (deskribapena.length < 15) {
        Swal.fire("Errorea!", "Deskribapena motzegia da.", "error");
        return;
    }


    const datuak = {};
    const formulario = document.querySelector('#form-bidaia');
    const inputs = formulario.querySelectorAll('input, select, textarea');
    let formularioAurkitua = null;

    for (const input of inputs) {
        const izena = input.name;
        const balioa = input.value.trim();

        if (izena) {
            datuak[izena] = balioa;
        }
    }
    console.log(formulario);
    formularioAurkitua = {
        idFormulario: formulario.id,
        datuak
    };

    const formData = new FormData();
    formData.append("idFormulario", formularioAurkitua.idFormulario);
    for (const key in formularioAurkitua.datuak) {
        formData.append(key, formularioAurkitua.datuak[key]);
    }

    try {
        const response = await fetch("../php/insertBidaia.php", {
            method: "POST",
            body: formData,
        });
        const data = await response.text();
        console.log("Zerbitzariaren Erantzuna:", data);
        Swal.fire("Ondo!", "Datuak Gordeko Dira.", "success");
    } catch (error) {
        console.error("Errorea bidaltzean:", error);
        Swal.fire("Errorea!", "Datuak Ez Dira Bidali.", "error");
    }
}

function egunakKalkulatu() {

    let hasieraData = document.getElementById('hasiera-data').value;
    let hamaieraData = document.getElementById('amaiera-data').value;

    hasieraData = new Date(hasieraData);
    amaieraData = new Date(hamaieraData);

    let dataKenketa = amaieraData - hasieraData;
    let egunKopurua = dataKenketa / (1000 * 60 * 60 * 24) + 1;

    document.getElementById("egunak").value = egunKopurua;
}