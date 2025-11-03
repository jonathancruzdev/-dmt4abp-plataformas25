<?php
    require_once('../conexion.php');
    $nombre = $_POST['nombre'];
    $email = $_POST['email'];
    $password = md5( $_POST['password'] );
    $id_rol = 1; // Rol default Alumno
    $sql = "INSERT INTO usuarios(nombre, email, clave, id_rol)
            VALUES( '$nombre', '$email', '$password', $id_rol )";
    $resultado = mysqli_query($conexion, $sql);
    header('Location: ../index.php');
?>