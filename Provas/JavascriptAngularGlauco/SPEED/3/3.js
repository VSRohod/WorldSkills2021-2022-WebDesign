function alertSite() {
  usuario = document.getElementById("usuario").value;
  senha = document.getElementById("senha").value;
  if (usuario == "SENAI" && senha == "SENAI") {
    alert("USUARIO VALIDO");
  } else {
    alert("USUARIO INVALIDO");
  }
}
