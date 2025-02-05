async function datuakLortu() {
    const formulario = document.querySelector('div[id^="form-"]:not(.hidden)');
    let formularioAurkitua = null;
    let today = new Date().toISOString().split("T")[0];

    if (formulario) {
        const inputs = formulario.querySelectorAll('input, select, textarea');
        const datuak = {};
        let formularioOsorik = true;

        for (const input of inputs) {
            const balioa = input.value.trim();

            if (balioa === "") {
                formularioOsorik = false;
                Swal.fire("Errorea!", "Datu Guztiak Bete.", "error");
                return;
            }
        }

        if (formulario.id === "form-ostatua") {
            const hasieraData = document.querySelector('.data-joan-ostatua').value; // Joaneko data
            const amaieraData = document.querySelector('.data-etorri-ostatua').value; // Etorrerako data

            if (hasieraData < today) {
                formularioOsorik = false;
                Swal.fire("Errorea!", "Hasiera data ezin da izan gaurko data baino lehenagokoa.", "error");
                return;
            } else if (amaieraData < today) {
                formularioOsorik = false;
                Swal.fire("Errorea!", "Amaiera data ezin da izan gaurko data baino lehenagokoa.", "error");
                return;
            } else if (hasieraData > amaieraData) {
                formularioOsorik = false;
                Swal.fire("Errorea!", "Hasiera data lehenagoa izan behar da hamaiera data baino.", "error");
                return;
            }
        } else if (formulario.id === "form-joan-etorri") {
            const hasieraData = document.querySelector('.data-joan-etorri').value; // Joaneko data
            const amaieraData = document.querySelector('.data-joan-etorri').value; // Etorrerako data

            if (hasieraData < today) {
                formularioOsorik = false;
                Swal.fire("Errorea!", "Hasiera data ezin da izan gaurko data baino lehenagokoa.", "error");
                return;
            } else if (amaieraData < today) {
                formularioOsorik = false;
                Swal.fire("Errorea!", "Amaiera data ezin da izan gaurko data baino lehenagokoa.", "error");
                return;
            } else if (hasieraData > amaieraData) {
                formularioOsorik = false;
                Swal.fire("Errorea!", "Hasiera data lehenagoa izan behar da hamaiera data baino.", "error");
                return;
            }
        } else if (formulario.id === "form-hegaldia") {
            const hasieraData = document.querySelector('.data-beste-bat').value; // Joaneko data
            if (hasieraData < today) {
                formularioOsorik = false;
                Swal.fire("Errorea!", "Hasiera data ezin da izan gaurko data baino lehenagokoa.", "error");
                return;
            }
        } else if (formulario.id === "form-beste-bat") {
            const hasieraData = document.querySelector('.data-beste-bat').value; // Joaneko data

            if (hasieraData < today) {
                formularioOsorik = false;
                Swal.fire("Errorea!", "Hasiera data ezin da izan gaurko data baino lehenagokoa.", "error");
                return;
            }
        }

        const bidaiaMotaValue = document.getElementById("bidaiaMota").value;
        if (bidaiaMotaValue) {
            datuak['bidaiaMota'] = bidaiaMotaValue;
        }

        for (const input of inputs) {
            const izena = input.name;
            const balioa = input.value.trim();

            if (!balioa) {
                formularioOsorik = false;
                Swal.fire("Errorea!", "Datu Guztiak Bete.", "error");
                return;
            }

            if (input.type === "text" && balioa.length < 3) {
                formularioOsorik = false;
                Swal.fire("Errorea!", "Gutxienez 3 hizki idatzi.", "error");
                return;
            }

            if (input.type === "number" && parseFloat(balioa) <= 0) {
                formularioOsorik = false;
                Swal.fire("Errorea!", "Zenbaki positiboak sartu.", "error");
                return;
            }

            if (izena) {
                datuak[izena] = balioa;
            }
        }

        if (formularioOsorik) {
            formularioAurkitua = {
                idFormulario: formulario.id,
                datuak
            };
        }
    }

    if (!formularioAurkitua) {
        Swal.fire("Errorea!", "Datu Guztiak Bete.", "error");
        return;
    }


    const formData = new FormData();
    formData.append("idFormulario", formularioAurkitua.idFormulario);
    for (const key in formularioAurkitua.datuak) {
        formData.append(key, formularioAurkitua.datuak[key]);
    }

    try {
        const response = await fetch("../php/insert.php", {
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