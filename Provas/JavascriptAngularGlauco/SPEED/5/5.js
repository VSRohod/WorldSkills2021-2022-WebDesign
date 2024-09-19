document.getElementById("vista").addEventListener("click", vista);
document.getElementById("prazo").addEventListener("click", prazo);
function vista() {
  valor = document.getElementById("valor").value;
  perc = (5 / 100) * valor;
  resultado = valor - perc;
  alert("O valor é de " + resultado);
}
function prazo() {
  valor = document.getElementById("valor").value;
  perc = (5 / 100) * valor;
  resultado = parseFloat(valor) + parseFloat(perc);
  alert("O valor é de " + resultado);
}
