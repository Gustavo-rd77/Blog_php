<?php 
require_once('includes/cabecera.php');
$categoria = conseguirCategoria($db, $_GET['id']);
if(empty($categoria)){
    header('Location: index.php');
}
?>
<!-- BARRA LATERAL -->
<?php  require_once('includes/lateral.php');?>
    <div id="principal">
        <h1>Entradas de <?= $categoria['nombre']?> </h1>
        <?php 
            $entradas = conseguirEntradas($db, null, $_GET['id']);
            if(!empty($entradas) && mysqli_num_rows($entradas) >= 1):
                while($entrada = mysqli_fetch_assoc($entradas)):
        ?>
            <article class="entrada">
            <a href="entrada.php?id=<?= $entrada['id']?>">
            <h2><?=$entrada['titulo'] ?></h2>
            <span class="fecha"><?=$entrada['categoria'].' '.$entrada['fecha']?></span>
            <p>
                <?= substr($entrada['descripcion'] ,0,180).' ...'?>
            </p>
            </a>
        </article>
        <?php 
                endwhile;
            else:
        ?>
            <div class="alerta">No se encontraron entradas para esta categoria</div>
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