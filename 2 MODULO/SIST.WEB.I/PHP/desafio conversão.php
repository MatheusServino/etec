<div class= "titulo">desafio switch</div>
 
<form action="#" method="post">
    <input type="text" name="parametro" value="0">
    <select name="conversao" id="conversao">
        <option value="0">----------------</option>
        <option value="km-milha">km > Milha</option>
        <option value="milha-km">Milha > Km</option>
        <option value="metro-km">Metros > Km</option>
        <option value="km-metro">Km > Metros</option>
        <option value="cel-fah">Celsius > Fahrenheit</option>
        <option value="fah-cel">Fahrenheit > Celsius</option>
    </select>
 
    <button>Calcular</button>
 
</form>
 
<style>
    form  * {
        font-size: 1.8rem;
    }
</style>
 
<?php
 
const FATOR_KM_MILHA = 0.621371;
 
const FATOR_METRO_KM = 1000;
 
const FATOR_CEL_FAH = 1.8;
 
$param = $_POST['parametro'] ?? 0;
 
$convert = $_POST['conversao'] ?? 0;
 
switch ($convert){
    case 'km-milha':
        $distancia = $param * FATOR_KM_MILHA;
        $mensagem = "$param Km(s) = $distancia Milha(s)";
        break;
    case 'milha-km':
        $distancia = $param / FATOR_KM_MILHA;
        $mensagem = "$param Milha(s) = $distancia Km(s)";
        break;
    case 'metro-km':
        $distancia = $param / FATOR_METRO_KM;
        $mensagem = "$param metro(s) = $distancia Km(s)";
        break;
    case 'km-metro':
        $distancia = $param * FATOR_METRO_KM;
        $mensagem = "$param Km(s) = $distancia metro(s) ";
        break;
    case 'cel-fah':
        $distancia = $param * FATOR_CEL_FAH + 32;
        $mensagem = "$param cel(s) = $distancia fah(s) ";
        break;
        case 'fah-cel':
            $distancia = ($param - 32) * FATOR_CEL_FAH;
            $mensagem = "$param fah(s) = $distancia cel(s) ";
            break;
        default:
        $mensagem = "Valor nao encontrado";
    }
  
     
    echo $mensagem;
     
    ?>