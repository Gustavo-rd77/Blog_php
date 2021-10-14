<?php 

if(isset($_POST)){
    require_once 'includes/conexion.php';
    if(!isset($_SESSION)){
        session_start();
    }
   
    $nombre = isset( $_POST['nombre']) ? mysqli_real_escape_string($db,$_POST['nombre']) : false;
    $apellidos = isset( $_POST['apellidos']) ?  mysqli_real_escape_string($db,$_POST['apellidos']) : false;
    $email = isset($_POST['email']) ? mysqli_real_escape_string($db,trim($_POST['email'])) : false;
    $password = isset($_POST['password']) ? mysqli_real_escape_string($db,$_POST['password']) : false;
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

    if(!empty($password)){
        $password_valido = true;
    }else{
        $password_valido = false;
        $errores['password'] = "La contraseña está vacía";
    }
    $guardar_usuario = false;
    if( count($errores) == 0){
        // cifrar password

        $password_segura =  password_hash($password, PASSWORD_BCRYPT, ['cost'=>4]);
        // Insertar datos en la tabla usuarios de la DB
        $sql ="INSERT INTO usuarios VALUES (null, '$nombre', '$apellidos', '$email', '$password_segura', CURDATE())";
        $guardar = mysqli_query($db, $sql);
        if($guardar){
            $_SESSION['completado'] = 'El registro se ha completado con éxito';
            
        }else{
            $_SESSION['errores']['general'] = 'Fallo al guardar el usuario';
        }


    }else{
        $_SESSION['errores'] = $errores;
    }
    

}
header('Location: index.php');   


?>