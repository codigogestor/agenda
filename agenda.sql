-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Tempo de geração: 12/04/2016 às 11:18
-- Versão do servidor: 5.5.38-35.2
-- Versão do PHP: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de dados: `agenda`
--
CREATE DATABASE IF NOT EXISTS `agenda` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `agenda`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `contact_id` int(9) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cellphone` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `contact`
--

INSERT INTO `contact` (`contact_id`, `name`, `email`, `phone`, `cellphone`, `note`) VALUES
(1, 'João Antonio', 'joão@email.com', '(11)2020-2020', '(11)97070-7070', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sit amet diam vitae nunc accumsan auctor a ut sapien. Ut in pellentesque felis.'),
(2, 'Maria Julia', 'mjulia@email.com', '(11)3030-3030', '(11)8080-8080', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sit amet diam vitae nunc accumsan auctor a ut sapien. Ut in pellentesque felis.'),
(3, 'Marcos da Silva', 'marcos@email.com', '(11)4040-4040', '(11)9090-9090', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sit amet diam vitae nunc accumsan auctor a ut sapien. Ut in pellentesque felis. '),
(4, 'Mariana Almeida', 'mariana@email.com', '(11)1010-1010', '(11)8090-8090', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sit amet diam vitae nunc accumsan auctor a ut sapien. Ut in pellentesque felis. '),
(5, 'Lucas Alves', 'lucas@email.com', '(11)2050-4050', '(11)3060-3060', 'Lorem'),
(6, 'Anderson Smith', 'anderson@email.com', '(11)7080-9080', '(11)6060-8090', 'Lorem'),
(7, 'Junior Ribeiro', 'junior@email.com', '(11)8050-6090', '(11)4679-7964', 'Lorem'),
(8, 'Bruno Sapaio', 'bruno@email.com', '(11)8090-6080', '(11)8070-9080', 'Lorem'),
(9, 'Felipe da Silva', 'felipe@email.com', '(11)7070-7070', '(11)6060-6060', 'Lorem'),
(10, 'Jorge Henrique', 'jorge@emal.com', '(11)7080-9080', '(11)6090-7080', 'Lorem'),
(11, 'Josué Ferreira', 'josue@email.com', '(11)7080-9080', '(11)6164-9764', 'Lorem lorem lorem');

-- --------------------------------------------------------

--
-- Estrutura para tabela `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(9) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `user`
--

INSERT INTO `user` (`user_id`, `name`, `email`, `username`, `password`, `status`) VALUES
(1, 'Administrador', 'admin@admin.com', 'admin', '21232f297a57a5a743894a0e4a801fc3', 1);

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Índices de tabela `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(9) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de tabela `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(9) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
