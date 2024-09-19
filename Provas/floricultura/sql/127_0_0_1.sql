-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 07-Fev-2022 às 13:31
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `floricultura`
--
CREATE DATABASE IF NOT EXISTS `floricultura` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `floricultura`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `email` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `cpf` char(11) NOT NULL,
  `dtnasc` date NOT NULL,
  `telefone` varchar(11) NOT NULL,
  `endereco` int(11) DEFAULT NULL,
  `senha` varchar(14) NOT NULL,
  `perfil` set('cliente','administrador','convidado','funcionario') NOT NULL DEFAULT 'cliente'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`email`, `nome`, `cpf`, `dtnasc`, `telefone`, `endereco`, `senha`, `perfil`) VALUES
('amanda@gmail.com', 'Amanda', '44444444444', '1998-01-10', '5555555555', NULL, '123', 'administrador'),
('davi@gmail.com', 'Davi Rocha', '12332112332', '2011-03-18', '61555555', NULL, '123', 'cliente'),
('glauco.rocha@df.docente.senai.br', 'Ana Maria', '12344', '1985-07-29', '6199346888', NULL, '123', 'cliente'),
('lucas@gmail.com', 'Lucas', '0987654321', '2002-09-13', '333333333', NULL, '1234', 'cliente'),
('manu@gmail.com', 'Emanuelly', '12322233322', '2002-06-05', '1233', NULL, '123', 'cliente'),
('savio@gmail.com', 'Savio Olliveira', '77777777777', '1990-02-12', '66666666666', NULL, '1231234', 'cliente');

-- --------------------------------------------------------

--
-- Estrutura da tabela `flor`
--

CREATE TABLE `flor` (
  `idflor` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `tipo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD KEY `endereco` (`endereco`);

--
-- Índices para tabela `flor`
--
ALTER TABLE `flor`
  ADD PRIMARY KEY (`idflor`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `flor`
--
ALTER TABLE `flor`
  MODIFY `idflor` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
