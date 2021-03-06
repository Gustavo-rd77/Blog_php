<?php 
    //iniciar la sesion  y la conexión a DB
    require_once 'includes/conexion.php';
    //Recoger datos del formulario
    if(isset($_POST)){
        $email = trim($_POST['email']);
        $password = trim($_POST['password']);
        //Consulta para comprobar las credenciales del usuario 
        $sql = "SELECT * FROM usuarios WHERE email = '$email' ";
        $login = mysqli_query($db,$sql);
        if($login && mysqli_num_rows($login) == 1){
            $usuario = mysqli_fetch_assoc($login);

            //Comprobar la contraseña
            $verify = password_verify($password,$usuario['password']);
            if($verify){
                //utilizar una sesión para guardar los datos del usuario logueado
                $_SESSION['usuario'] = $usuario;
                unset($_SESSION['error_login']);
            }else{
                $_SESSION['error_login'] = 'Login incorrecto';
            }

        }else{
            //si algo falla enviar una sesión con el fallo
            $_SESSION['error_login'] = 'Login incorrecto';
        }

    }else{
        //mensaje de error
        $_SESSION['error_login'] = 'Login incorrecto';
    }
    
    // redirigir al index.php
    header('Location: index.php');
?>