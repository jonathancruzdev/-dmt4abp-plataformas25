<?php
    require_once('secciones/header.php');
    require_once("secciones/nav.php");
    require_once('conexion.php');
?>
<main class="container">
    <h1>Registro</h1>
    <form action="">
        <label for="">Nombre</label>
        <input type="text">

        <label for="">Email</label>
        <input type="email">

        <label for="">Contraseña</label>
        <input type="password">

        <button type="submit">Registrarme</button>
    </form>
</main>

<?php
    require_once('secciones/footer.php');
?>