<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <title>Listagem de Jogos</title>
        <meta charset="UTF-8">
        <link rel="stylesheet"  href="estilos/estilo.css">
    </head>
    <body>
        <?php
            require_once "includes/banco.php";
            require_once "includes/funcoes.php";
            $ordem =$_GET['o'] ?? "n";  //recebe 'o' se nao recerber fica 'n'
        ?>
        <div id="corpo">
            <?php include_once "topo.php"; ?>
            <h1>Escolha seu jogo</h1>

            <form method="get" id="busca" action="index.php">
                Ordenar:
                

            <table class="listagem">
                <?php
                    $busca = $banco->query("select * from jogos order by nome");
                    if(!$busca){
                        echo "<tr><td>Infelizmente a sua busca deu errado";
                    }else{
                        if($busca->num_rows==0){
                            echo"<tr><td>Nenhum registro encontrado";
                        }else{
                            while($reg=$busca->fetch_object()){
                                $t = thumb($reg->capa);
                                echo"<tr><td><img src='$t' class='mini'/>";
                                echo"<td><a href='detalhes.php?cod=$reg->cod'>$reg->nome</a>";
                                echo"<td>Adm";
                            }
                        }
                    }
                ?>
            </table>
        </div>
        <?php $banco->close();?>
    </body>
</html>  
