//criar canvas
var canvas;
var ctx;
var dx = 5; // variação da velocidade horizontal da luva
var dy = 5; // variação da velocidade vertical da luva
var x = 50; // posição horizontal da luva 
var y = 150; // posição vertical da luva
var w = 800; // largura
var h = 590; // altura
var speedBola = 100; //velocidade da bola
var xbola = Math.random()*(800 - 150);
var ybola = Math.random()*(600 - 150);
var aleatoriaxbola;
var bola;


var tamanhoBola = 20;
// canvas.style.cursor = "none"; -retirar o mouse do jogo
// intervalo = setInterval(gameLoop, 20); 

function iniciar(){
    canvas = document.querySelector("canvas");
    ctx = canvas.getContext("2d");
    canvas.width = w;
    canvas.height = h;
}

// function desenharBola(){
//     ctx.beginPath();
//     ctx.arc(xbola,ybola,tamanhoBola,0,Math.PI*2,true);
//     ctx.fill();
// }

// function animacaoBola(){
//     requestAnimationFrame(animacaoBola);
//     ctx.beginPath();

// }

//carregar background
var bgReady = false;
var bgImage = new Image();
bgImage.src = "./assets/images/estadio.png";
bgImage.onload =  function (){
    bgReady = true;
};

//carregar luvas
var luvaReady = false;
var luvaImage = new Image();
luvaImage.src = "./assets/images/luvas.png";
luvaImage.onload =  function (){
    luvaReady = true;
};

//carregar reload
var reloadReady = false;
var reloadImage = new Image();
reloadImage.src = "./assets/images/reload.png";
reloadImage.onload =  function (){
    reloadReady = true;
};

//desenhar itens
function loadImage(){
    if (bgReady){
        ctx.drawImage(bgImage, 0 , 0);
        // desenharBola();
    }
    // if (luvaReady){
    //     ctx.drawImage(luvaImage, 50, 150);
    // }
    if (reloadReady){
        ctx.drawImage(reloadImage, 10, 10);
    }
}

function desenharLuva(){
    ctx.drawImage(luvaImage, x , y, 654, 554);
}

function movimentar(evento){
    switch(evento.keyCode){
        case 38: //seta para cima
            if(y-dy>0){
                y-=dy;
            }
        break;
        case 40: //seta para baixo
            if(y+dy<canvas.height - 500){
                y+=dy;
            }
        break;
        case 37: //seta esquerda
            if(x-dx>0){
                x-=dx;
            }
        break;
        case 39: //seta direita
            if(x+dx<canvas.width - 600){
                x+=dx;
            }
        break;
    }
    colisao();
}

// function atualizarLuva(){
//     desenharLuva();
// }

//GAME LOOP FUNCTION!!!

function gameLoop(){
    loadImage();
    desenharLuva();
    animaBola();
    requestAnimationFrame(gameLoop);
}

function colisao(){
    bola = document.getElementById("bola");
    var xbolacolisao = bola.getBoundingClientRect().left;
    var ybolacolisao = bola.getBoundingClientRect().top;
    // if (xbolacolisao<=x-654){
        console.log("Luvas: ("+x+","+y+")");
        console.log("Bola: ("+xbolacolisao+","+ybolacolisao+")");
    // }
}

function animaBola(){
    bola = document.getElementById("bola");
    bola.style.position="absolute";
    bola.style.width="50px";
    bola.style.height="50px";
    bola.style.borderRadius="50px";
    bola.style.backgroundColor="red";
    bola.style.left= ""+xbola;
    bola.style.top= ""+ybola;
    bola.style.animationName="aumentar";
    bola.style.animationTimingFunction="ease-in";
    bola.style.animationDuration="4s";
    bola.style.animationIterationCount="infinite";
    bola.style.animationFillMode="backwards";
}

//CALL GAMELOOP FUNCTION
window.addEventListener('keydown',movimentar,true);
window.addEventListener('mousemove',movimentar,true);
iniciar();
gameLoop();