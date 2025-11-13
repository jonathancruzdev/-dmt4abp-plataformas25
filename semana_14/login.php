<?php
require_once('secciones/header.php');
require_once("secciones/nav.php");
require_once('conexion.php');
?>
<main class="container">
    <h1 class="text-center">Login</h1>
    <div class="row">
        <div class="col">
            <form action="acciones/usuarioLogin.php" method="POST">
                <label for="">Email</label>
                <input type="email" name="email" required>

                <label for="">Contraseña</label>
                <input type="password" name="password" required>

                <button type="submit">Ingresar</button>

                <a href="registro.php">¿No estás registrado aun? Registrate</a>
            </form>
        </div>
        <div class="col">
            
        </div>
    </div>

</main>

<?php
require_once('secciones/footer.php');
?>