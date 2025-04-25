<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <title>Titulo</title>
        <meta charset="UTF-8">
        <link rel="stylesheet"  href="estilos/estilo.css">
    </head>
    <body>
        <?php
            require_once "includes/banco.php";
            require_once "includes/funcoes.php";
        ?>
        <div id="corpo">
            <?php
                $c = $_GET['cod'] ?? 0;
                $busca = $banco->query("select * from jogos where cod='$c'");
            ?>
            <h1>Detalhes do Jogo</h1>
            <table class='detalhes'>
                
                <?php 
            
                    if(!$busca){
                        echo "<tr><td>Busca falhou! $banco->error";
                    }else{
                        if($busca->num_rows == 1){
                            $reg = $busca->fetch_object();
                            $t = thumb($reg->capa);
                            echo "<td><h1>$reg->nome</h1>";
                            echo "<h3>Nota: $reg->nota </h3>";
                            echo "<h9>$reg->descricao</h9></td>";
                            echo"<tr><img src='$t' class='medio'/>";
                            echo "Adm</tr>";
                        }else{
                            echo"<tr><td>Nenhum registro encontrado";
                        }
                    }
                ?>
            </table>
        </div>
    </body>
</html>