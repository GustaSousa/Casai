<?php
 session_start();
 include('config.php');
 if((!isset($_SESSION['nome-login']) == true) and (!isset($_SESSION['senha']) == true )){
     unset($_SESSION['nome-login']);
     unset($_SESSION['senha']);
     header('Location: login.php');
    }
    
$hoje = date('Y/m/d');
$hoje_dois = date('d/m/Y');
$sql = "SELECT * FROM entradas WHERE data_Entrada <= '$hoje' AND data_Saida >= '$hoje' ORDER BY nome ASC";
$result = $conexao->query($sql);

$sqlTodos = "SELECT etnia FROM entradas WHERE data_Entrada <= '$hoje' AND data_Saida >= '$hoje'";
$resultTodos = $conexao->query($sqlTodos);
$sqlAtikum = "SELECT etnia FROM entradas WHERE data_Entrada <= '$hoje' AND data_Saida >= '$hoje' AND etnia='Atikum'";
$resultAtikum = $conexao->query($sqlAtikum);
$sqlAtikumSalgueiro = "SELECT etnia FROM entradas WHERE data_Entrada <= '$hoje' AND data_Saida >= '$hoje' AND etnia='Atikum Salgueiro'";
$resultAtikumSalgueiro = $conexao->query($sqlAtikumSalgueiro);
$sqlFunilo = "SELECT etnia FROM entradas WHERE data_Entrada <= '$hoje' AND data_Saida >= '$hoje' AND etnia='Funil-Ô'";
$resultFunilo = $conexao->query($sqlFunilo);
$sqlKambiwa = "SELECT etnia FROM entradas WHERE data_Entrada <= '$hoje' AND data_Saida >= '$hoje' AND etnia='Kambiwá'";
$resultKambiwa = $conexao->query($sqlKambiwa);
$sqlKapinawa = "SELECT etnia FROM entradas WHERE data_Entrada <= '$hoje' AND data_Saida >= '$hoje' AND etnia='Kapinawá'";
$resultKapinawa = $conexao->query($sqlKapinawa);
$sqlPankara = "SELECT etnia FROM entradas WHERE data_Entrada <= '$hoje' AND data_Saida >= '$hoje' AND etnia='Pankará'";
$resultPankara = $conexao->query($sqlPankara);
$sqlPankararu = "SELECT etnia FROM entradas WHERE data_Entrada <= '$hoje' AND data_Saida >= '$hoje' AND etnia='Pankararu'";
$resultPankararu = $conexao->query($sqlPankararu);
$sqlPankararuEntreSerras = "SELECT etnia FROM entradas WHERE data_Entrada <= '$hoje' AND data_Saida >= '$hoje' AND etnia='Pankararu Entre Serras'";
$resultPankararuEntreSerras = $conexao->query($sqlPankararuEntreSerras);
$sqlPipipa = "SELECT etnia FROM entradas WHERE data_Entrada <= '$hoje' AND data_Saida >= '$hoje' AND etnia='Pipipã'";
$resultPipipa = $conexao->query($sqlPipipa);
$sqlTruka = "SELECT etnia FROM entradas WHERE data_Entrada <= '$hoje' AND data_Saida >= '$hoje' AND etnia='Truká'";
$resultTruka = $conexao->query($sqlTruka);
$sqlTrukaOroco = "SELECT etnia FROM entradas WHERE data_Entrada <= '$hoje' AND data_Saida >= '$hoje' AND etnia='Truká Orocó'";
$resultTrukaOroko = $conexao->query($sqlTrukaOroco);
$sqlTuxa = "SELECT etnia FROM entradas WHERE data_Entrada <= '$hoje' AND data_Saida >= '$hoje' AND etnia='Tuxá'";
$resultTuxa = $conexao->query($sqlTuxa);
$sqlTuxi = "SELECT etnia FROM entradas WHERE data_Entrada <= '$hoje' AND data_Saida >= '$hoje' AND etnia='Tuxí'";
$resultTuxi= $conexao->query($sqlTuxi);
$sqlXukuruDeCimbres = "SELECT etnia FROM entradas WHERE data_Entrada <= '$hoje' AND data_Saida >= '$hoje' AND etnia='Xukuru de Cimbres'";
$resultXukuruDeCimbres = $conexao->query($sqlXukuruDeCimbres);
$sqlXukuruDeOroruba = "SELECT etnia FROM entradas WHERE data_Entrada <= '$hoje' AND data_Saida >= '$hoje' AND etnia='Xukuru de Ororubá'";
$resultXukuruDeOroruba = $conexao->query($sqlXukuruDeOroruba);
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>CASAI | Cozinha</title>
    <link rel="stylesheet" href="assets//css//cozinha.css">
    <style>
        table{
            border-collapse: collapse;
        }
      
        td, tr, th{
            border: 1px solid white; 
            padding: 10px;
        }

    </style>
</head>
<body>
    <div class="voltar">
        <a href="home.php">Voltar</a>
    </div>

    <br>

    <div class="box-download">
        <a href="#cozinha" download="cozinha_<?php echo $hoje_dois; ?>.xls">
        <button class="download-button"><img src="assets//img//svg//print.svg" alt="Icone de uma impressora"><p>Baixar</p></button>
        </a>
    </div>
    
    <div class="box-data">
        <h2><?php echo $hoje; ?></h2>
    </div>
    
    <br>
    
    <div class="box-info">
        <p>Todos: <?php echo mysqli_num_rows($resultTodos)?></p>
        <p>Atikum: <?php echo mysqli_num_rows($resultAtikum)?></p>
        <p>Atikum Salgueiro: <?php echo mysqli_num_rows($resultAtikumSalgueiro)?></p>
        <p>Funil-Ô: <?php echo mysqli_num_rows($resultFunilo)?></p>
        <p>Kambiwá: <?php echo mysqli_num_rows($resultKambiwa)?></p>
        <p>Kapinawá: <?php echo mysqli_num_rows($resultKapinawa)?></p>
        <p>Pankará: <?php echo mysqli_num_rows($resultPankara)?></p>
        <p>Pankararu: <?php echo mysqli_num_rows($resultPankararu)?></p>
        <p>Pankararu Entre Serras: <?php echo mysqli_num_rows($resultPankararuEntreSerras)?></p>
        <p>Pipipã: <?php echo mysqli_num_rows($resultPipipa)?></p>
        <p>Truká: <?php echo mysqli_num_rows($resultTruka)?></p>
        <p>Truká Orocó: <?php echo mysqli_num_rows($resultTrukaOroko)?></p>
        <p>Tuxá: <?php echo mysqli_num_rows($resultTuxa)?></p>
        <p>Tuxí: <?php echo mysqli_num_rows($resultTuxi)?></p>
        <p>Xukuru de Cimbres: <?php echo mysqli_num_rows($resultXukuruDeCimbres)?></p>
        <p>Xukuru de Ororubá: <?php echo mysqli_num_rows($resultXukuruDeOroruba)?></p>
    </div>

    <div id="cozinha">
        <table>
            
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Nome</th>
                    <th scope="col">Tipo de Hospedagem</th>
                    <th scope="col">data de Entrada</th>
                    <th scope="col">data de Saida</th>
                    <th scope="col">Observações</th>
                </tr>
            </thead>

            <tbody>     
                <?php 
                    while($entradas_data = mysqli_fetch_assoc($result))
                    {
                        echo "<tr>";
                        echo "<td>".$entradas_data['identradas']."</td>";
                        echo "<td>".$entradas_data['nome']."</td>";
                        echo "<td>".$entradas_data['tipo_Hospedagem']."</td>";
                        echo "<td>".$entradas_data['data_Entrada']."</td>";
                        echo "<td>".$entradas_data['data_Saida']."</td>";
                        echo "<td>".$entradas_data['observacoes']."</td>";
                        echo "</tr>";
                    }
                ?>
            </tbody>

        </table>
    </div>

</body>
<script type="text/javascript">
        function tableToCSV() {
 
            var csv_data = [];
 
            var rows = document.getElementsByTagName('tr');
            for (var i = 0; i < rows.length; i++) {
 
                var cols = rows[i].querySelectorAll('td,th');
 
                var csvrow = [];
                for (var j = 0; j < cols.length; j++) {
 
                    csvrow.push(cols[j].innerHTML);
                }
 
                csv_data.push(csvrow.join(","));
            }
 
            csv_data = csv_data.join('\n');
 
            downloadCSVFile(csv_data);
 
        }
 
        function downloadCSVFile(csv_data) {
 
            CSVFile = new Blob([csv_data], {
                type: "text/csv"
            });
 
            var temp_link = document.createElement('a');

            temp_link.download = "GfG.xls";
            var url = window.URL.createObjectURL(CSVFile);
            temp_link.href = url;
 
            temp_link.style.display = "none";
            document.body.appendChild(temp_link);
 
            temp_link.click();
            document.body.removeChild(temp_link);
        }
</script>
</html>