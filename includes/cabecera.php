<?php 
require_once('conexion.php');
require_once 'includes/helpers.php'
?>


<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="assets/css/style.css">
    <title>BLOG  DE VIDEOJUEGOS</title>
</head>
<body>
    <!-- CABECERA -->
<header id="cabecera">
    <div id="logo">
        <a href="index.php">Blog de Videojuegos</a>
    </div>
    <!-- MENU -->  
    <nav id="menu">
        <ul>
            <li><a href="index.php">Inicio</a></li>
            <?php 
                $categorias = conseguirCategorias($db);
                while( $categoria=mysqli_fetch_assoc($categorias)) :                   
            ?>
                <li>
                  
                    <a href="categoria.php?id=<?=$categoria['id']?>"><?=  $categoria['nombre']?></a>
                </li>
            <?php endwhile; ?>
            <li><a href="#">Sobre nosostros</a></li>
            <li><a href="#">Contacto</a></li>
        </ul>
    </nav> 
    <div class="clearfix"></div>
</header>
<div id="contenedor">