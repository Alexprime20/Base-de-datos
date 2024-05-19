<?php

error_reporting(E_ALL);
ini_set('display_errors', 1);


include ("../config/conexion.php");


if (!$conexion) {
    die("Error al conectar con la base de datos: " . mysqli_connect_error());
}


$genero = isset($_POST['ID_Genero']) ? $_POST['ID_Genero'] : '';
$titulo = isset($_POST['Titulo']) ? $_POST['Titulo'] : '';
$FechaPublicacion = isset($_POST['FechaPublicacion']) ? $_POST['FechaPublicacion'] : '';
$NroEdicion = isset($_POST['NroEdicion']) ? $_POST['NroEdicion'] : '';
$Autor = isset($_POST['Autor']) ? $_POST['Autor'] : '';
$Editorial = isset($_POST['Editorial']) ? $_POST['Editorial'] : '';


$sql = "INSERT INTO comics (ID_Genero, Titulo, Fecha_Publicacion, Nro_Edicion, ID_Autor, ID_Editorial) VALUES 
('$genero', '$titulo', '$FechaPublicacion', '$NroEdicion', '$Autor', '$Editorial')";


echo $sql;


$resultado = mysqli_query($conexion, $sql);


if ($resultado === TRUE) {

    header('location:../index.php');
} else {

    echo "Error al insertar datos: " . mysqli_error($conexion);
}
?>