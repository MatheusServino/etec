<?php

function palindromo($A){
  $B = strrev($A);
  if($A == $B){
echo "A palavra $A é uma plavra palindromo";
  }else{
    echo"A palavra $A não é palindromo";
  }
}
echo "<br>", palindromo('hannah');

?>
