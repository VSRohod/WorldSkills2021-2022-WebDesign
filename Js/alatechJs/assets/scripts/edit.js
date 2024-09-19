function allowDrop(ev) {
    ev.preventDefault();
}

function drag(ev) {
    ev.dataTransfer.setData("text", ev.target.id);
}

function drop(ev) {
    ev.preventDefault();
    var data = ev.dataTransfer.getData("text");
    ev.target.appendChild(document.getElementById(data));
    document.getElementById('peca').style.width='80%';
    document.getElementById('peca').style.height='15rem';
    document.getElementById('thumb').style.height='90%';
}

document.getElementById('salvar').addEventListener("click", salvar);

function salvar(){
    alert ("Salvo com sucesso!");
}



