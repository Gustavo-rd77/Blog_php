<?php 
require_once('includes/redireccion.php');
require_once('includes/cabecera.php');
require_once('includes/lateral.php');
?>

<div id="principal">
    <h1>Crear Entradas</h1>
    <p>
        Añade nuevas entradas para que los usuarios puedan leerlas y disfrutarlas.
    </p>
    <form action="guardar-entrada.php" method="POST">
        <label for="nombre">Titulo:</label>
        <input type="text" name="titulo">
        <?php  echo  isset($_SESSION['errores_entrada']) ?  mostrarError($_SESSION['errores_entrada'],'titulo') : ''; ?>
        <label for="nombre">Descripción:</label>
        <textarea name="descripcion"></textarea>
        <?php  echo isset($_SESSION['errores_entrada']) ? mostrarError($_SESSION['errores_entrada'],'descripcion') : '' ?>
        <label for="categoria">Categoria</label>
        <select name="categoria" id="">
            <?php 
                $categorias = conseguirCategorias($db);
                if(!empty($categorias)):
                    while($categoria = mysqli_fetch_assoc($categorias)):
            ?>
                    <option value="<?=$categoria['id']?>"><?=$categoria['nombre']?></option>
                    
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