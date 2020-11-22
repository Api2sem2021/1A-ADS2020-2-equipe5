-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 22-Nov-2020 às 22:44
-- Versão do servidor: 10.4.14-MariaDB
-- versão do PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bd_pi01`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `arquivos`
--

CREATE TABLE `arquivos` (
  `id` int(11) NOT NULL,
  `nome_arquivo` varchar(100) NOT NULL,
  `caminho` varchar(255) NOT NULL,
  `disciplina` varchar(100) NOT NULL,
  `descricao` text NOT NULL,
  `extensao_arquivo` varchar(5) NOT NULL,
  `titulo_produto` varchar(250) NOT NULL,
  `preco` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `arquivos`
--

INSERT INTO `arquivos` (`id`, `nome_arquivo`, `caminho`, `disciplina`, `descricao`, `extensao_arquivo`, `titulo_produto`, `preco`) VALUES
(29, 'RESUMÃO.pdf', 'arquivos/RESUMÃO.pdf', 'Administração Geral', 'Estrutura do balanço ', 'pdf', 'Estrutura do balanço ', 'R$50,00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `avaliacao`
--

CREATE TABLE `avaliacao` (
  `id` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `mensagem` varchar(350) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `avaliacao`
--

INSERT INTO `avaliacao` (`id`, `id_produto`, `nome`, `email`, `mensagem`) VALUES
(25, 29, 'juliane.freitas1@hotmail.com', 'juliane.freitas1@hotmail.com', 'teste 1'),
(31, 29, 'juliane.freitas1@hotmail.com', 'juliane.freitas1@hotmail.com', 'teste 2');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cartao`
--

CREATE TABLE `cartao` (
  `id` int(11) NOT NULL,
  `email_usuario` varchar(250) NOT NULL,
  `titulo` varchar(150) NOT NULL,
  `numero` varchar(50) NOT NULL,
  `validade` varchar(50) NOT NULL,
  `cvv` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cartao`
--

INSERT INTO `cartao` (`id`, `email_usuario`, `titulo`, `numero`, `validade`, `cvv`) VALUES
(3, 'juliane.freitas1@hotmail.com', 'Juliane Freitas', '789789789', '0123', '1234');

-- --------------------------------------------------------

--
-- Estrutura da tabela `contato`
--

CREATE TABLE `contato` (
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `assunto` varchar(50) NOT NULL,
  `mensagem` varchar(240) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `contato`
--

INSERT INTO `contato` (`nome`, `email`, `assunto`, `mensagem`) VALUES
('Juliane Freitas Silvestre', 'c0380f3f07114bccf737b5bd3224ba69', '', 'ablueablue');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedidos`
--

CREATE TABLE `pedidos` (
  `id_pedido` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `titulo_produto` varchar(250) NOT NULL,
  `preco` varchar(100) NOT NULL,
  `parcelas` int(11) NOT NULL,
  `metodopag` varchar(50) NOT NULL,
  `email_usuario` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `pedidos`
--

INSERT INTO `pedidos` (`id_pedido`, `id`, `titulo_produto`, `preco`, `parcelas`, `metodopag`, `email_usuario`) VALUES
(191, 29, 'Estrutura do balanço ', 'R$50,00', 0, 'boleto', ''),
(192, 29, 'Estrutura do balanço ', 'R$50,00', 0, 'boleto', ''),
(193, 29, 'Estrutura do balanço ', 'R$50,00', 0, 'boleto', ''),
(194, 29, 'Estrutura do balanço ', 'R$50,00', 1, 'cartao', 'juliane.freitas1@hotmail.com'),
(195, 29, 'Estrutura do balanço ', 'R$50,00', 0, 'boleto', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `tipo_usuario` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(200) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `nickname` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`tipo_usuario`, `email`, `senha`, `nome`, `nickname`) VALUES
('admin', 'admin@root.com', '21232f297a57a5a743894a0e4a801fc3', 'Antonio Egydio', 'EgydioADM'),
('user', 'juliane.freitas1@hotmail.com', '202cb962ac59075b964b07152d234b70', 'juliane.freitas1@hotmail.com', 'jujuba');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `arquivos`
--
ALTER TABLE `arquivos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `avaliacao`
--
ALTER TABLE `avaliacao`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_produto` (`id_produto`);

--
-- Índices para tabela `cartao`
--
ALTER TABLE `cartao`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email_usuario` (`email_usuario`);

--
-- Índices para tabela `contato`
--
ALTER TABLE `contato`
  ADD PRIMARY KEY (`nome`);

--
-- Índices para tabela `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id_pedido`),
  ADD KEY `email_usuario` (`email_usuario`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `arquivos`
--
ALTER TABLE `arquivos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de tabela `avaliacao`
--
ALTER TABLE `avaliacao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de tabela `cartao`
--
ALTER TABLE `cartao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id_pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=196;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
