<?php
    session_start();
    require_once('../conexion.php');
    if( ! isset( $_POST['detalle'] )  ) {
        header('Location: ../index.php');

    }
    $detalle = $_POST['detalle'];
    $id_carrera = $_GET['id_carrera'];
    $id_usuario = $_SESSION['id_usuario'];
    $fecha = date('Y-m-d');

    
    $sql = "INSERT INTO inscripciones(id_carrera, fecha, id_usuario, detalle)
            VALUES( $id_carrera, '$fecha', $id_usuario, '$detalle' )";
    $resultado = mysqli_query($conexion, $sql);
    header("Location: ../detalle.php?id=$id_carrera");

?>