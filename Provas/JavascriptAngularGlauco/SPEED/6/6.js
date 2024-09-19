document.getElementById("calcular").addEventListener("click", calculo);

function calculo() {
  let banheiro = document.getElementById("banheiro");
  let banheira = document.getElementById("banheira");
  let tv = document.getElementById("tv");
  let internet = document.getElementById("internet");

  valor = document.getElementById("valor").value;
  dias = document.getElementById("dia").value;
  resultado = valor * dias;

  if (banheiro.checked) {
    resultado += 30;
  }
  if (banheira.checked) {
    resultado += 100;
  }
  if (tv.checked) {
    resultado += 40;
  }
  if (internet.checked) {
    resultado += 80;
  }
  alert("Total a pagar: "+resultado);
}
