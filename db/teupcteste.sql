-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 22-Jun-2022 às 02:29
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `teupcteste`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `campos`
--

CREATE TABLE `campos` (
  `CampoID` int(11) NOT NULL,
  `CategoriaID` int(11) NOT NULL,
  `Nome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `campos`
--

INSERT INTO `campos` (`CampoID`, `CategoriaID`, `Nome`) VALUES
(1, 1, 'CpuID'),
(2, 1, 'Frequencia'),
(3, 1, 'Nucleo'),
(4, 1, 'Socket'),
(6, 1, 'Consumo'),
(7, 2, 'Marca'),
(8, 2, 'Consumo'),
(9, 2, 'Socket'),
(10, 2, 'Formato'),
(11, 3, 'Velocidade'),
(12, 3, 'Tipo'),
(13, 3, 'Módulos'),
(14, 3, 'Capacidade Total'),
(15, 4, 'Série'),
(16, 4, 'Formato'),
(17, 4, 'Tipo'),
(18, 4, 'Capacidade'),
(19, 5, 'Serie'),
(20, 5, 'Formato'),
(21, 5, 'Tipo'),
(22, 5, 'Capacidade'),
(23, 6, 'Tipo'),
(24, 6, 'RPM'),
(25, 6, 'Ruido'),
(26, 6, 'Socket'),
(27, 6, 'Tamanho '),
(28, 7, 'GpuID'),
(29, 7, 'Série'),
(30, 7, 'Chipset '),
(31, 7, 'Memória '),
(32, 7, 'Marca '),
(33, 8, 'Série'),
(34, 8, 'Tipo'),
(35, 8, 'Modular '),
(36, 8, 'Certificado '),
(37, 8, 'Potência '),
(38, 9, 'Tipo'),
(39, 9, 'Fonte '),
(40, 9, 'Marca'),
(41, 10, 'CPU'),
(42, 10, 'CpuID'),
(43, 10, 'Núcleos '),
(44, 10, 'Marca '),
(45, 10, 'Frequência do CPU'),
(46, 10, 'Memória Ram'),
(47, 10, 'Memória Expansível '),
(48, 10, 'Vídeo Integrado '),
(49, 10, 'Placa De Vídeo '),
(50, 10, 'Armazenamento '),
(51, 11, 'CPU'),
(52, 11, 'CpuID'),
(53, 11, 'Núcleos '),
(54, 11, 'Frequência da CPU'),
(55, 11, 'Marca '),
(56, 11, 'Memória Ram'),
(57, 11, 'Memória Expansível '),
(58, 11, 'Vídeo Integrado'),
(59, 11, 'Placa De Vídeo'),
(60, 11, 'Placa Mãe '),
(61, 11, 'Armazenamento '),
(62, 11, 'Fonte');

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE `categorias` (
  `CategoriaID` int(11) NOT NULL,
  `Nome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`CategoriaID`, `Nome`) VALUES
(1, 'Processadores\r\n'),
(2, 'Placa Mae '),
(3, 'Memoria Ram '),
(4, 'SSD '),
(5, 'HD'),
(6, 'Cooler '),
(7, 'Placa De Video '),
(8, 'Fonte'),
(9, 'Gabinete '),
(10, 'Notebook'),
(11, 'PC Pronto');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pecas`
--

CREATE TABLE `pecas` (
  `PecaID` int(11) NOT NULL,
  `CategoriaID` int(11) NOT NULL,
  `Nome` varchar(100) NOT NULL,
  `Imagem` varchar(200) NOT NULL,
  `Preco` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `pecas`
--

INSERT INTO `pecas` (`PecaID`, `CategoriaID`, `Nome`, `Imagem`, `Preco`) VALUES
(1, 1, 'Processador Ryzen 5 5600x', 'imagem.jpg', 2000),
(2, 7, 'NVIDIA GeForce RTX 2060', 'imagem.jpg', 3000),
(3, 2, 'Placa Mãe ASROCK B450M ', 'imagem.jpg', 800),
(4, 3, 'Memória Ram Corsair 8GB', 'imagem.jpg', 400),
(5, 8, 'Fonte Corsair CX650 650W ', 'imagem.jpg', 700);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pecascampos`
--

CREATE TABLE `pecascampos` (
  `PecaCampoID` int(11) NOT NULL,
  `CampoID` int(11) NOT NULL,
  `CategoriaID` int(11) NOT NULL,
  `PecaID` int(11) NOT NULL,
  `DadoCampo` varchar(100) NOT NULL,
  `Descricao` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `pecascampos`
--

INSERT INTO `pecascampos` (`PecaCampoID`, `CampoID`, `CategoriaID`, `PecaID`, `DadoCampo`, `Descricao`) VALUES
(1, 1, 1, 1, '2 ', 'CPU ID '),
(2, 2, 1, 1, '3.7 GHz', 'Frequencia '),
(3, 3, 1, 1, '6 ', 'Núcleos'),
(4, 4, 1, 1, 'AM4', 'Socket'),
(5, 6, 1, 1, '65 w ', 'Consumo ');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `campos`
--
ALTER TABLE `campos`
  ADD PRIMARY KEY (`CampoID`),
  ADD KEY `CategoriaCampo` (`CategoriaID`);

--
-- Índices para tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`CategoriaID`);

--
-- Índices para tabela `pecas`
--
ALTER TABLE `pecas`
  ADD PRIMARY KEY (`PecaID`),
  ADD KEY `Categoria` (`CategoriaID`);

--
-- Índices para tabela `pecascampos`
--
ALTER TABLE `pecascampos`
  ADD PRIMARY KEY (`PecaCampoID`),
  ADD KEY `PecaID` (`PecaID`),
  ADD KEY `CategoriaID` (`CategoriaID`),
  ADD KEY `CampoID` (`CampoID`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `campos`
--
ALTER TABLE `campos`
  MODIFY `CampoID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `CategoriaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `pecas`
--
ALTER TABLE `pecas`
  MODIFY `PecaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `pecascampos`
--
ALTER TABLE `pecascampos`
  MODIFY `PecaCampoID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `campos`
--
ALTER TABLE `campos`
  ADD CONSTRAINT `CategoriaCampo` FOREIGN KEY (`CategoriaID`) REFERENCES `categorias` (`CategoriaID`);

--
-- Limitadores para a tabela `pecas`
--
ALTER TABLE `pecas`
  ADD CONSTRAINT `Categoria` FOREIGN KEY (`CategoriaID`) REFERENCES `categorias` (`CategoriaID`);

--
-- Limitadores para a tabela `pecascampos`
--
ALTER TABLE `pecascampos`
  ADD CONSTRAINT `CampoID` FOREIGN KEY (`CampoID`) REFERENCES `campos` (`CampoID`),
  ADD CONSTRAINT `CategoriaID` FOREIGN KEY (`CategoriaID`) REFERENCES `categorias` (`CategoriaID`),
  ADD CONSTRAINT `PecaID` FOREIGN KEY (`PecaID`) REFERENCES `pecas` (`PecaID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
