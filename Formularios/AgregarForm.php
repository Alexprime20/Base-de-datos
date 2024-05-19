<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Agregar comic</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>

<body>
    <h1 class="bg-black p-2 text-white text-center">Agregar Comics</h1>
    <br>
    <br>
    <br>
    <br>
    <div class="container">
            <form action="../CRUD/insertarDatos.php" method="POST">
            <div class="mb-3">
                <label class="form-label">Titulo</label>
                <input type="text" class="form-control" name="Titulo">
            </div>

            <div class="mb-3">
                <label class="form-label">Fecha De Publicacion</label>
                <input type="text" class="form-control" name="FechaPublicacion">
            </div>

            <div class="mb-3">
                <label class="form-label">Nro Edicion</label>
                <input type="text" class="form-control" name="NroEdicion">
            </div>

            <div class="mb-3">
                <label class="form-label">Autor</label>
                <input type="text" class="form-control" name="Autor">
            </div>

            <div class="mb-3">
                <label class="form-label">Editorial</label>
                <input type="text" class="form-control" name="Editorial">
            </div>

            <div class="mb-3">
                <label class="form-label" for="Genero">Genero</label>
                <select class="form-select mb-3" name="ID_Genero" id="ID_Genero">
                    <option selected disabled>--Seleccione el Genero--</option>
                    <?php
                    // Mostrar errores PHP
                    error_reporting(E_ALL);
                    ini_set('display_errors', 1);

                    include ("../config/conexion.php");

                    $sql = $conexion->query("SELECT * FROM Genero");
                    if ($sql) {
                        while ($resultado = $sql->fetch_assoc()) {
                            echo "<option value='" . $resultado['ID_Genero'] . "'>" . $resultado['NombreGenero'] . "</option>";
                        }
                    } else {
                        echo "<option disabled>Error en la consulta</option>";
                    }
                    ?>
                </select>
            </div>

            <div class="text-center">
                <button type="submit" class="btn btn-danger">Enviar</button>
                <a href="../index.php" class="btn btn-dark">Regresar</a>
            </div>
        </form>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>

</html>