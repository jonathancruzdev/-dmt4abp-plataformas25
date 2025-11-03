<?php
require_once('secciones/header.php');
require_once("secciones/nav.php");
require_once('conexion.php');
?>
<main class="container">
    <h1 class="text-center">Registro</h1>
    <form action="acciones/usuarioRegistrar.php" method="POST">
        <label for="">Nombre</label>
        <input type="text" name="nombre" required>

        <label for="">Email</label>
        <input type="email" name="email" required>

        <label for="">Contraseña</label>
        <input type="password" name="password" required>

        <button type="submit">Registrarme</button>

        <a href="login.php">¿Ya tenes una cuenta? Logueate</a>

    </form>
</main>

<?php
require_once('secciones/footer.php');
?>