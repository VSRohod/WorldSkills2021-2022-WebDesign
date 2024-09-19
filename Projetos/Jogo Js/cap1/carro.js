function Carro(cor, velocidadeMax){
    this.cor = cor;
    this.velocidadeMax = velocidadeMax;
    this.velocidadeAtual = 0;
}

Carro.prototype = {
    acelerar : function(){
        this.velocidadeAtual += 10;
    }
}