<?php
    require_once('../conexion.php');
    $email = $_POST['email'];
    $password = md5( $_POST['password'] );
    $sql = "SELECT id_usuario, nombre
            FROM usuarios
            WHERE email = '$email' AND clave = '$password'";

    $resultado = mysqli_query($conexion, $sql);
    $resultado = mysqli_fetch_all( $resultado, MYSQLI_ASSOC);

    if( $resultado) {
        // Inicio la sesión
        print_r($resultado[0]);
        $id_usuario = $resultado[0]["id_usuario"];
        $nombre = $resultado[0]["nombre"];

        echo("<h1>Bienvenido  $email</h1>");

    } else {
        echo('<h1>Usuario o contraseña invalidos </h1>');
    }
    // header('Location: ../index.php');
?>