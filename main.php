<?php
//inicio de conexion a mysql
include("conexion.php");
$con = new mysqli($host, $user, $pw, $bd);
//fin de conexion


$long = readline("Digite la longitud del codigo: ");
$repetir = readline("Cuantos codigos desea:");
$valores_aTomar = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
$list_codigos = [];
$ruta = "D:\mi_ruta.csv";
$url= 'https://webhook.site/2e411fb0-5d8b-4305-80e4-3e258f268952';

//logica para generacion de codigos alfanumericos
function generar_codigo($input, $strength = 15){
    $random_string = '';
    for ($i = 0; $i < $strength; $i++) {
        $random_character = $input[mt_rand(0, strlen($input) - 1)];
        $random_string .= $random_character;
    }
    return $random_string;
}

function generarCSV($arreglo, $ruta, $delimitador, $encapsulador){
    $file_handle = fopen($ruta, 'w');
    fputcsv($file_handle, $arreglo, $delimitador, $encapsulador);
    rewind($file_handle);
    fclose($file_handle);
  }
//guarda codigos en una lista
for ($i = 0; $i < $repetir; $i++) {
    $valor_azar = generar_codigo($valores_aTomar, $long);
    array_push($list_codigos, $valor_azar);
}
//insercion de datos a mysql
foreach ($list_codigos as $codigo) {
    $query = $con->query("INSERT INTO codigo(digito) VALUES('$codigo')");
    echo $codigo;
}

generarCSV($list_codigos, $ruta, $delimitador = ';', $encapsulador = '"');

//envio de datos por post a la api
$ch = curl_init($url);
$payload = json_encode(array("digito" => $list_codigos));
curl_setopt($ch, CURLOPT_POSTFIELDS, $payload);
curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type:application/json'));
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
$result = curl_exec($ch);
curl_close($ch);
