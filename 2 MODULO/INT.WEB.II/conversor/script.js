function converter(){
    const number = parseInt( document.getElementById('number').value );

    if( isNaN(number) ){
        alert("Por favor, digite um número válido.")
        limpar();
    }

    const binary = number.toString(2)
    const decimal = number.toString(10)
    const hexa = number.toString(16)

    const resultTag = document.createComment("p")
    //cria os textos com os respectivos resultados
    binaryResult = document.createTextNode(binary)
    decimalResult = document.createTextNode(decimal)
    hexaResult = document.createTextNode(hexa)
    //exibe o resultado em binario
    resultTag     
    
    //cria uma tag
    const binaryResult = document.createElement("p")
    //transformando o resultado em um node(um elemento HTML)
    const nodeBinResult = document.createTextNode(binary)
    //adiciona o resultado nesta tag
    binaryResult.appendChild(nodeBinResult)
    //adiciona a tag nova ja existente
    document.getElementById('resultBinary').appendChild(binaryResult)
    
}
function limpar(){

}

function configuraMascara(){
   
    const typeNumber = document.querySelector('input[name="typeNumber"]:checked').value
    const inputNumber = document.getElementById('number')
    //verifica se é o decimal que esta selecionado

    if(typeNumber === "D"){
        //o numero inicial esta no formato decimal
        //define que apenas 0 e 1 podem ser digitados no campo
        const inputNumber = document.getElementById('number')
        inputNumber.value = inputNumber.value.replace(/[^0-9]/gi,'')
    

        }else if(typeNumber === "B"){
        //o numero inicial esta em binario
        const inputNumber = document.getElementById('number')
        inputNumber.value = inputNumber.value.replace(/[^0-1]/gi,'')
        

        }else if(typeNumber === "H"){
        //o numero incial esta em hexadecimal
        const inputNumber = document.getElementById('number')
        inputNumber.value = inputNumber.value.replace(/[^0-9A-F]/gi,'')
        

        }else{
        //nenhum formato inicial foi selecionado
        alert('É neccessário selecionar um formato para entrada de dados!')
    }
}
