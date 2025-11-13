<?php
  require_once("conexion.php");
  require_once("secciones/header.php");
  require_once("secciones/nav.php");

    // Escribimos la consulta SQL
    $sql = "SELECT id_carrera, nombre, imagen 
                FROM carreras";
    // Ejecuto la consulta
    $resultado = mysqli_query($conexion, $sql);
    // Formateamos los datos
    $carreras = mysqli_fetch_all( $resultado, MYSQLI_ASSOC);

?>  


<main>
        <?php
            if( $logueado == true) {
                echo( "<h2 class='text-center'>Hola $nombre</h2>");
            }
        ?>
       
        <div class="card-container">
            <?php
                for($i=0; $i< count($carreras); $i++){
                    $id_carrera = $carreras[$i]["id_carrera"];
                    $nombre = $carreras[$i]["nombre"];
                    $imgUrl = $carreras[$i]["imagen"];
                    echo("<div class='info-card'>
                                <div class='card-image-placeholder analyst'>
                                    <img src='$imgUrl' alt='$nombre'>
                                    <h4 class='text-white'> $nombre </h4>
                                </div>
                            <div class='card-content'>
                                
                                <a href='detalle.php?id=$id_carrera' class='register-button'>Ver más</a>
                            </div>
                            </div>");
                }

            ?>
            
     
        </div>
    </main>

<?php
  require_once("secciones/footer.php");
?>




