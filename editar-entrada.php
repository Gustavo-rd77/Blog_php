<?php 
require_once('includes/redireccion.php');
require_once('includes/cabecera.php');
require_once('includes/lateral.php');
$entrada_actual = conseguirEntrada($db, $_GET['id']);
if(empty($entrada_actual)){
    header('Location: index.php');
}
?>

<div id="principal">
    <h1>Editar Entrada <?= $entrada_actual['titulo']?> </h1>
    <p>
        EDITA TU ENTRADA
    </p>
    <form action="guardar-entrada.php?editar=<?= $entrada_actual['id']?>" method="POST">
        <label for="nombre">Titulo:</label>
        <input type="text" name="titulo" value="<?= $entrada_actual['titulo']?>">
        <?php  echo  isset($_SESSION['errores_entrada']) ?  mostrarError($_SESSION['errores_entrada'],'titulo') : ''; ?>
        <label for="nombre">Descripción:</label>
        <textarea name="descripcion"><?= $entrada_actual['descripcion']?></textarea>
        <?php  echo isset($_SESSION['errores_entrada']) ? mostrarError($_SESSION['errores_entrada'],'descripcion') : '' ?>
        <label for="categoria">Categoria</label>
        <select name="categoria" id="">
            <?php 
                $categorias = conseguirCategorias($db);
                if(!empty($categorias)):
                    while($categoria = mysqli_fetch_assoc($categorias)):
            ?>
                    <option value="<?=$categoria['id']?>"
                    <?= $categoria['id'] == $entrada_actual['categoria_id'] ? 'selected':'' ?>>
                    <?=$categoria['nombre']?></option>
                    
            <?php 
                    endwhile;
                endif;
            ?>
        </select>
        <input type="submit" value="Guardar">
    </form>
    <?php borrarErrores(); ?>
</div>

    <!-- FOOTER -->
<?php 
require_once('includes/footer.php');
?>
</body>
</html>