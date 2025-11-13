<?php
    session_start();
    if( isset($_SESSION['id_usuario'])){
        $logueado = true;
        $id_usuario = $_SESSION['id_usuario'];
        $nombre = $_SESSION['nombre'];

    } else {
        $logueado = false;
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Carreras</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header>
        <img src="images/logo-dv.svg" alt="logo" class="logo">
    </header>