document.getElementById('item').addEventListener('mouseover', showItens);
document.getElementById('item').addEventListener('mouseout', hideItens);
document.getElementById('insideItem').addEventListener('click', optionsShow);
document.getElementById('insideItem2').addEventListener('click', optionsShow2);
document.getElementById('insideItem3').addEventListener('click', optionsShow3);
document.getElementById('insideItem4').addEventListener('click', optionsShow4);
document.getElementById('edit').addEventListener('click', editItem2);
document.getElementById('view').addEventListener('click', galeryOpen);
document.getElementById('view2').addEventListener('click', galeryOpen2);
document.getElementById('view3').addEventListener('click', galeryOpen3);
document.getElementById('view4').addEventListener('click', galeryOpen4);

function showItens(){
    document.getElementById('oculto').style.display= 'none';
}

function hideItens(){
    document.getElementById('oculto').style.display= 'block';
}

function optionsShow(){
    document.getElementById('number').style.display= 'none';
    document.getElementById('delete').style.display= 'block';
    document.getElementById('edit').style.display= 'block';  
    document.getElementById('view').style.display= 'block';  
}

function optionsShow2(){
    document.getElementById('number2').style.display= 'none';
    document.getElementById('delete2').style.display= 'block';
    document.getElementById('edit2').style.display= 'block';  
    document.getElementById('view2').style.display= 'block';  
}

function optionsShow3(){
    document.getElementById('number3').style.display= 'none';
    document.getElementById('delete3').style.display= 'block';
    document.getElementById('edit3').style.display= 'block';  
    document.getElementById('view3').style.display= 'block';  
}

function optionsShow4(){
    document.getElementById('number4').style.display= 'none';
    document.getElementById('delete4').style.display= 'block';
    document.getElementById('edit4').style.display= 'block';  
    document.getElementById('view4').style.display= 'block';  
}

function editItem2(){
    document.getElementById('linha').style.display= 'block';
    document.getElementById('item2').style.display= 'block';
}

function galeryOpen(){
    document.getElementById('galery').style.left='0';
}

function galeryOpen2(){
    document.getElementById('galery2').style.left='0';
}

function galeryOpen3(){
    document.getElementById('galery3').style.left='0';
}
function galeryOpen4(){
    document.getElementById('galery4').style.left='0';
}