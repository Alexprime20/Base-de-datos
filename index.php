<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>CRUD</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>

<body>
    <div class="container">
        <h1 class="text-center" style="background-color: black; color: white">COLECCION DE COMICS</h1>
    </div>
    <br>
    <br>
    <br>
    <br>
    <div class="container">
        <div class="container">
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">ID COMIC</th>
                        <th scope="col">TITULO</th>
                        <th scope="col">FECHA DE PUBLICACION</th>
                        <th scope="col">GENERO</th>
                        <th scope="col">NRO DE EDICION</th>
                        <th scope="col">AUTOR</th>
                        <th scope="col">EDITORIAL</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    require("config/conexion.php");

                    $sql = $conexion->query("SELECT * FROM comics
                        INNER JOIN autores ON comics.ID_Autor = autores.ID_Autor
                        INNER JOIN editoriales ON comics.ID_Editorial = editoriales.ID_Editoriales
                        INNER JOIN genero ON comics.ID_Genero = genero.ID_Genero
                        INNER JOIN autor ON autores.ID_autor = autor.ID_Autor
                    ");

                    if ($sql === false) {
                        echo "Error en la consulta: " . $conexion->error;
                    } else {
                        while ($resultado = $sql->fetch_assoc()) {
                            ?>
                            <tr>
                                <th scope="row"><?php echo $resultado['ID_Comic'] ?></th>
                                <th scope="row"><?php echo $resultado['Titulo'] ?></th>
                                <th scope="row"><?php echo $resultado['Fecha_Publicacion'] ?></th>
                                <th scope="row"><?php echo $resultado['Genero'] ?></th>
                                <th scope="row"><?php echo $resultado['Nro_Edicion'] ?></th>
                                <th scope="row"><?php echo $resultado['ID_Autor'] ?></th>
                                <th scope="row"><?php echo $resultado['ID_Editorial'] ?></th>
                                <th>
                                    <a href="" class="btn btn-warning">Editar</a>
                                    <a href="" class="btn btn-danger">Elimiar</a>
                                </th>
                            </tr>
                            <?php
                        }
                    }
                    ?>
                </tbody>
            </table>
            <div class="container">
                <a href="Formularios/AgregarForm.php" class="btn btn-success">Agregar Comic</a>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>
</body>

</html>
