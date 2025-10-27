<?php
    require_once("conexion.php");
    require_once("secciones/header.php");
    require_once("secciones/nav.php");
    $id_carrera = $_GET['id'];
    $sql = "SELECT id_carrera, nombre, imagen, descripcion 
            FROM carreras
            WHERE id_carrera = $id_carrera";
    $resultado = mysqli_query($conexion, $sql);
    $carrera = mysqli_fetch_all( $resultado, MYSQLI_ASSOC)[0];
    //print_r($carrera);
    $nombre = $carrera['nombre'];
    $imagen = $carrera['imagen'];
    $descripcion = $carrera['descripcion'];
?>
<main>
    <h2>Detalle de la Carrera <?php echo($nombre); ?></h2>
    <hr>
    <div class="row">
      <div class="col">
        <img src="<?php echo($imagen); ?>" alt="<?php echo($nombre); ?>">
      </div>
      <div class="col">
        <p><?php echo($descripcion); ?></p>
      </div>
    </div>
</main>

<?php
  require_once("secciones/footer.php");
?>