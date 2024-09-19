document.getElementById("happy").addEventListener('click', happyMode);
document.getElementById("neutral").addEventListener('click', neutralMode);
document.getElementById("mad").addEventListener('click', madMode);

function happyMode(){
    document.getElementById('smiley').style.backgroundColor='rgb(136, 248, 125)';
    document.getElementById('smiley').style.border='1rem solid rgb(40, 192, 2)';
    document.getElementById('mouth').style.backgroundColor='rgb(40, 192, 2)';
    document.getElementById('mouth').style.borderBottomLeftRadius='20rem';
    document.getElementById('mouth').style.borderBottomRightRadius='20rem';
    document.getElementById('left').style.backgroundColor='rgb(40, 192, 2)';
    document.getElementById('right').style.backgroundColor='rgb(40, 192, 2)';
}

function neutralMode(){
    document.getElementById('smiley').style.backgroundColor='rgb(255, 224, 88)';
    document.getElementById('smiley').style.border='1rem solid rgb(192, 146, 46)';
    document.getElementById('mouth').style.backgroundColor='rgb(192, 146, 46)';
    document.getElementById('mouth').style.borderRadius='20rem'
    document.getElementById('left').style.backgroundColor='rgb(192, 146, 46)';
    document.getElementById('right').style.backgroundColor='rgb(192, 146, 46)';
}

function madMode(){
    document.getElementById('smiley').style.backgroundColor='rgb(255, 126, 126)';
    document.getElementById('smiley').style.border='1rem solid rgb(255, 60, 60)';
    document.getElementById('mouth').style.borderTopLeftRadius='20rem';
    document.getElementById('mouth').style.borderTopRightRadius='20rem';
    document.getElementById('mouth').style.backgroundColor='rgb(255, 60, 60)';
    document.getElementById('left').style.backgroundColor='rgb(255, 60, 60)';
    document.getElementById('right').style.backgroundColor='rgb(255, 60, 60)';
}