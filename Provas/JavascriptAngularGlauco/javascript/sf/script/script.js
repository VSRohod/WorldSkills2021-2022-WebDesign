var calcular = document.getElementById("calcular");
calcular.addEventListener("click",calcularSF);

//Empregado
var empregado = document.getElementById("empregado");
empregado.addEventListener("focus",function(){
 mostrarDivEmpregado(true);
});
empregado.addEventListener("blur",function(){
 mostrarDivEmpregado(false);
});

function mostrarDivEmpregado(status){
    divempregado.style.display=status==true?"block":"none";
}

//Filhos
var filhos = document.getElementById("filhos");
filhos.addEventListener("focus",function(){
 mostrarDivFilhos(true);
});
filhos.addEventListener("blur",function(){
 mostrarDivFilhos(false);
});

function mostrarDivFilhos(status){
    divfilhos.style.display=status==true?"block":"none";
}

//Salario
var salario = document.getElementById("salario");
salario.addEventListener("focus",function(){
 mostrarDivSalario(true);
});
salario.addEventListener("blur",function(){
 mostrarDivSalario(false);
});

function mostrarDivSalario(status){
    divsalario.style.display=status==true?"block":"none";
}

function calcularSF(){
    var filhos = document.getElementById("filhos").value;
    var salario = document.getElementById("salario").value;

    var sf = 0;
    if(salario<=806.80)
        sf = filhos * 41.37;
    else if(salario<=1212.64)
        sf = filhos * 29.16;
    else
        sf = 0;

    var resultado = document.getElementById("resultado");
    resultado.innerHTML = sf;
}