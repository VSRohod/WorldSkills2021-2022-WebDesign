var bola = document.getElementById('bola');
var widthCanvas = 780;
var heightCanvas = 400;
var minWidth = 32;
var minHeight = 32;

for ( var i = 0; i < bola.clientHeight; i++){
    var thisBola = bola[i];

    randomTop = numeroAleatorioHeight(0,widthCanvas);
    randomLeft = numeroAleatorioWidth(0,heightCanvas);
      
    bola.style.top = randomTop +"px";
    bola.style.left = randomLeft +"px";

    function numeroAleatorioWidth(minWidth, widthCanvas){
        return Math.random() * (minWidth - widthCanvas) + widthCanvas;
    }

    function numeroAleatorioHeight(minHeight, heightCanvas){
        return Math.random() * (minHeight - heightCanvas) + heightCanvas;
    }
}

