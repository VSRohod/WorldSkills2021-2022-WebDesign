document
  .getElementById("documento")
  .addEventListener("mouseover", navButtonsOn);
document
  .getElementById("documento")
  .addEventListener("mouseout", navButtonsOff);
document.getElementById("copiar").addEventListener("click", copy);
let fullscreen;
let fullscreenEnter = document
  .getElementById("fullscreen")
  .addEventListener("click", maxWindow);

//FUNÇÕES

function navButtonsOn() {
  document.getElementById("next").style.display = "block";
  document.getElementById("prev").style.display = "block";
}
function navButtonsOff() {
  document.getElementById("next").style.display = "none";
  document.getElementById("prev").style.display = "none";
}

function maxWindow() {
  if (!fullscreen) {
    fullscreen = true;
    document.documentElement.requestFullscreen();
  } else {
    fullscreen = false;
    document.exitFullscreen();
  }
}

async function copy() {
  let text = document.getElementById("codeText").value;
  await navigator.clipboard.writeText(text);
}
