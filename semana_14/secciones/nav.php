<nav>
    <ul>
        <li>
            <a href="index.php">Inicio</a>
        </li>
        <?php
            if( $logueado == false) {
                echo( "
                        <li>
                            <a href='registro.php'>Registro</a>
                        </li>
                        <li>
                            <a href='login.php'>Login</a>
                        </li>
                ");
            } else {
                echo('<li>
                            <a href="logout.php">Logout</a>
                        </li>');
            }
        ?>


    </ul>
</nav>