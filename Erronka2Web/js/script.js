const argiaIluna = document.getElementById('argiaIluna');
const gorputza = document.body;

argiaIluna.addEventListener('click', () => {
    const eguzkiAldaketaAktibatuta = gorputza.style.backgroundColor === 'rgb(34, 34, 34)';

    if (eguzkiAldaketaAktibatuta) {
        gorputza.style.backgroundColor = '#f5f5f5';
        gorputza.style.color = '#000000';
        argiaIluna.classList.remove('iluna');
    } else {
        gorputza.style.backgroundColor = '#222';
        gorputza.style.color = '#ffffff';
        argiaIluna.classList.add('iluna');
    }
});


function formularioakIkusi(idFormulario) {
    const formularios = document.querySelectorAll('div[id^="form-"]');
    formularios.forEach(formulario => formulario.classList.add('hidden'));

    const formularioSeleccionado = document.getElementById(idFormulario);
    formularioSeleccionado.classList.remove('hidden');
}

function joanEtorriErakutsi(idFormulario) {
    const formularioSeleccionado = document.getElementById(idFormulario);
    formularioSeleccionado.classList.remove('hidden');
}