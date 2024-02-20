-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Tempo de geração: 20/02/2024 às 17:35
-- Versão do servidor: 5.5.39
-- Versão do PHP: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de dados: `casaidb`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `administradores`
--

CREATE TABLE IF NOT EXISTS `administradores` (
`id_administradores` int(11) NOT NULL,
  `login` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `senha` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Fazendo dump de dados para tabela `administradores`
--

INSERT INTO `administradores` (`id_administradores`, `login`, `senha`) VALUES
(1, 'Gustavo', 'Betinho');

-- --------------------------------------------------------

--
-- Estrutura para tabela `agendamentos`
--

CREATE TABLE IF NOT EXISTS `agendamentos` (
`idagendamentos` int(11) NOT NULL,
  `nome` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `etnia` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hospital` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `tipo_consulta` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `data_consulta` datetime NOT NULL,
  `realizou` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Fazendo dump de dados para tabela `agendamentos`
--

INSERT INTO `agendamentos` (`idagendamentos`, `nome`, `etnia`, `hospital`, `tipo_consulta`, `data_consulta`, `realizou`) VALUES
(1, 'gustavó', 'Pankará', 'Real Hospital Portugues', 'Hemograma', '2024-02-23 11:04:00', ''),
(2, 'Juãozinho pé', 'Truká Orocó', 'Hospital de Câncer de Pernambuco', 'Mamografia', '2024-02-24 12:30:00', ''),
(3, 'Pedro Augustus de Simões', 'Atikum', 'Hospital de Câncer de Pernambuco', 'Eletrocardiograma', '2024-02-23 10:20:00', ''),
(4, 'Pedrinho', '', 'Hospital de Câncer de Pernambuco', 'Mamografia', '2024-02-23 10:20:00', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `entradas`
--

CREATE TABLE IF NOT EXISTS `entradas` (
`identradas` int(11) NOT NULL,
  `nome` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `etnia` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tipo_Hospedagem` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `hospital` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tipo_Consulta` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data_consulta` datetime DEFAULT NULL,
  `observacoes` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `realizou` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data_Entrada` datetime DEFAULT NULL,
  `data_Saida` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Fazendo dump de dados para tabela `entradas`
--

INSERT INTO `entradas` (`identradas`, `nome`, `etnia`, `tipo_Hospedagem`, `hospital`, `tipo_Consulta`, `data_consulta`, `observacoes`, `realizou`, `data_Entrada`, `data_Saida`) VALUES
(1, 'gustavó', 'Pankará', 'Paciente', 'Real Hospital Portugues', 'Hemograma', '2024-02-22 13:00:00', 'teste de obs', NULL, '2024-02-17 10:30:00', '2024-02-27 10:30:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `registros`
--

CREATE TABLE IF NOT EXISTS `registros` (
`id` int(11) NOT NULL,
  `nome` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `nome_tradicional` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sexo` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `data_nascimento` date NOT NULL,
  `indigena` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `etnia` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `aldeia` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cpf` varchar(14) COLLATE utf8_unicode_ci NOT NULL,
  `rg` varchar(14) COLLATE utf8_unicode_ci NOT NULL,
  `cartao_sus` varchar(18) COLLATE utf8_unicode_ci NOT NULL,
  `complemento` varchar(110) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Fazendo dump de dados para tabela `registros`
--

INSERT INTO `registros` (`id`, `nome`, `nome_tradicional`, `sexo`, `data_nascimento`, `indigena`, `etnia`, `aldeia`, `cpf`, `rg`, `cartao_sus`, `complemento`) VALUES
(1, 'Juãozinho pé', 'João Peregrino', 'Masculino', '2006-02-14', 'Sim', 'Truká Orocó', 'seilá', '151.515.161-16', '8.888.888', '', ''),
(2, 'gustavó', 'gustavô', 'Masculino', '2003-04-30', 'Sim', 'Pankará', '', '123.213.213-21', '1.231.231', '123 2132 1321 3213', ''),
(3, 'Pedro Augustus de Simões', 'Null', 'Masculino', '1970-02-20', 'Sim', 'Atikum', 'Carneiro', '540.125.554-00', '8.484.848.484', '948 4564 5456 8484', 'pedro.augustus@gmail.com');

-- --------------------------------------------------------

--
-- Estrutura stand-in para view `view_agendamentos`
--
CREATE TABLE IF NOT EXISTS `view_agendamentos` (
`NOME` varchar(45)
,`IDADE` bigint(21)
,`ETNIA` varchar(45)
,`HOSPITAL` varchar(45)
,`ESPECIALIDADE` varchar(20)
,`DATA_HORA` datetime
,`OBSERVACAO` varchar(110)
,`CHECK` varchar(3)
);
-- --------------------------------------------------------

--
-- Estrutura stand-in para view `view_agendamentos_entradas_unificadas`
--
CREATE TABLE IF NOT EXISTS `view_agendamentos_entradas_unificadas` (
`NOME` varchar(45)
,`IDADE` bigint(21)
,`ETNIA` varchar(45)
,`HOSPITAL` varchar(45)
,`ESPECIALIDADE` varchar(20)
,`DATA_HORA` datetime
,`OBSERVACAO` varchar(110)
,`CHECK` varchar(3)
);
-- --------------------------------------------------------

--
-- Estrutura stand-in para view `view_entradas_pacientes`
--
CREATE TABLE IF NOT EXISTS `view_entradas_pacientes` (
`NOME` varchar(45)
,`IDADE` bigint(21)
,`ETNIA` varchar(45)
,`HOSPITAL` varchar(45)
,`ESPECIALIDADE` varchar(20)
,`DATA_HORA` datetime
,`OBSERVACAO` varchar(45)
,`CHECK` varchar(3)
);
-- --------------------------------------------------------

--
-- Estrutura stand-in para view `view_entradas_registros_hospedados`
--
CREATE TABLE IF NOT EXISTS `view_entradas_registros_hospedados` (
`tipo_Hospedagem` varchar(12)
,`NOME` varchar(45)
,`DATA_NSC` date
,`IDADE` int(6)
,`CPF` varchar(14)
,`RG` varchar(14)
,`GENERO` varchar(9)
,`OBS` varchar(45)
,`DATA HORA` datetime
,`DATA HORA2` datetime
,`PERMANENCIA_DIAS` int(7)
);
-- --------------------------------------------------------

--
-- Estrutura stand-in para view `view_entradas_registros_sequencia`
--
CREATE TABLE IF NOT EXISTS `view_entradas_registros_sequencia` (
`tipo_Hospedagem` varchar(12)
,`NOME` varchar(45)
,`DATA_NSC` date
,`IDADE` int(6)
,`CPF` varchar(14)
,`RG` varchar(14)
,`GENERO` varchar(9)
,`OBS` varchar(45)
,`DATA HORA` datetime
,`DATA HORA2` datetime
,`PERMANENCIA_DIAS` int(7)
);
-- --------------------------------------------------------

--
-- Estrutura para view `view_agendamentos`
--
DROP TABLE IF EXISTS `view_agendamentos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_agendamentos` AS select `ag`.`nome` AS `NOME`,(case when (`reg`.`data_nascimento` is not null) then timestampdiff(YEAR,`reg`.`data_nascimento`,curdate()) else NULL end) AS `IDADE`,`ag`.`etnia` AS `ETNIA`,`ag`.`hospital` AS `HOSPITAL`,`ag`.`tipo_consulta` AS `ESPECIALIDADE`,`ag`.`data_consulta` AS `DATA_HORA`,`reg`.`complemento` AS `OBSERVACAO`,`ag`.`realizou` AS `CHECK` from (`agendamentos` `ag` left join `registros` `reg` on((`ag`.`nome` = `reg`.`nome`)));

-- --------------------------------------------------------

--
-- Estrutura para view `view_agendamentos_entradas_unificadas`
--
DROP TABLE IF EXISTS `view_agendamentos_entradas_unificadas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_agendamentos_entradas_unificadas` AS select `view_agendamentos`.`NOME` AS `NOME`,`view_agendamentos`.`IDADE` AS `IDADE`,`view_agendamentos`.`ETNIA` AS `ETNIA`,`view_agendamentos`.`HOSPITAL` AS `HOSPITAL`,`view_agendamentos`.`ESPECIALIDADE` AS `ESPECIALIDADE`,`view_agendamentos`.`DATA_HORA` AS `DATA_HORA`,`view_agendamentos`.`OBSERVACAO` AS `OBSERVACAO`,`view_agendamentos`.`CHECK` AS `CHECK` from `view_agendamentos` union all select `view_entradas_pacientes`.`NOME` AS `NOME`,`view_entradas_pacientes`.`IDADE` AS `IDADE`,`view_entradas_pacientes`.`ETNIA` AS `ETNIA`,`view_entradas_pacientes`.`HOSPITAL` AS `HOSPITAL`,`view_entradas_pacientes`.`ESPECIALIDADE` AS `ESPECIALIDADE`,`view_entradas_pacientes`.`DATA_HORA` AS `DATA_HORA`,`view_entradas_pacientes`.`OBSERVACAO` AS `OBSERVACAO`,`view_entradas_pacientes`.`CHECK` AS `CHECK` from `view_entradas_pacientes`;

-- --------------------------------------------------------

--
-- Estrutura para view `view_entradas_pacientes`
--
DROP TABLE IF EXISTS `view_entradas_pacientes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_entradas_pacientes` AS select `ent`.`nome` AS `NOME`,(case when (`reg`.`data_nascimento` is not null) then timestampdiff(YEAR,`reg`.`data_nascimento`,curdate()) else NULL end) AS `IDADE`,`ent`.`etnia` AS `ETNIA`,`ent`.`hospital` AS `HOSPITAL`,`ent`.`tipo_Consulta` AS `ESPECIALIDADE`,`ent`.`data_consulta` AS `DATA_HORA`,`ent`.`observacoes` AS `OBSERVACAO`,`ent`.`realizou` AS `CHECK` from (`entradas` `ent` left join `registros` `reg` on((`ent`.`nome` = `reg`.`nome`))) where (`ent`.`tipo_Hospedagem` = 'Paciente');

-- --------------------------------------------------------

--
-- Estrutura para view `view_entradas_registros_hospedados`
--
DROP TABLE IF EXISTS `view_entradas_registros_hospedados`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_entradas_registros_hospedados` AS select `e`.`tipo_Hospedagem` AS `tipo_Hospedagem`,`r`.`nome` AS `NOME`,`r`.`data_nascimento` AS `DATA_NSC`,((year(curdate()) - year(`r`.`data_nascimento`)) - (date_format(curdate(),'%m%d') < date_format(`r`.`data_nascimento`,'%m%d'))) AS `IDADE`,`r`.`cpf` AS `CPF`,`r`.`rg` AS `RG`,`r`.`sexo` AS `GENERO`,`e`.`observacoes` AS `OBS`,`e`.`data_Entrada` AS `DATA HORA`,`e`.`data_Saida` AS `DATA HORA2`,(to_days(`e`.`data_Saida`) - to_days(`e`.`data_Entrada`)) AS `PERMANENCIA_DIAS` from (`entradas` `e` join `registros` `r` on((`e`.`nome` = `r`.`nome`))) where (isnull(`e`.`data_Saida`) or (`e`.`data_Saida` >= curdate()));

-- --------------------------------------------------------

--
-- Estrutura para view `view_entradas_registros_sequencia`
--
DROP TABLE IF EXISTS `view_entradas_registros_sequencia`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_entradas_registros_sequencia` AS select `e`.`tipo_Hospedagem` AS `tipo_Hospedagem`,`r`.`nome` AS `NOME`,`r`.`data_nascimento` AS `DATA_NSC`,((year(curdate()) - year(`r`.`data_nascimento`)) - (date_format(curdate(),'%m%d') < date_format(`r`.`data_nascimento`,'%m%d'))) AS `IDADE`,`r`.`cpf` AS `CPF`,`r`.`rg` AS `RG`,`r`.`sexo` AS `GENERO`,`e`.`observacoes` AS `OBS`,`e`.`data_Entrada` AS `DATA HORA`,`e`.`data_Saida` AS `DATA HORA2`,(to_days(`e`.`data_Saida`) - to_days(`e`.`data_Entrada`)) AS `PERMANENCIA_DIAS` from (`entradas` `e` join `registros` `r` on((`e`.`nome` = `r`.`nome`)));

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `administradores`
--
ALTER TABLE `administradores`
 ADD PRIMARY KEY (`id_administradores`,`login`,`senha`);

--
-- Índices de tabela `agendamentos`
--
ALTER TABLE `agendamentos`
 ADD PRIMARY KEY (`idagendamentos`);

--
-- Índices de tabela `entradas`
--
ALTER TABLE `entradas`
 ADD PRIMARY KEY (`identradas`);

--
-- Índices de tabela `registros`
--
ALTER TABLE `registros`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `administradores`
--
ALTER TABLE `administradores`
MODIFY `id_administradores` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de tabela `agendamentos`
--
ALTER TABLE `agendamentos`
MODIFY `idagendamentos` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de tabela `entradas`
--
ALTER TABLE `entradas`
MODIFY `identradas` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de tabela `registros`
--
ALTER TABLE `registros`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
