<?php

//Introdução
//pode adicionar valores com tipos diferentes
$lista = array(1,2,3.4,"texto");
//Vai ser dado um alerta porque tem que ser explicito no indice 
//echo $lista.'<br>'; 
var_dump($lista);
echo '<br>';
echo '<br>'.$lista[0];
echo '<br>'.$lista[1];
echo '<br>'.$lista[2];
echo '<br>'.$lista[3];
echo '<br>';
//var_dump($lista[4]);

$aluno = array("Diego","Gabriel","Isabela");
echo $aluno[0];
echo "<br>";
echo $aluno[1];
echo "<br>";
echo $aluno[2];

$texto="Esse é um texto de teste";
echo '<br>'.$texto[0];
echo '<br>'.$texto[2];
echo '<br>'.$texto[11];
echo '<br>';

//MAPA
$dados=array(
    "idade"=>25,
    "cor"=>"verde",
    "peso"=>49.8
);

print_r($dados);
echo '<br>'.$dados["idade"];
echo '<br>'.$dados["cor"];
echo '<br>'.$dados["peso"];
echo '<br>';

$alunos = array();
$alunos = array(
    "aluno1"=>"Diego","peso1"=>60,"idade1"=>30,
    "aluno2"=>"Gabriel","peso2"=>55,"idade2"=>19,
    "aluno3"=>"Isabela","peso3"=>57,"idade3"=>25
    );
    
echo "<hr>";
print_r($alunos);

echo "<br>";
echo '<br>'.$alunos["aluno1"].' Peso= '.$alunos["peso1"].' idade = '.$alunos["idade1"];
echo '<br>'.$alunos["aluno2"].' Peso= '.$alunos["peso2"].' idade = '.$alunos["idade2"];
echo '<br>'.$alunos["aluno3"].' Peso= '.$alunos["peso3"].' idade = '.$alunos["idade3"];
echo '<br>';
echo "<hr>";

//Operações com Array
//pode ser utilizado [] no lugar da palavra array

$dados1=[
    "nome"=>"José",
    "idade"=>28
];

$dados2=[
    "naturalidade"=>"Fortaleza"
];

$dadosCompletos=$dados1+$dados2;
print_r($dadosCompletos);

echo "<hr>";
$impares=[1,3,5,7,9];
$pares=[0,2,4,6,8];

//errado
$decimais=$pares+$impares;
echo '<br>';
print_r($decimais);
echo "<hr>";

//certo desordenado
$decimais=array_merge($pares,$impares);
echo '<br>';
print_r($decimais);

echo "<hr>";

//certo ordenando
sort($decimais);
echo '<br>';
print_r($decimais);

echo '<br>';
echo '<hr>';
$meses=array(
    1=>"Janeiro",
    2=>"Fevereiro",
    3=>"Março",
    4=>"Abril",
    5=>"Maio",
    6=>"Junho",
    7=>"Julho",
    8=>"Agosto",
    9=>"Setembro",
    10=>"Outubro",
    11=>"Novembro",
    12=>"Dezembro"
);

print_r($meses);

echo '<br>'. $meses[5-2];

for($i=5; $i>=1; $i--){
    echo "<br> $meses[$i]";
}
?>