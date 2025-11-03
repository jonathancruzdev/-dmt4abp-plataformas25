    <?php
        // Escribimos la consulta SQL
        $sql = "SELECT id_carrera, nombre, imagen 
                FROM carreras";
        // Ejecuto la consulta
        $resultado = mysqli_query($conexion, $sql);
        // Formateamos los datos
        $carreras = mysqli_fetch_all( $resultado, MYSQLI_ASSOC);

        // Array Asociativo
        $usuario = [
            "nombre" => "Jonathan",
            "email"  => "Jonathan@dv.edu.ar",
            "id_rol" => 2
        ];
        $nombre = $usuario["nombre"];
    ?>
    <main>
        <h2>Hola <?php echo($nombre); ?></h2>
        <div class="card-container">
            <?php
                for($i=0; $i<4; $i++){
                    $id_carrera = $carreras[$i]["id_carrera"];
                    $nombre = $carreras[$i]["nombre"];
                    $imgUrl = $carreras[$i]["imagen"];
                    echo("<div class='info-card'>
                                <div class='card-image-placeholder analyst'>
                                    <img src='$imgUrl' alt='>
                                </div>
                            <div class='card-content'>
                                <h4 class='text-white'> $nombre </h4>
                                <a href='detalle.php?id=$id_carrera' class='register-button'>Ver más</a>
                            </div>
                            </div>");
                }

            ?>
            
     
        </div>
    </main>