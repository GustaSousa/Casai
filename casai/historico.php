<?php
    session_start();
    if((!isset($_SESSION['nome-login']) == true) and (!isset($_SESSION['senha']) == true ))
    {
        unset($_SESSION['nome-login']);
        unset($_SESSION['senha']);
        header('Location: login.php');
    }
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CASAI | Histórico </title>
    <link rel="stylesheet" href="assets//css//home.css">
</head>
<body>
    <div class="voltar">
        <a href="home.php">Voltar</a>
    </div>
    <div class="box">
        <div class="home-box">
            <a href="historico-registros.php">Histórico de Registros</a>
            <a href="historico-entradas.php">Histórico de Entradas</a>
            <a href="historico-agendamentos.php">Histórico de Agendamentos</a>
        </div>
    </div>
</body>
</html>