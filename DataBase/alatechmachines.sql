-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 02-Fev-2022 às 18:15
-- Versão do servidor: 10.4.21-MariaDB
-- versão do PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `alatechmachines`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `placadevideo`
--

CREATE TABLE `placadevideo` (
  `id` int(11) NOT NULL,
  `placaVideoNome` varchar(255) NOT NULL,
  `placaVideoNomeImageUrl` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `placadevideo`
--

INSERT INTO `placadevideo` (`id`, `placaVideoNome`, `placaVideoNomeImageUrl`) VALUES
(1, 'GeForce RTX 3050 ', 'http://placehold.it/120x120&text=image4');

-- --------------------------------------------------------

--
-- Estrutura da tabela `placamae`
--

CREATE TABLE `placamae` (
  `id` int(11) NOT NULL,
  `placaMaeNome` varchar(255) NOT NULL,
  `potencia` int(11) NOT NULL,
  `geracao` int(11) NOT NULL,
  `placaMaeImageUrl` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `placamae`
--

INSERT INTO `placamae` (`id`, `placaMaeNome`, `potencia`, `geracao`, `placaMaeImageUrl`) VALUES
(1, 'GIGABYTE B560M AORUS ELITE', 5333, 10, 'http://placehold.it/120x120&text=image1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `processador`
--

CREATE TABLE `processador` (
  `id` int(11) NOT NULL,
  `processadorNome` varchar(255) NOT NULL,
  `potencia` int(11) NOT NULL,
  `cores` int(2) NOT NULL,
  `processadorImageUrl` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `processador`
--

INSERT INTO `processador` (`id`, `processadorNome`, `potencia`, `cores`, `processadorImageUrl`) VALUES
(1, 'Intel Core i7-8700', 4, 8, 'http://placehold.it/120x120&text=image2');

-- --------------------------------------------------------

--
-- Estrutura da tabela `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(64) NOT NULL,
  `senha` varchar(512) NOT NULL,
  `accessToken` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `user`
--

INSERT INTO `user` (`id`, `username`, `senha`, `accessToken`) VALUES
(4, 'Victor Santos Rohod', '123', '');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `placadevideo`
--
ALTER TABLE `placadevideo`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `placamae`
--
ALTER TABLE `placamae`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `processador`
--
ALTER TABLE `processador`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `placadevideo`
--
ALTER TABLE `placadevideo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `placamae`
--
ALTER TABLE `placamae`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `processador`
--
ALTER TABLE `processador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
