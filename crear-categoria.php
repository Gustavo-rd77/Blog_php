<?php 
require_once('includes/redireccion.php');
require_once('includes/cabecera.php');
require_once('includes/lateral.php');
?>

<div id="principal">
    <h1>Crear categoria</h1>
    <p>
        Añade nuevas caregorias pra que los usuarios puedan usarlas al crear sus entradas.
    </p>
    <form action="guardar-categoria.php" method="POST">
        <label for="nombre">Nombre</label>
        <input type="text" name="nombre">
        <input type="submit" value="Guardar">
    </form>
</div>

    <!-- FOOTER -->
<?php 
require_once('includes/footer.php');
?>