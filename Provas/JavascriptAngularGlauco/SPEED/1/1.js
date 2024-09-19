document.getElementById("linkInput").addEventListener("click", linkButton);
function linkButton() {
  link = document.getElementById("endereco").value;
  window.location.href = "https://www." + link + ".com";
}
