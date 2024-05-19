<?php
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


$sql = "INSERT INTO comics (Titulo, Fecha_Publicacion, ID_Genero, Nro_Edicion, ID_Autor,  ID_Editorial) VALUES 
('$genero', '$titulo', '$FechaPublicacion', '$NroEdicion', '$Autor', '$Editorial')";

$resultado = mysqli_query($conexion, $sql);
echo $resultado;

if ($resultado === TRUE) {

    header('location:../index.php');
} else {
    echo "Datos NO insertados";
}