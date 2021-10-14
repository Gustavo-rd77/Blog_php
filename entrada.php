<?php 
require_once('includes/cabecera.php');
$entrada_actual = conseguirEntrada($db, $_GET['id']);
if(empty($entrada_actual)){
    header('Location: index.php');
}
?>
<!-- BARRA LATERAL -->
<?php  require_once('includes/lateral.php');?>
    <div id="principal">
        <h1><?= $entrada_actual['titulo']?> </h1>
        <a href="categoria.php?id=<?= $entrada_actual['categoria_id']?>">
            <h2><?= $entrada_actual['categoria']?></h2>
        </a>
        <h4><?= $entrada_actual['fecha']?> | <?= $entrada_actual['usuario']?></h4>
        <p>
            <?= $entrada_actual['descripcion']?>
        </p>
        
    <?php
        if(  isset($_SESSION['usuario']) &&  $_SESSION['usuario']['id'] === $entrada_actual['usuario_id']):  
    ?>      
            <br>
            <a href="editar-entrada.php?id=<?=$entrada_actual['id']?>" class="boton boton-verde">Editar entrada</a>
            <a href="borrar-entrada.php?id=<?=$entrada_actual['id']?>" class="boton">Borrar entrada</a>
    <?php
        endif;
    ?>
    </div>

      
    <!-- FOOTER -->
<?php 
require_once('includes/footer.php');
?>
</body>
</html>