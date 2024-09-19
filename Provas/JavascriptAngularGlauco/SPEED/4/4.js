document.getElementById("perc").addEventListener("focusout", perc);
function perc() {
  valor = document.getElementById("valor").value;
  percentual = document.getElementById("perc").value;
  resultado = (percentual / 100) * valor;
  alert("O resultado é de " + resultado);
}
