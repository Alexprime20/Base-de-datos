<?php


$host = "localhost";
$user = "root";
$pass = "";
$db = "coleccion_de_comics";

$conexion = new mysqli($host, $user, $pass, $db);

if (!$conexion) {
    echo "conexion fallida";
}

