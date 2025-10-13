<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PHP</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header>
        <h1> Programación con PHP</h1>
    </header>

    <?php
        // comentario
        $nombre = "Juan";
        $nombre2 = "Pepito";
        $edad = 25;
        echo("<h2>Soy $nombre </h2>");
        echo("Hola " . $nombre2);

        if( $edad > 18){
            echo("<h4 class='verde'>Sos mayor de edad</h4>");
        } else {
            echo("<h4 class='rojo'>Sos menor de edad</h4>");
        }
    ?>
</body>
</html>

<h1> HTML </h1>