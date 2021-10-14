<?php 

if(isset($_POST)){
    require_once 'includes/conexion.php';
    $nombre = isset( $_POST['nombre']) ? mysqli_real_escape_string($db,$_POST['nombre']) : false;
    $apellidos = isset( $_POST['apellidos']) ?  mysqli_real_escape_string($db,$_POST['apellidos']) : false;
    $email = isset($_POST['email']) ? mysqli_real_escape_string($db,trim($_POST['email'])) : false;
    // Array de errores 
    $errores = array();

    // validar datos
    if(!empty($nombre) && !is_numeric($nombre) && !preg_match("/[0-9]/",$nombre)){
        $nombre_valido = true;

    }else{
        $nombre_valido = false;
        $errores['nombre'] = "El nombre no es valido";
    }
    if(!empty($apellidos) && !is_numeric($apellidos) && !preg_match("/[0-9]/",$apellidos)){
        $apellido_valido = true;

    }else{
        $apellido_valido = false;
        $errores['apellido'] = "El apellido no es valido";
    }
    
    if(!empty($email) && filter_var($email,FILTER_VALIDATE_EMAIL)){
        $email_valido = true;

    }else{
        $email_valido = false;
        $errores['email'] = "El email no es valido";
    }

    $guardar_usuario = false;
    if( count($errores) == 0){
        // Actualizar datos en la tabla usuarios de la DB
        $usuario = $_SESSION['usuario'];
        $sql ="UPDATE usuarios SET nombre = '$nombre', apellidos = '$apellidos', email = '$email' WHERE id  = " . $usuario['id'];
        $guardar = mysqli_query($db, $sql);
        if($guardar){
            $_SESSION['completado'] = 'Tus datos se han actualizado con éxito';
            $_SESSION['usuario']['nombre']=$nombre;
            $_SESSION['usuario']['apellidos']=$apellidos;
            $_SESSION['usuario']['email']=$email;
            
        }else{
            $_SESSION['errores']['general'] = 'Fallo al actualizar el usuario';
        }


    }else{
        $_SESSION['errores'] = $errores;
    }
    

}
header('Location: mis-datos.php');   


?>