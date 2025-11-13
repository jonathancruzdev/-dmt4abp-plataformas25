# Semana 12
## 🎯 Temas
- Página Maestro y detalle
- Filtrado por categorías
- Formularios y Método POST
- Guardar datos en la base de Datos

``` php

    if( isset( $_GET['id'])){
        $id = $_GET['id'];
        $sql = "SELECT id_carrera, nombre, descripcion
                FROM carreras
                WHERE id_carrera = $id";
        $resultado = mysqli_query($conexion, $sql);
        $carrera = mysqli_fetch_all( $resultado, MYSQLI_ASSOC);
    }

```