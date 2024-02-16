<?php
include_once('config.php');

$dia = date('d');
$mes = date('m');
$agora = $dia.'-'.$mes;
echo $agora;
shell_exec('C:\xampp\mysql\bin\mysqldump -u root casaidb > C:\BACKUPCASAI\mysql\backup-'.$agora.'.sql');
header('Location: home.php');
?>