function converter(){
    const number = parseInt( document.getElementById('number').value );

    if( isNaN(number) ){
        alert("Por favor, digite um número válido.")
        limpar();
    }

    const binary = number.toString(2)
    const decimal = number.toString(10)
    const hexa = number.toString(16)
    
    //cria uma tag
    const binaryResult = document.createElement("p")
    //transformando o resultado em um node(um elemento HTML)
    const nodeBinResult = document.createTextNode(binary)
    //adiciona o resultado nesta tag
    binaryResult.appendChild(nodeBinResult)
    //adiciona a tag nova ja existente
    document.getElementById('resultBinary').appendChild(binaryResult)
    

    const decimalResult = document.createElement("p")
    const nodeDecResult = document.createTextNode(decimal)
    decimalResult.appendChild(nodeDecResult)
    document.getElementById('resultDecimal').appendChild(decimalResult)


    const hexaResult = document.createElement("p")
    const nodehexResult = document.createTextNode(hexa)
    hexaResult.appendChild(nodeHexResult)
    document.getElementById('resultHexa').appendChild(hexaResult)
    

    
}
function limpar(){

}