<?php
require_once('secciones/header.php');
require_once("secciones/nav.php");
require_once('conexion.php');
?>
<main class="container">
    <h1 class="text-center">Login</h1>
    <form action="">
        <label for="">Nombre</label>
        <input type="text">

        <label for="">Contraseña</label>
        <input type="password">

        <button type="submit">Ingresar</button>

        <a href="registro.php">¿No estás registrado aun? Registrate</a>
    </form>
</main>

<?php
require_once('secciones/footer.php');
?>