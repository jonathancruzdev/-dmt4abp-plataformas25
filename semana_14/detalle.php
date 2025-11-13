<?php
    require_once("conexion.php");
    require_once("secciones/header.php");
    require_once("secciones/nav.php");
    $id_carrera = $_GET['id'];
    // Obtenemos los datos de la Carrera
    $sql = "SELECT id_carrera, nombre, imagen, descripcion 
            FROM carreras
            WHERE id_carrera = $id_carrera";
    $resultado = mysqli_query($conexion, $sql);
    $carrera = mysqli_fetch_all( $resultado, MYSQLI_ASSOC)[0];
  
    $nombre = $carrera['nombre'];
    $imagen = $carrera['imagen'];
    $descripcion = $carrera['descripcion'];

    // Obtenemos las materias
    $sqlMaterias = "SELECT id_materia, nombre, descripcion
                    FROM materias
                    WHERE id_carrera = $id_carrera";
    $resultadoMaterias = mysqli_query($conexion, $sqlMaterias);
    $materias = mysqli_fetch_all( $resultadoMaterias, MYSQLI_ASSOC);
  
?>
<main class="card-container">
    <h2>Detalle de la Carrera <?php echo($nombre); ?></h2>
    
    <div class="row">
      <div class="col">
        <img src="<?php echo($imagen); ?>" alt="<?php echo($nombre);?>" class="img-fluid">
      </div>
      <div class="col flex-col">
        <p><?php echo($descripcion); ?></p>
        <hr>
        <h4>Materias</h4>
        <div class="card-container">
           <ul class="p-4">
            <?php
              for($i=0; $i< count($materias); $i++){
                  $id_materia = $materias[$i]["id_materia"];
                  $nombre = $materias[$i]["nombre"];
                  $descripcion = $materias[$i]["descripcion"];
                  echo("
                        <li> <strong>$nombre </strong> 
                        <p> $descripcion</p></li>
                  ");
              }
            ?>
            </ul>
        </div>
        
      </div>
    </div>

    <hr>

    <div class="row">
      <div class="col flex-col">
        <h2>Incripción a Carrera</h2>
        <p>
          Lorem ipsum dolor sit amet consectetur adipisicing elit. Similique facere a animi dicta, nesciunt sunt voluptatum fuga mollitia placeat, magnam inventore adipisci sint harum aut, alias totam dolorem laudantium aspernatur.
        </p>
      </div>
      <div class="col flex-col">
            <form action="acciones/usuarioInscripcion.php?id_carrera=<?php echo($id_carrera);?>" method="post">
              <label for="detalle">Detalle</label>
              <textarea name="detalle" id="detalle"></textarea>
              <button type="submit"> Inscribirme</button>
            </form>
      </div>
    </div>
</main>

<?php
  require_once("secciones/footer.php");
?>