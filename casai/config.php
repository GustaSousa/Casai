<?php

    $dbHost = 'Localhost';
    $dbUsername =  'root';
    $dbPassword = '';
    $dbName = 'casaidb';

    $conexao = new mysqli($dbHost,$dbUsername,$dbPassword,$dbName);
    if ($conexao->connect_error) {
        die("Falha na conexão: " . $conexao->connect_error);
    }

    mysqli_set_charset($conexao, "utf8");

?>