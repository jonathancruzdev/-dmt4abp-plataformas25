    <?php
        // Escribimos la consulta SQL
        $sql = "SELECT id_carrera, nombre, imagen 
                FROM carreras";
        // Ejecuto la consulta
        $resultado = mysqli_query($conexion, $sql);
        // Formateamos los datos
        $carreras = mysqli_fetch_all( $resultado, MYSQLI_ASSOC);
/* 
        $carreras = [
            [ "nombre" => "Cine", "imagen" => "images/cine.jpg", "nombre" => "s" ],
            [ "nombre" => "Diseño Gráfico", "imagen" => "images/grafico.jpg" ],
            [ "nombre" => "Diseño Web", "imagen" => "images/web.jpg" ],
            [ "nombre" => "Video Juegos", "imagen" => "images/juegos.jpg" ],
            [ "nombre" => "Analista de Sistemas", "imagen" => "images/sistemas.jpg" ]
        ]; */
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
                    $nombre = $carreras[$i]["nombre"];
                    $imgUrl = $carreras[$i]["imagen"];
                    echo("<div class='info-card'>
                                <div class='card-image-placeholder analyst'>
                                    <img src='$imgUrl' alt='>
                                </div>
                            <div class='card-content'>
                                <h4 class='text-white'> $nombre </h4>
                                <button class='register-button'>Ver más</button>
                            </div>
                            </div>");
                }

            ?>
            
     
        </div>
    </main>