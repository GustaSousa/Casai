-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Tempo de geração: 18/12/2023 às 19:41
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

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
  `rg` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `cartao_sus` varchar(18) COLLATE utf8_unicode_ci NOT NULL,
  `complemento` varchar(110) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

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
MODIFY `idagendamentos` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `entradas`
--
ALTER TABLE `entradas`
MODIFY `identradas` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `registros`
--
ALTER TABLE `registros`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
