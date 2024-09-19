document.getElementById('alert').addEventListener('click', aparecer);
document.getElementById('buttonOk').addEventListener('click', esconder);

function aparecer(){
    document.getElementById('blackwindow').style.display='block';
}

function esconder(){
    document.getElementById('blackwindow').style.display='none';
}
