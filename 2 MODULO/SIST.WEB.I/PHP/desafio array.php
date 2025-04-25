<?php
        $array = ["AAA", "BBB", "CCC", "DDD", "EEE", "GGG"];
        echo "for";
        for($i=0;$i<=5;$i++){
            if($i % 2 == 0)
            echo "<br> $array[$i]";
        }
        echo "<br>";
        echo "<br> foreach";

        foreach($array as $i=>$valor){
            if($i % 2 == 0)
        echo "<br> $i=>$valor";
        }
        echo "<br>";
        echo "<br> while";
        $i= 0 ;
        while($i <= 5){
            if($i % 2 == 0){
            echo "<br> $array[$i]";
        }
        $i++;
        }
        echo "<br>";
        echo "<br> do while";
        
        $i=0;
        do{
            if($i % 2 == 0){
                echo "<br> $array[$i]";
            }
               $i++;
            }while($i <= 5);

            
            echo "<br>";
            echo "<br> for #";

            $arr = array("#", "##", "###", "####", "#####");
            for($i=0;$i<=4;$i++){
                echo "<br> $arr[$i]";
            }
            echo "<br>";
            echo "<br> for # sem i++";

            $arr = array("#", "##", "###", "####", "#####");
            for($i=0;$i<=4;$i+=1){
                echo "<br> $arr[$i]";
            }    
    ?>