-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 01-Jul-2022 às 00:37
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
-- Banco de dados: `teupc`
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
  `Preco` float NOT NULL,
  `Link` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `pecas`
--

INSERT INTO `pecas` (`PecaID`, `CategoriaID`, `Nome`, `Imagem`, `Preco`, `Link`) VALUES
(1, 1, 'Processador Intel Core I5 9400', 'i594.jpg', 1414, 'https://www.kabum.com.br/produto/135650/processador-intel-core-i5-9400-cache-9mb-2-90ghz-4-10ghz-turbo-lga-1151-video-integrado-bx80684i59400'),
(2, 1, 'Processador Intel Core i7-9700K Coffee Lake Refresh', 'i797.jpg', 1896, 'https://www.pichau.com.br/processador-intel-core-i7-9700k-8-core-8-threads-3-6ghz-4-9ghz-turbo-cache-12mb-lga1151-bx80684i79700k'),
(3, 1, 'Processador Intel Core i3-10100F', 'i310.jpg', 500, 'https://www.kabum.com.br/produto/129960/processador-intel-core-i3-10100f-cache-6mb-4-30-ghz-lga-1200-bx8070110100f?gclid=CjwKCAjwgr6TBhAGEiwA3aVuIcnZg_nskZBWHoP_oHms1cwtDCdUyjobVG2FVfI72gKVWBXb2ciusRoCzoYQAvD_BwE'),
(4, 1, 'Processador Intel Core i5-10400', 'i510.jpg', 888, 'https://www.pichau.com.br/processador-intel-core-i5-10400-6-core-12-threads-2-9ghz-4-3ghz-turbo-cache-12mb-lga1200-bx8070110400'),
(5, 1, 'Processador Intel Core i7-10700F', 'i710f.jpg', 1780, 'https://www.kabum.com.br/produto/112995/processador-intel-core-i7-10700f-cache-16mb-2-9ghz-4-8ghz-max-turbo-lga-1200-bx8070110700f'),
(6, 1, 'Processador Intel Core i5-11600KF ', 'i511k.jpg', 1388, 'https://www.pichau.com.br/processador-intel-core-i5-11600kf-6-core-12-threads-3-9ghz-4-9ghz-turbo-cache-12mb-lga1200-bx8070811600kf'),
(7, 1, 'Processador Intel Core i7-11700KF', 'i711kf.jpg', 2560, 'https://www.kabum.com.br/produto/148913/processador-intel-core-i7-11700kf-11-geracao-cache-16mb-3-6-ghz-4-9ghz-turbo-lga1200-bx8070811700kf'),
(8, 1, 'Processador Intel Core i9-11900KF ', 'i911kf.jpg', 2698, 'https://www.pichau.com.br/processador-intel-core-i9-11900kf-8-core-16-threads-3-5ghz-5-3ghz-turbo-cache-16mb-lga1200-bx8070811900kf'),
(9, 1, 'Processador Intel Core i7-12700K', 'i712k.jpg', 3300, 'https://www.kabum.com.br/produto/241048/processador-intel-core-i7-12700k-cache-25mb-3-6ghz-5-0ghz-max-turbo-lga-1700-bx8071512700k'),
(10, 1, 'Processador Intel Core i9-12900K', 'i912k.jpg', 3550, 'https://www.pichau.com.br/processador-intel-core-i9-12900-16-core-24-threads-3-8ghz-5-1ghz-turbo-cache-30mb-lga1700-bx8071512900'),
(11, 1, 'Processador AMD Ryzen 3 3200G ', 'amdr33.jpg', 790, 'https://www.pichau.com.br/processador-amd-ryzen-3-3200g-4-core-4-threads-3-6ghz-4ghz-turbo-cache-6mb-am4-yd3200c5m4mfh?gclid=CjwKCAjwgr6TBhAGEiwA3aVuITS5tUdOZwP2fU5uO_qYdO9YXKBye8LBeG_REJH3CzfBFkYk1IVbwhoCUwYQAvD_BwE?'),
(12, 1, 'Processador AMD Ryzen 3 4100', 'amdr34.jpg', 650, 'https://www.pichau.com.br/processador-amd-ryzen-3-4100-4-core-8-threads-3-8ghz-4-0ghz-turbo-cache-6mb-am4-100-100000510mpk?gclid=CjwKCAjwgr6TBhAGEiwA3aVuIZZytVRe72LsQzCkbUZ7fRMiuIKpQFbDAOlVgx7kjvIQfBLjiisMKxoCi1kQAvD_BwE?'),
(13, 1, 'Processador AMD Ryzen 5 5600X', 'amdr556x.jpg', 2000, 'https://www.kabum.com.br/produto/129451/processador-amd-ryzen-5-5600x-cache-35mb-3-7ghz-4-6ghz-max-turbo-am4-sem-video-100-100000065box?'),
(14, 1, 'Processador AMD Ryzen 5 5600', 'amdr55.jpg', 1340, 'https://www.kabum.com.br/produto/320798/processador-amd-ryzen-5-5600-cache-35mb-3-5ghz-4-4ghz-max-turbo-am4-sem-video-100-100000927box?'),
(15, 1, 'Processador AMD Ryzen 5 3600', 'amdr53.jpg', 1300, 'https://www.kabum.com.br/produto/102438/processador-amd-ryzen-5-3600-cache-32mb-3-6ghz-4-2ghz-max-turbo-am4-sem-video-100-100000031box?'),
(16, 1, 'Processador AMD Ryzen 5 5500', 'amdr55.jpg', 899, 'https://www.kabum.com.br/produto/320799/processador-amd-ryzen-5-5500-cache-19mb-3-6ghz-4-2ghz-max-turbo-am4-sem-video-100-100000457box?'),
(17, 1, 'Processador AMD Ryzen 5 4500', 'amdr54.jpg', 749, 'https://www.pichau.com.br/processador-amd-ryzen-5-4500-6-core-12-threads-3-6ghz-4-1ghz-turbo-cache-11mb-am4-100-100000644mpk?gclid=CjwKCAjwgr6TBhAGEiwA3aVuIQFPoFak1gKT1s3pdqFQmTPeWAJ3Lt0jed6Z1QlF3wxAEj4sOfNGWhoC4FMQAvD_BwE?'),
(18, 1, 'Processador AMD Ryzen 5 3400G', 'amdr53.jpg', 1349, 'https://www.submarino.com.br/produto/108438035?opn=XMLGOOGLE&offerId=5f7cdafd657407f8710d9f5f'),
(19, 1, 'Processador AMD Ryzen 7 5800X', 'amdr758x.jpg', 1899, 'https://www.kabum.com.br/produto/129459/processador-amd-ryzen-7-5800x-cache-36mb-3-8ghz-4-7ghz-max-turbo-am4-100-100000063wof?'),
(20, 1, 'Processador AMD Ryzen 7 5700X', 'amdr757x.jpg', 1700, 'https://www.kabum.com.br/produto/320797/processador-amd-ryzen-7-5700x-cache-36mb-3-4ghz-4-6ghz-max-turbo-am4-sem-video-100-100000926wof'),
(21, 2, 'Placa Mae Gigabyte B450', 'gb450.jpg', 390, 'https://www.kabum.com.br/produto/103415/placa-mae-gigabyte-b450m-s2h-am4-matx-ddr4?gclid=CjwKCAjwp7eUBhBeEiwAZbHwkURj98ypXbT8GlUw_A41Egivn9bXxwLT2d8o5TXewj23ryqeHM_PbRoCJ8AQAvD_BwE?'),
(22, 2, 'Placa-Mae ASRock B450M Steel Legend', 'asrb450m.jpg', 730, 'https://www.kabum.com.br/produto/100672/placa-mae-asrock-b450m-steel-legend-amd-am4-matx-ddr4-90-mxb9y0-a0bayz?'),
(23, 2, 'Placa-Mae Gigabyte B550M DS3H', 'ab550m.jpg', 790, 'https://www.kabum.com.br/produto/114782/placa-mae-gigabyte-b550m-ds3h-amd-am4-micro-atx-ddr4?'),
(24, 2, 'Placa-Mae Asus TUF Gaming B550M-Plus', 'asrb550p.jpg', 919, 'https://www.kabum.com.br/produto/115216/placa-mae-asus-tuf-gaming-b550m-plus-amd-b550-matx-ddr4?'),
(25, 2, 'Placa-Mae Asus TUF H310M-Plus Gaming/BR', 'ah310.jpg', 410, 'https://www.kabum.com.br/produto/96896/placa-mae-asus-tuf-h310m-plus-gaming-br-intel-lga-1151-matx-ddr4?'),
(26, 2, 'Placa-Mae Asus PRIME H610M-A D4', 'aph610.jpg', 630, 'https://www.kabum.com.br/produto/276263/placa-mae-asus-prime-h610m-a-d4-lga-1700-h610-matx-ddr4-90mb19p0-m0eay0?'),
(27, 2, 'Placa Mae Gigabyte Z590M GAMING X', 'gz590.jpg', 1100, 'https://www.kabum.com.br/produto/153199/placa-mae-gigabyte-z590m-gaming-x-rev-1-0-lga1200-micro-atx-ddr4https://www.kabum.com.br/produto/153199/placa-mae-gigabyte-z590m-gaming-x-rev-1-0-lga1200-micro-atx-ddr4?'),
(28, 2, 'Placa-Mae Asus TUF Gaming B660M-PLUS D4', 'ab660.jpg', 1150, 'https://www.kabum.com.br/produto/321069/placa-mae-asus-tuf-gaming-b660m-plus-d4-intel-lga-1700-b660-matx-ddr4-rgb-90mb1940-c1bay0??'),
(29, 2, 'Placa Mae Gigabyte H410M H V3 (Rev. 1.0)', 'gh410.jpg', 600, 'https://www.kabum.com.br/produto/173449/placa-mae-gigabyte-h410m-h-v3-rev-1-0-intel-lga1200-matx-ddr4-h410m-h-v3?'),
(30, 2, 'Placa-Mae Gigabyte B550M Aorus Elite', 'placamaegigaamd.jpg', 950, 'https://www.kabum.com.br/produto/115216/placa-mae-asus-tuf-gaming-b550m-plus-amd-b550-matx-ddr4?'),
(31, 3, 'Memoria XPG Gammix D45', 'xpg8.jpg', 240, 'https://www.kabum.com.br/produto/166052/memoria-xpg-gammix-d45-8gb-3200mhz-ddr4-cl16-preta-ax4u32008g16a-cbkd45'),
(32, 3, 'Memrioa Crucial Ballistix', 'cruc8.jpg', 240, 'https://www.kabum.com.br/produto/176681/memoria-crucial-ballistix-8gb-2666mhz-ddr4-cl16-branca-bl8g26c16u4w'),
(33, 3, 'Memoria KLEVV BOLT X', 'klevv16.jpg', 405, 'https://www.kabum.com.br/produto/152432/memoria-klevv-bolt-x-16gb-3200mhz-ddr4-kd4agu880-32a160t'),
(34, 3, 'Memoria XPG Spectrix D50', 'xpg32.jpg', 1030, 'https://www.kabum.com.br/produto/201501/memoria-xpg-spectrix-d50-rgb-32gb-3600mhz-ddr4-cl18-cinza-ax4u360032g18i-st50'),
(35, 4, 'SSD Kingston A400 240GB', 'king240.jpg', 240, 'https://www.kabum.com.br/produto/85197/ssd-kingston-a400-240gb-sata-leitura-500mb-s-gravacao-350mb-s-sa400s37-240g?'),
(36, 4, 'SSD Sandisk Plus 240GB', 'sand240.jpg', 260, 'https://www.kabum.com.br/produto/80632/ssd-sandisk-plus-240gb-sata-leitura-530mb-s-gravacao-440mb-s-sdssda-240g-g26?'),
(37, 4, 'SSD Kingston A400 480GB', 'king480.jpg', 365, 'https://www.kabum.com.br/produto/85198/ssd-kingston-a400-480gb-sata-leitura-500mb-s-gravacao-450mb-s-sa400s37-480g?'),
(38, 4, 'SSD Kingston A400 960GB', 'king960.jpg', 650, 'https://www.kabum.com.br/produto/95217/ssd-kingston-a400-960gb-sata-leitura-500mb-s-gravacao-450mb-s-sa400s37-960g?'),
(39, 4, 'SSD WD Red SA500 NAS 1TB', 'wd1.jpg', 1162, 'https://www.kabum.com.br/produto/110438/ssd-wd-red-sa500-nas-1tb-sata-leituras-560mb-s-e-gravacoes-530mb-s-wds100t1r0a?'),
(40, 4, 'SSD Adata Ultimate SU650 240GB', 'ad650.240.jpg', 300, 'https://kabum.com.br/produto/104418/ssd-adata-ultimate-su650-240gb-m-2-leituras-550mb-s-e-gravacoes-500mb-s-asu650ns38-240gt-c?'),
(41, 4, 'SSD Adata Ultimate SU650 480GB', 'ad650.480.jpg', 480, '?https://www.kabum.com.br/produto/104419/ssd-adata-ultimate-su650-480gb-m-2-leituras-550mb-s-e-gravacoes-510mb-s-asu650ns38-480gt-c?'),
(42, 4, 'Lexar SSD 512gb', 'le512.550.jpg', 690, 'https://www.kabum.com.br/produto/254630/lexar-ssd-512gb-m-2-sata-550mb?'),
(43, 4, 'SSD Wd Blue Sn550 2tb', 'sn550.2.jpg', 2500, 'https://www.kabum.com.br/produto/296749/ssd-wd-blue-sn550-2tb-m-2-2280-nvme-2600-mb-s-wds200t2b0c?'),
(44, 5, 'HD Seagate BarraCuda 1TB', '1tb.jpg', 297, 'https://www.kabum.com.br/produto/84108/hd-seagate-barracuda-1tb-3-5-sata-st1000dm010?'),
(45, 5, 'HD WD Blue 2TB', '2tb.jpg', 310, 'https://www.kabum.com.br/produto/115063/hd-wd-blue-2tb-3-5-sata-6-0gb-s-wd20ezaz?'),
(46, 5, 'HD Seagate BarraCuda 2TB', '2t.jpg', 341, 'https://www.kabum.com.br/produto/100916/hd-seagate-barracuda-2tb-3-5-sata-st2000dm008?'),
(47, 5, 'HD Seagate BarraCuda 2TB', '3t.jpg', 725, 'https://www.kabum.com.br/produto/84110/hd-seagate-ironwolf-nas-3tb-3-5-sata-st3000vn007?gclid=EAIaIQobChMInua6sdLB-AIVpEVIAB1LMwVeEAQYASABEgKXnfD_BwE'),
(48, 5, 'HD Seagate BarraCuda 4TB', '4tb.jpg', 605, 'https://www.kabum.com.br/produto/95803/hd-seagate-barracuda-4tb-3-5-sata-st4000dm004?'),
(49, 6, 'HYPER H410R com LED Vermelho', 'h410r.jpg', 130, 'https://www.kabum.com.br/produto/97264/cooler-para-processador-cooler-master-hyper-h410r-com-led-vermelho-rr-h410-20pk-r1?'),
(50, 6, 'Hyper H411R', 'h411r.jpg', 165, 'https://www.kabum.com.br/produto/96492/cooler-para-processador-cooler-master-amd-intel-hyper-h411r-rr-h411-20pw-r1?'),
(51, 6, 'MasterAir MA410P', 'ma410p.jpg', 180, 'https://www.kabum.com.br/produto/96491/cooler-para-processador-cooler-master-intel-amd-masterair-ma410p-map-t4pn-220pc-r1?'),
(52, 6, 'Noctua Marrom NF-A9 PWM', 'noctuamarrom.jpg', 450, 'https://www.kabum.com.br/produto/313495/cooler-para-processador-noctua-92mm-intel-e-amd-marrom-nh-u9s?'),
(53, 6, 'Noctua NH-U12S', 'noctuap.jpg', 600, 'https://www.kabum.com.br/produto/135808/cooler-para-processador-noctua-para-amd-intel-fan-de-120mm-preto-nh-u12s-ch-bk?'),
(54, 6, 'WaterCooler Corsair Hydro H45', 'corsairhydro.jpg', 290, 'https://www.kabum.com.br/produto/78570/watercooler-corsair-hydro-series-high-performance-h45-120mm-cw-9060028-ww?'),
(55, 6, 'WaterCooler Corsair H60 Hydro', 'corsairh60.jpg', 370, 'https://www.kabum.com.br/produto/97265/watercooler-corsair-h60-hydro-series-120mm-com-led-branco-cw-9060036-ww?'),
(56, 6, 'Water Cooler DeepCool Gammaxx L240T White', 'deepcoolwhite.jpg', 350, 'https://www.kabum.com.br/produto/113938/water-cooler-deepcool-gammaxx-l240t-white-240mm-led-branco-gammaxx-l240t-white?'),
(57, 6, 'Water Cooler DeepCool Gammaxx L240T Blue', 'deepcoolblue.jpg', 390, 'https://www.kabum.com.br/produto/113935/water-cooler-deepcool-gammaxx-l240t-blue-240mm-led-azul-gammaxx-l240t-blue?'),
(58, 6, 'Water Cooler PL360 Flux Cooler Master Masterliquid', 'coolermaster.jpg', 1140, 'https://www.kabum.com.br/produto/248249/water-cooler-pl360-flux-cooler-master-masterliquid-rgb-360mm-amd-e-intel-support-lga-1700-para-pc-preto-mly-d36m-a23pz-r1?'),
(59, 7, 'GTX 1650', 'gtx1650.jpg', 2000, 'https://www.kabum.com.br/produto/289177/placa-de-video-zotac-gaming-nvidia-geforce-gtx-1650-amp-4gb-gddr6-zt-t16520d-10l?'),
(60, 7, 'GTX 1660 TI', 'gtx1660ti.jpg', 2600, 'https://www.kabum.com.br/produto/270812/placa-de-video-asus-tuf-gaming-nvidia-geforce-gtx-1660-ti-o6g-evo-oc-6gb-gddr6-preto-90yv0ct7-m0na00?'),
(61, 7, 'RTX 3050', 'rtx3050.jpg', 2800, 'https://www.kabum.com.br/produto/306116/placa-de-video-galax-nvidia-geforce-rtx-3050-1-click-oc-8gb-gddr6-lhr-dlss-ray-tracing-527200-0562?'),
(62, 7, 'RTX 2060', 'rtx2060.jpg', 3400, 'https://www.kabum.com.br/produto/110397/placa-de-video-zotac-gaming-nvidia-geforce-rtx-2060-6gb-gddr6-zt-t20600h-10m?'),
(63, 7, 'RTX 3070 TI', 'rtx3070ti.jpg', 6300, 'https://www.kabum.com.br/produto/166105/placa-de-video-zotac-nvidia-geforce-rtx-3070-ti-trinity-lhr-19-gbps-8gb-gddr6x-ray-tracing-dlss-rgb-zt-a30710d-10p?'),
(64, 7, 'RX 6500', 'amdrx6500.jpg', 1900, 'https://www.kabum.com.br/produto/303739/placa-de-video-gigabyte-amd-radeon-rx-6500-xt-gaming-oc-4g-4gb-gddr6-amd-rdna-2-gv-r65xtgaming-oc-4gd?'),
(65, 7, 'RX 6600', 'amdrx6600.jpg', 3700, 'https://www.kabum.com.br/produto/231816/placa-de-video-asrock-amd-radeon-rx-6600-xt-challenger-d-8g-oc-8gb-gddr6-arquitetura-rdna-ray-tracing-rx6600xt-cld-8go?'),
(66, 7, 'RX 6600 XT', 'amdrx6600xt.jpg', 3500, 'https://www.kabum.com.br/produto/233372/placa-de-video-power-color-fighter-amd-radeon-rx-6600-xt-8gb-gddr6-ray-tracing-preta-axrx-6600xt-8gbd6-3dh?'),
(67, 7, 'RX 6500 XT', 'amdrx6500xt.jpg', 1900, 'https://www.kabum.com.br/produto/303739/placa-de-video-gigabyte-amd-radeon-rx-6500-xt-gaming-oc-4g-4gb-gddr6-amd-rdna-2-gv-r65xtgaming-oc-4gd?'),
(68, 7, 'RX 6700 XT', 'amdrx6700xt.jpg', 5700, 'https://www.kabum.com.br/produto/241298/placa-de-video-asus-amd-radeon-dual-rx-6700-xt-oc-12g-12gb-gddr6-ray-tracing-amd-rdna-2-architecture-90yv0g83-m0na00?'),
(69, 8, 'Fonte ATX 550W 80 Plus Bronze Cx550F', 'atx550.jpg', 792, 'https://www.kabum.com.br/produto/174415/fonte-atx-550w-80-plus-bronze-cx550f-full-modular-rgb-white-com-cabo-de-forca-cp-9020225-br?'),
(70, 8, 'Fonte Corsair SF600 600W', 'c600.jpg', 830, 'https://www.kabum.com.br/produto/108082/fonte-corsair-sf600-600w-80-plus-gold-modular-cp-9020105-na?'),
(71, 8, 'Fonte XPG Core Reactor 650W', 'xpg650.jpg', 600, 'https://www.kabum.com.br/produto/103280/fonte-xpg-core-reactor-650w-80-plus-gold-modular?'),
(72, 8, 'Fonte XPG Core Reactor 750W', 'xpg750.jpg', 630, 'https://www.kabum.com.br/produto/103281/fonte-xpg-core-reactor-750w-80-plus-gold-modular?'),
(73, 8, 'Fonte XPG Core Reactor 850W', 'xpg850.jpg', 650, 'https://www.kabum.com.br/produto/103282/fonte-xpg-core-reactor-850w-atx-80-plus-gold-modular?'),
(74, 8, 'Fonte EVGA 500 BQ', 'ev500.jpg', 350, 'https://www.kabum.com.br/produto/113587/fonte-evga-500-bq-500w-80-plus-bronze-semi-modular-110-bq-0500-k?'),
(75, 8, 'Fonte Nox 600W 80 Plus Bronze', 'nox600.jpg', 440, 'https://www.kabum.com.br/produto/96856/fonte-nox-600w-80-plus-bronze-semi-modular-hummer-x-nxhummerx600wbz?'),
(76, 8, 'Fonte Nox 700W 80 Plus Bronze', 'nox700.jpg', 541, 'https://www.kabum.com.br/produto/96857/fonte-nox-700w-80-plus-bronze-semi-modular-hummer-x-nxhummerx700wbz?'),
(77, 8, 'Fonte Corsair 550W 80 Plus Gold', 'c550.jpg', 600, 'https://www.kabum.com.br/produto/91025/fonte-corsair-550w-80-plus-gold-semi-modular-tx550m-cp-9020133?'),
(78, 8, 'Fonte EVGA 750W 80 Plus Gold', 'ec750.jpg', 666, 'https://www.kabum.com.br/produto/82789/fonte-evga-750w-80-plus-gold-semi-modular-modo-eco-210-gq-0750-v?'),
(79, 8, 'Fonte Corsair CV550', 'c2550.jpg', 340, 'https://www.kabum.com.br/produto/108257/fonte-corsair-cv550-550w-80-plus-bronze-cp-9020210-br?'),
(80, 8, 'Fonte Cooler Master MWE V2 550W', 'cm550.jpg', 380, 'https://www.kabum.com.br/produto/130932/fonte-cooler-master-mwe-v2-550w-80-plus-bronze-mpe-5501-acaab-wo?'),
(81, 8, 'Fonte EVGA 700W', 'ev700.jpg', 430, 'https://www.kabum.com.br/produto/99506/fonte-evga-700w-80-plus-white-100-w1-0700-k?'),
(82, 8, 'Fonte EVGA 600W', 'ev600.jpg', 600, 'https://www.kabum.com.br/produto/99507/fonte-evga-600w-80-plus-bronze-100-br-0600-k?'),
(83, 9, 'Gabinete Rise Mode Glass 06', 'risemode.jpg', 270, 'https://www.kabum.com.br/produto/155311/gabinete-rise-mode-glass-06-frente-e-lateral-em-vidro-preto-rm-ca-06-fb?'),
(84, 9, 'Gabinete Gamer Bluecase BG-014', 'Bluecase.jpg', 340, 'https://www.kabum.com.br/produto/99359/gabinete-gamer-bluecase-bg-014-sem-fonte-usb-3-0-preto-com-lateral-em-acrilico-bg014gcase?'),
(85, 9, 'Gabinete Gamer Bluecase BG-018', 'bluecasebranco.jpg', 350, 'https://www.kabum.com.br/produto/105058/gabinete-gamer-bluecase-bg-018-mid-tower-rgb-lateral-em-acrilico-branco-bg018wgcase?'),
(86, 9, 'Gabinete Gamer Sharkoon TG4 RGB', 'sharkoon.jpg', 580, 'https://www.kabum.com.br/produto/99520/gabinete-gamer-sharkoon-tg4-rgb-sem-fonte-mid-tower-usb-3-0-4-fans-preto-com-lateral-em-vidro?'),
(87, 9, 'Gabinete Gamer Gigabyte C200G', 'gigabyte.jpg', 700, 'https://www.kabum.com.br/produto/135450/gabinete-nox-hummer-blaster-mid-tower-argb-1x-cooler-fan-lateral-em-vidro-temperado-preto-nxhummerblaster?'),
(88, 10, 'Lenovo Ultrafino IdeaPad 3i', 'lenovoultrafino.jpg', 5000, 'https://www.kabum.com.br/produto/254194/notebook-lenovo-ultrafino-ideapad-3i-intel-core-i7-10510u-nvidia-geforce-mx330-8gb-ssd-256gb-windows-11-15-6-prata-82bs000mbr?'),
(89, 10, 'Asus ZenBook 14', 'asuszenbook.jpg', 5500, 'https://www.kabum.com.br/produto/156507/notebook-asus-zenbook-14-intel-core-i5-1135g7-8gb-256-gb-ssd-windows-10-home-14-fhd-ips-iris-xe-graphics-cinza-escuro-ux425ea-bm319t?'),
(90, 10, 'Asus ZenBook 14', 'asuszen14.jpg', 6600, 'https://www.kabum.com.br/produto/156508/notebook-asus-zenbook-14-intel-core-i7-1165g7-8gb-512-gb-ssd-windows-10-home-14-fhd-ips-iris-xe-graphics-cinza-escuro-ux435ea-a5072t?'),
(91, 10, 'Gamer Lenovo Gaming 3i', 'lenovogaming.jpg', 4300, 'https://www.kabum.com.br/produto/156929/notebook-gamer-lenovo-gaming-3i-intel-core-i5-10300h-gtx-1650-4gb-8gb-ram-256gb-ssd-linux-15-6-widescreen-chameleon-blue-82cgs00100?'),
(92, 10, 'Gamer Acer Nitro 5', 'acernitroi7.jpg', 5650, 'https://www.kabum.com.br/produto/308371/notebook-gamer-acer-nitro-5-intel-core-i7-10750h-geforce-gtx-1650-8gb-ram-512gb-ssd-15-6-ips-fhd-win-11-home-preto-an515-55-79x0?'),
(93, 10, 'Gamer GIGABYTE G5', 'gigabyte.jpg', 7600, 'https://www.kabum.com.br/produto/269068/notebook-gamer-gigabyte-g5-geforce-rtx-3050-intel-core-i5-11400h-16gb-ram-ssd-512gb-15-6-fhd-144hz-gd-51br123sd?'),
(94, 10, 'Acer Aspire 5', 'aceraspire5.jpg', 3600, 'https://www.kabum.com.br/produto/308368/notebook-acer-aspire-5-ryzen-7-5700u-8gb-ram-256gb-ssd-nvme-tela-15-6-ips-full-hd-windows-11-home-?'),
(95, 10, 'Asus AMD', 'asus.jpg', 3300, 'https://www.kabum.com.br/produto/334040/notebook-asus-amd-ryzen-5-3500u-8gb-ram-ssd-256gb-15-6-radeon-vega-8-linux-cinza-m515da-br1213?'),
(96, 10, 'Asus Vivobook Pro 15', 'asusvivobook.jpg', 8000, 'https://www.kabum.com.br/produto/334041/notebook-asus-vivobook-pro-15-amd-ryzen-7-5800h-16gb-ram-ssd-512gb-15-6-geforce-rtx3050-windows-11-home-prata-m3500qc-kj432w?'),
(97, 10, 'Gamer Acer Nitro 5', 'acernitro.jpg', 5800, 'https://www.kabum.com.br/produto/308401/notebook-gamer-acer-nitro-5-ryzen-7-4800h-geforce-gtx-1650-8gb-ram-512gb-ssd-15-6-ips-full-hd-windows-11-home-preto-an515-44-r4ka?'),
(98, 10, 'Gamer Aspire Nitro 5', 'aspirenitro5.jpg', 5711, 'https://www.kabum.com.br/produto/212268/notebook-gamer-aspire-nitro-5-amd-ryzen-7-8gb-512gb-ssd-gtx1650-15-6-endless-an515-44-r11b?'),
(99, 10, 'Gamer Acer An515', 'aceran515.jpg', 7803, 'https://www.kabum.com.br/produto/261678/notebook-gamer-acer-an515-15-6-full-hd-144hz-ryzen-7-16gb-ssd-512gb-hd-2tb-geforce-gtx-1650?'),
(100, 11, 'PC Gamer Redragon Arius AMD', 'redragonarius.jpg', 4300, 'https://www.kabum.com.br/produto/241487/pc-gamer-redragon-arius-amd-ryzen-4700s-rgb-radeon-rx-550-2gb-ddr5-16gb-gddr6-ssd-256gb-windows-10-trial-preto-40628?'),
(101, 11, 'PC Gamer Redragon Yamato PRO 41301', 'redragonyamato.jpg', 4860, 'https://www.kabum.com.br/produto/317181/pc-gamer-redragon-yamato-pro-41301-amd-ryzen-5-3600-rgb-nvidia-geforce-gtx-1650-8gb-ram-256gb-ssd-win-10-trial-preto-ym-amd-01-pro?'),
(102, 11, 'PC Gamer Skill Battle, AMD Ryzen 3 3200G', 'skill.jpg', 6800, 'https://www.kabum.com.br/produto/337221/pc-gamer-skill-battle-amd-ryzen-3-3200g-16gb-ddr4-ssd-256gb-gtx-1650-4gb-500w-80-plus-63206?'),
(103, 11, 'PC Gamer BRX Powered By Asus', 'brx.jpg', 6800, 'https://www.kabum.com.br/produto/112750/pc-gamer-brx-powered-by-asus-amd-ryzen-5-3600x-16gb-ssd-240gb-asus-nvidia-geforce-gtx-1650-4gb-windows-10-pro-pcamd53600x16gb?'),
(104, 11, 'PC Gamer Vulcano AMD Ryzen 5', 'vulcano.jpg', 7300, 'https://www.kabum.com.br/produto/327917/pc-gamer-vulcano-amd-ryzen-5-4650g-led-radeon-rx-580-8gb-240gb-ssd-windows-11-pro-preto-7308?'),
(105, 11, 'PC Gamer Facil Intel Com Linux', 'facillinux.jpg', 3200, 'https://www.kabum.com.br/produto/337034/pc-gamer-facil-intel-core-i5-9600kf-nvidia-geforce-gtx-1050-ti-4gb-16gb-ssd-480gb-500w-linux-18702?'),
(106, 11, 'PC Gamer Skill Play', 'skillplay.jpg', 4330, 'https://www.kabum.com.br/produto/337219/pc-gamer-skill-play-intel-core-i3-10100f-8gb-ddr4-ssd-256gb-radeon-rx-550-4gb-500w-80-plus-63210?'),
(107, 11, 'PC Gamer Facil Intel Com Windows', 'gamerfacil.jpg', 5400, 'https://www.kabum.com.br/produto/337035/pc-gamer-facil-intel-core-i5-10400f-nvidia-geforce-gtx-1650-4gb-16gb-ssd-m-2-512gb-650w-linux-17709?'),
(108, 11, 'PC Gamer OnGaming Powered By Asus', 'ongaming.jpg', 5600, 'https://www.kabum.com.br/produto/339226/pc-gamer-ongaming-powered-by-asus-intel-core-i3-12100f-16gb-geforce-gtx-1650-ssd-m-2-250gb-ong121f165162?'),
(109, 11, 'PC Gamer NAVE Atmosfera IAT10', 'nave.jpg', 6700, 'https://www.kabum.com.br/produto/166661/pc-gamer-nave-atmosfera-iat10-powered-by-asus-intel-core-i5-10400f-8gb-ssd-256-hd-1tb-geforce-gtx-1660-super-linux-dni5v53f000?');

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
(7, 1, 1, 1, '1', 'CpuID'),
(8, 2, 1, 1, '2.9GHz', 'Frequencia'),
(9, 3, 1, 1, '6', 'Núcleo'),
(10, 4, 1, 1, 'LGA 1151', 'Socket'),
(12, 1, 1, 2, '1', 'CpuID'),
(13, 2, 1, 2, '3.6GHz', 'Frequencia'),
(14, 3, 1, 2, '8', 'Núcleo'),
(15, 4, 1, 2, 'LGA 1151', 'Socket'),
(17, 1, 1, 3, '1', 'CpuID'),
(18, 2, 1, 3, '3.6GHz', 'Frequencia'),
(19, 3, 1, 3, '4', 'Núcleo'),
(20, 4, 1, 3, 'LGA 1200', 'Socket'),
(22, 1, 1, 4, '1', 'CpuID'),
(23, 2, 1, 4, '2.9GHz', 'Frequencia'),
(24, 3, 1, 4, '8', 'Núcleo'),
(25, 4, 1, 4, 'LGA 1200', 'Socket'),
(27, 1, 1, 5, '1', 'CpuID'),
(28, 2, 1, 5, '2.9GHz', 'Frequencia'),
(29, 3, 1, 5, '8', 'Núcleo'),
(30, 4, 1, 5, 'LGA 1200', 'Socket'),
(32, 1, 1, 6, '1', 'CpuID'),
(33, 2, 1, 6, '3.9GHz', 'Frequencia'),
(34, 3, 1, 6, '6', 'Núcleo'),
(35, 4, 1, 6, 'LGA 1200', 'Socket'),
(37, 1, 1, 7, '1', 'CpuID'),
(38, 2, 1, 7, '2.5GHz', 'Frequencia'),
(39, 3, 1, 7, '8', 'Núcleo'),
(40, 4, 1, 7, 'LGA 1200', 'Socket'),
(42, 1, 1, 8, '1', 'CpuID'),
(43, 2, 1, 8, '3.5GHz', 'Frequencia'),
(44, 3, 1, 8, '8', 'Núcleo'),
(45, 4, 1, 8, 'LGA 1200', 'Socket'),
(47, 1, 1, 9, '1', 'CpuID'),
(48, 2, 1, 9, '3.6GHz', 'Frequencia'),
(49, 3, 1, 9, '12', 'Núcleo'),
(50, 4, 1, 9, 'LGA 1700', 'Socket'),
(52, 1, 1, 10, '1', 'CpuID'),
(53, 2, 1, 10, '3.6GHz', 'Frequencia'),
(54, 3, 1, 10, '16', 'Núcleo'),
(55, 4, 1, 10, 'LGA 1700', 'Socket'),
(57, 1, 1, 11, '2', 'CpuID'),
(58, 2, 1, 11, '3.6GHz', 'Frequencia'),
(59, 3, 1, 11, '4', 'Núcleo'),
(60, 4, 1, 11, 'AM4', 'Socket'),
(62, 1, 1, 12, '2', 'CpuID'),
(63, 2, 1, 12, '3.8', 'Frequencia'),
(64, 3, 1, 12, '4', 'Núcleo'),
(65, 4, 1, 12, 'AM4', 'Socket'),
(67, 1, 1, 13, '2', 'CpuID'),
(68, 2, 1, 13, '3.7 GHz', 'Frequencia'),
(69, 3, 1, 13, '6', 'Núcleo'),
(70, 4, 1, 13, 'AM4', 'Socket'),
(72, 1, 1, 14, '2', 'CpuID'),
(73, 2, 1, 14, '3.5GHz', 'Frequencia'),
(74, 3, 1, 14, '6', 'Núcleo'),
(75, 4, 1, 14, 'AM4', 'Socket'),
(77, 1, 1, 15, '2', 'CpuID'),
(78, 2, 1, 15, '3.6GHz', 'Frequencia'),
(79, 3, 1, 15, '6', 'Núcleo'),
(80, 4, 1, 15, 'AM4', 'Socket'),
(82, 1, 1, 16, '2', 'CpuID'),
(83, 2, 1, 16, '3.5GHz', 'Frequencia'),
(84, 3, 1, 16, '6', 'Núcleo'),
(85, 4, 1, 16, 'AM4', 'Socket'),
(87, 1, 1, 17, '2', 'CpuID'),
(88, 2, 1, 17, '3.6GHz', 'Frequencia'),
(89, 3, 1, 17, '6', 'Núcleo'),
(90, 4, 1, 17, 'AM4', 'Socket'),
(92, 1, 1, 18, '2', 'CpuID'),
(93, 2, 1, 18, '3.7GHz', 'Frequencia'),
(94, 3, 1, 18, '4', 'Núcleo'),
(95, 4, 1, 18, 'AM4', 'Socket'),
(97, 1, 1, 19, '2', 'CpuID'),
(98, 2, 1, 19, '3.8GHz', 'Frequencia'),
(99, 3, 1, 19, '8', 'Núcleo'),
(100, 4, 1, 19, 'AM4', 'Socket'),
(102, 1, 1, 20, '2', 'CpuID'),
(103, 2, 1, 20, '3.4GHz', 'Frequencia'),
(104, 3, 1, 20, '8', 'Núcleo'),
(105, 4, 1, 20, 'AM4 ', 'Socket'),
(108, 6, 2, 21, 'AM4 ', 'Socket '),
(109, 7, 2, 21, '4', 'Slot Mem'),
(110, 8, 2, 21, '64', 'Mem Max'),
(111, 9, 2, 21, 'ATX', 'Formato '),
(113, 6, 2, 22, 'AM4 ', 'Socket '),
(114, 7, 2, 22, '4', 'Slot Mem'),
(115, 8, 2, 22, '64', 'Mem Max'),
(116, 9, 2, 22, 'ATX', 'Formato '),
(118, 6, 2, 23, 'AM4 ', 'Socket '),
(119, 7, 2, 23, '4', 'Slot Mem'),
(120, 8, 2, 23, '128', 'Mem Max'),
(121, 9, 2, 23, 'ATX ', 'Formato '),
(123, 6, 2, 24, 'AM4 ', 'Socket '),
(124, 7, 2, 24, '4', 'Slot Mem'),
(125, 8, 2, 24, '128', 'Mem Max'),
(126, 9, 2, 24, 'ATX ', 'Formato '),
(128, 6, 2, 25, 'LGA1151', 'Socket '),
(129, 7, 2, 25, '2', 'Slot Mem'),
(130, 8, 2, 25, '64', 'Mem Max'),
(131, 9, 2, 25, 'mATX', 'Formato '),
(133, 6, 2, 26, 'LGA1700', 'Socket '),
(134, 7, 2, 26, '2', 'Slot Mem'),
(135, 8, 2, 26, '64', 'Mem Max'),
(136, 9, 2, 26, 'mATX', 'Formato '),
(138, 6, 2, 27, 'LGA1200', 'Socket '),
(139, 7, 2, 27, '4', 'Slot Mem'),
(140, 8, 2, 27, '128', 'Mem Max'),
(141, 9, 2, 27, 'mATX', 'Formato '),
(143, 6, 2, 28, 'LGA1700', 'Socket '),
(144, 7, 2, 28, '4', 'Slot Mem'),
(145, 8, 2, 28, '128', 'Mem Max'),
(146, 9, 2, 28, 'mATX', 'Formato '),
(148, 6, 2, 29, 'LGA1200', 'Socket '),
(149, 7, 2, 29, '2', 'Slot Mem'),
(150, 8, 2, 29, '64', 'Mem Max'),
(151, 9, 2, 29, 'mATX', 'Formato '),
(153, 6, 2, 30, 'AM4', 'Socket '),
(154, 7, 2, 30, '4', 'Slot Mem'),
(155, 8, 2, 30, '128', 'Mem Max'),
(156, 9, 2, 30, 'mATX', 'Formato '),
(157, 10, 3, 31, 'DDR4-3200', 'Velocidade'),
(158, 11, 3, 31, '288-pin-DIMM', 'Tipo'),
(159, 12, 3, 31, '1x8 GB', 'Modulos'),
(160, 13, 3, 31, '8 GB ', 'Capacidade'),
(161, 10, 3, 32, 'DDR4-3600', 'Velocidade'),
(162, 11, 3, 32, '288-pin-DIMM', 'Tipo'),
(163, 12, 3, 32, '1x8 GB', 'Modulos'),
(164, 13, 3, 32, '8 GB', 'Capacidade'),
(165, 10, 3, 33, 'DDR4-3600', 'Velocidade'),
(166, 11, 3, 33, '288-pin-DIMM', 'Tipo'),
(167, 12, 3, 33, '1x8 GB', 'Modulos'),
(168, 13, 3, 33, '8 GB ', 'Capacidade'),
(169, 10, 3, 34, 'DDR4-3600', 'Velocidade'),
(170, 11, 3, 34, '288-pin-DIMM', 'Tipo'),
(171, 12, 3, 34, '1x8 GB', 'Modulos'),
(172, 13, 3, 34, '8 GB ', 'Capacidade'),
(173, 14, 4, 35, 'A400', 'Série '),
(174, 15, 4, 35, '2.5\'\'', 'Formato '),
(175, 16, 4, 35, 'SATA', 'Tipo'),
(176, 17, 4, 35, '240 GB', 'Capacidade '),
(177, 14, 4, 36, 'Sandisk', 'Série '),
(178, 15, 4, 36, '2.5\'\'', 'Formato '),
(179, 16, 4, 36, 'SATA', 'Tipo'),
(180, 17, 4, 36, '240 GB ', 'Capacidade '),
(181, 14, 4, 37, 'A500', 'Série '),
(182, 15, 4, 37, '2.5\'\'', 'Formato '),
(183, 16, 4, 37, 'SATA', 'Tipo'),
(184, 17, 4, 37, '480 GB', 'Capacidade '),
(185, 14, 4, 40, 'ADATA ULTIMATE', 'Série '),
(186, 15, 4, 40, 'M2-2280', 'Formato '),
(187, 16, 4, 40, 'M.2', 'Tipo'),
(188, 17, 4, 40, '240 GB ', 'Capacidade '),
(189, 14, 4, 41, 'ADATA ULTIMATE', 'Série '),
(190, 15, 4, 41, 'M2-2280', 'Formato '),
(191, 16, 4, 41, 'M.2', 'Tipo'),
(192, 17, 4, 41, '480 GB', 'Capacidade '),
(193, 14, 4, 42, 'Lexar', 'Série '),
(194, 15, 4, 42, 'M2-2280', 'Formato '),
(195, 16, 4, 42, 'M.2', 'Tipo'),
(196, 17, 4, 42, '512 GB ', 'Capacidade '),
(197, 14, 4, 43, 'Sn550', 'Série '),
(198, 15, 4, 43, 'M2-2280', 'Formato '),
(199, 16, 4, 43, 'M.2 ', 'Tipo'),
(200, 17, 4, 43, '2 TB ', 'Capacidade '),
(201, 18, 5, 44, 'Barracuda', 'Série '),
(202, 19, 5, 44, '3.5\'\'', 'Formato '),
(203, 20, 5, 44, 'SATA', 'Tipo'),
(204, 21, 5, 44, '1 TB', 'Capacidade '),
(205, 18, 5, 45, 'WD Blue', 'Série '),
(206, 19, 5, 45, '3.5\'\'', 'Formato '),
(207, 20, 5, 45, 'SATA', 'Tipo'),
(208, 21, 5, 45, '2 TB ', 'Capacidade '),
(209, 18, 5, 46, 'Barracuda', 'Série '),
(210, 19, 5, 46, '3.5\'\'', 'Formato '),
(211, 20, 5, 46, 'SATA', 'Tipo'),
(212, 21, 5, 46, '3 TB', 'Capacidade '),
(213, 18, 5, 47, 'Barracuda', 'Série '),
(214, 19, 5, 47, '3.5\'\'', 'Formato '),
(215, 20, 5, 47, 'SATA', 'Tipo'),
(216, 21, 5, 47, '4 TB', 'Capacidade '),
(217, 22, 6, 48, 'Ar', 'Tipo'),
(218, 23, 6, 48, '600 - 2000 RPM', 'RPM'),
(219, 24, 6, 48, '8.0 - 30.0 dbA', 'Ruido'),
(220, 25, 6, 48, 'AMD e INTEL', 'Socket '),
(221, 26, 6, 48, '137mm', 'Tamanho'),
(222, 22, 6, 49, 'Ar', 'Tipo'),
(223, 23, 6, 49, '600 - 1800 RPM', 'RPM'),
(224, 24, 6, 49, '8.0 - 30.0 dbA', 'Ruido'),
(225, 25, 6, 49, 'AMD e INTEL', 'Socket '),
(226, 26, 6, 49, '165mm', 'Tamanho'),
(227, 22, 6, 50, 'Ar', 'Tipo'),
(228, 23, 6, 50, '600 - 1800 RPM', 'RPM'),
(229, 24, 6, 50, '5.0 - 25.0 dbA', 'Ruido'),
(230, 25, 6, 50, 'AMD e INTEL', 'Socket '),
(231, 26, 6, 50, '170mm', 'Tamanho'),
(232, 22, 6, 54, 'Water Cooler', 'Tipo'),
(233, 23, 6, 54, '600 - 1800 RPM', 'RPM'),
(234, 24, 6, 54, '21 - 36 dbA', 'Ruido'),
(235, 25, 6, 54, 'AMD e INTEL', 'Socket '),
(236, 26, 6, 54, '2x 140mm', 'Tamanho'),
(237, 22, 6, 55, 'Water Cooler', 'Tipo'),
(238, 23, 6, 55, '600 - 1800 RPM', 'RPM'),
(239, 24, 6, 55, '21 - 36 dbA', 'Ruido'),
(240, 25, 6, 55, 'AMD e INTEL', 'Socket '),
(241, 26, 6, 55, '2x 140mm', 'Tamanho'),
(242, 22, 6, 56, 'Water Cooler', 'Tipo'),
(243, 23, 6, 56, '600 - 1800 RPM', 'RPM'),
(244, 24, 6, 56, '21 - 36 dbA', 'Ruido'),
(245, 25, 6, 56, 'AMD e INTEL', 'Socket '),
(246, 26, 6, 56, '2x 140mm', 'Tamanho'),
(247, 27, 7, 59, '1', 'GpuID'),
(248, 28, 7, 59, 'GTX', 'Série '),
(249, 29, 7, 59, 'GDDR 6', 'Chipset'),
(250, 30, 7, 59, '4 GB', 'Memória'),
(251, 31, 7, 59, 'Zotac', 'Marca'),
(252, 27, 7, 59, '1', 'GpuID'),
(253, 28, 7, 60, 'GTX', 'Série '),
(254, 29, 7, 60, 'GDDR 6', 'Chipset'),
(255, 30, 7, 60, '6 GB', 'Memória'),
(256, 31, 7, 60, 'ASUS ', 'Marca'),
(257, 27, 7, 61, '1', 'GpuID'),
(258, 28, 7, 61, 'RTX', 'Série '),
(259, 29, 7, 61, 'GDDR 6', 'Chipset'),
(260, 30, 7, 61, '8 GB', 'Memória'),
(261, 31, 7, 61, 'GALAX', 'Marca'),
(262, 27, 7, 62, '1', 'GpuID'),
(263, 28, 7, 62, 'RTX', 'Série '),
(264, 29, 7, 62, 'GDDR 6', 'Chipset'),
(265, 30, 7, 62, '6 GB', 'Memória'),
(266, 31, 7, 62, 'Zotac', 'Marca'),
(267, 27, 7, 64, '2', 'GpuID'),
(268, 28, 7, 64, 'RADEON', 'Série '),
(269, 29, 7, 64, 'GDDR 6', 'Chipset'),
(270, 30, 7, 64, '4 GB', 'Memória'),
(271, 31, 7, 64, 'GIGABYTE', 'Marca'),
(272, 27, 7, 65, '2', 'GpuID'),
(273, 28, 7, 65, 'RADEON', 'Série '),
(274, 29, 7, 65, 'GDDR 6', 'Chipset'),
(275, 30, 7, 65, '8 GB', 'Memória'),
(276, 31, 7, 65, 'AsRock', 'Marca'),
(277, 27, 7, 66, '2', 'GpuID'),
(278, 28, 7, 66, 'RADEON', 'Série '),
(279, 29, 7, 66, 'GDDR 6', 'Chipset'),
(280, 30, 7, 66, '8 GB', 'Memória'),
(281, 31, 7, 66, 'Power Color', 'Marca'),
(282, 27, 7, 67, '2', 'GpuID'),
(283, 28, 7, 67, 'RADEON', 'Série '),
(284, 29, 7, 67, 'GDDR 6', 'Chipset'),
(285, 30, 7, 67, '4 GB', 'Memória'),
(286, 31, 7, 67, 'GIGABYTE', 'Marca'),
(287, 32, 8, 69, 'CX ', 'Série '),
(288, 33, 8, 69, 'ATX', 'Tipo'),
(289, 34, 8, 69, 'Sim', 'Modular '),
(290, 35, 8, 69, '80+ Bronze', 'Certificado'),
(291, 36, 8, 69, '550w', 'Potencia'),
(292, 32, 8, 70, 'SF', 'Série '),
(293, 33, 8, 70, 'ATX', 'Tipo'),
(294, 34, 8, 70, 'Sim', 'Modular '),
(295, 35, 8, 70, '80+ Gold', 'Certificado'),
(296, 36, 8, 70, '600w', 'Potencia'),
(297, 32, 8, 71, 'Core Reactor', 'Série '),
(298, 33, 8, 71, 'ATX', 'Tipo'),
(299, 34, 8, 71, 'Sim', 'Modular '),
(300, 35, 8, 71, '80+ Gold', 'Certificado'),
(301, 36, 8, 71, '650w', 'Potencia'),
(302, 32, 8, 72, 'Core Reactor', 'Série '),
(303, 33, 8, 72, 'ATX', 'Tipo'),
(304, 34, 8, 72, 'Sim', 'Modular '),
(305, 35, 8, 72, '80+ Gold', 'Certificado'),
(306, 36, 8, 72, '750w', 'Potencia'),
(307, 32, 8, 73, 'Core Reactor', 'Série '),
(308, 33, 8, 73, 'ATX', 'Tipo'),
(309, 34, 8, 73, 'Sim', 'Modular '),
(310, 35, 8, 73, '80+ Gold', 'Certificado'),
(311, 36, 8, 73, '850w', 'Potencia'),
(312, 37, 9, 83, 'Full Tower', 'Tipo'),
(313, 38, 9, 83, 'Não', 'Fonte'),
(314, 39, 9, 83, 'Rise Mode', 'Marca'),
(315, 37, 9, 84, 'Full Tower', 'Tipo'),
(316, 38, 9, 84, 'Não', 'Fonte'),
(317, 39, 9, 84, 'Bluecase', 'Marca'),
(318, 37, 9, 85, 'Full Tower', 'Tipo'),
(319, 38, 9, 85, 'Não', 'Fonte'),
(320, 39, 9, 85, 'Bluecase', 'Marca'),
(321, 37, 9, 86, 'Full Tower', 'Tipo'),
(322, 38, 9, 86, 'Não', 'Fonte'),
(323, 39, 9, 86, 'Sharkoon', 'Marca'),
(324, 40, 10, 88, '1', 'CpuID'),
(325, 41, 10, 88, 'i7-10510U', 'CPU'),
(326, 42, 10, 88, '4', 'Núcleos'),
(327, 43, 10, 88, 'Lenovo', 'Marca'),
(328, 44, 10, 88, '1.8 - 4.9Ghz', 'Frequencia CPU'),
(329, 45, 10, 88, '8 GB', 'Memória Ram'),
(330, 46, 10, 88, 'Até 20 GB', 'Memória Expansivel'),
(331, 47, 10, 88, 'Não', 'Vídeo Integrado'),
(332, 48, 10, 88, 'MX 330', 'Placa de Vídeo'),
(333, 49, 10, 88, 'SSD M2 256 GB', 'Armazenamento'),
(334, 40, 10, 89, '1', 'CpuID'),
(335, 41, 10, 89, 'Intel Core I5 1135G7', 'CPU'),
(336, 42, 10, 89, '4', 'Núcleos'),
(337, 43, 10, 89, 'Asus', 'Marca'),
(338, 44, 10, 89, '2.4 GHz', 'Frequencia CPU'),
(339, 45, 10, 89, '8 GB', 'Memória Ram'),
(340, 46, 10, 89, 'Até 32 GB', 'Memória Expansivel'),
(341, 47, 10, 89, 'Sim', 'Vídeo Integrado'),
(342, 48, 10, 89, 'Intel Ires XE', 'Placa de Vídeo'),
(343, 49, 10, 89, 'SSD M2 256 GB', 'Armazenamento'),
(344, 40, 10, 90, '1', 'CpuID'),
(345, 41, 10, 90, 'I7-1165G7', 'CPU'),
(346, 42, 10, 90, '4', 'Núcleos'),
(347, 43, 10, 90, 'Asus', 'Marca'),
(348, 44, 10, 90, '2.8GHz', 'Frequencia CPU'),
(349, 45, 10, 90, '8 GB', 'Memória Ram'),
(350, 46, 10, 90, 'Sim', 'Memória Expansivel'),
(351, 47, 10, 90, 'Sim', 'Vídeo Integrado'),
(352, 48, 10, 90, 'Intel Ires XE', 'Placa de Vídeo'),
(353, 49, 10, 90, 'SSD M2 512 GB', 'Armazenamento'),
(354, 40, 10, 91, '1', 'CpuID'),
(355, 41, 10, 91, 'I5-10300H', 'CPU'),
(356, 42, 10, 91, '4', 'Núcleos'),
(357, 43, 10, 91, 'Lenovo', 'Marca'),
(358, 44, 10, 91, '2.5-4.5 GHz', 'Frequencia CPU'),
(359, 45, 10, 91, '8 GB ', 'Memória Ram'),
(360, 46, 10, 91, 'Sim', 'Memória Expansivel'),
(361, 47, 10, 91, 'Não', 'Vídeo Integrado'),
(362, 48, 10, 91, 'NVIDIA GTX 1650 4 GB', 'Placa de Vídeo'),
(363, 49, 10, 91, 'SSD M2 256 GB', 'Armazenamento'),
(364, 40, 10, 94, '2', 'CpuID'),
(365, 41, 10, 94, 'Ryzen 7-5700U', 'CPU'),
(366, 42, 10, 94, '8', 'Núcleos'),
(367, 43, 10, 94, 'Acer', 'Marca'),
(368, 44, 10, 94, '1.8-4.3 GHz', 'Frequencia CPU'),
(369, 45, 10, 94, '8 GB ', 'Memória Ram'),
(370, 46, 10, 94, 'Sim', 'Memória Expansivel'),
(371, 47, 10, 94, 'Sim', 'Vídeo Integrado'),
(372, 48, 10, 94, 'AMD Radeon Graphics Card', 'Placa de Vídeo'),
(373, 49, 10, 94, 'SSD M2 256 GB', 'Armazenamento'),
(374, 40, 10, 95, '2', 'CpuID'),
(375, 41, 10, 95, 'AMD Ryzen 5-3500U', 'CPU'),
(376, 42, 10, 95, '4', 'Núcleos'),
(377, 43, 10, 95, 'Asus', 'Marca'),
(378, 44, 10, 95, '2.1 GHz', 'Frequencia CPU'),
(379, 45, 10, 95, '8 GB ', 'Memória Ram'),
(380, 46, 10, 95, 'Sim', 'Memória Expansivel'),
(381, 47, 10, 95, 'Sim', 'Vídeo Integrado'),
(382, 48, 10, 95, 'Radeon Vega 8', 'Placa de Vídeo'),
(383, 49, 10, 95, 'SSD M2 256 GB', 'Armazenamento'),
(384, 40, 10, 96, '2', 'CpuID'),
(385, 41, 10, 96, 'AMD Ryzen 7-5800H', 'CPU'),
(386, 42, 10, 96, '8', 'Núcleos'),
(387, 43, 10, 96, 'ASUS', 'Marca'),
(388, 44, 10, 96, '3.2 GHz', 'Frequencia CPU'),
(389, 45, 10, 96, '16 GB ', 'Memória Ram'),
(390, 46, 10, 96, 'Sim', 'Memória Expansivel'),
(391, 47, 10, 96, 'Não', 'Vídeo Integrado'),
(392, 48, 10, 96, 'GeForce RTX 3050 ', 'Placa de Vídeo'),
(393, 49, 10, 96, 'SSD M2 512 GB', 'Armazenamento'),
(394, 40, 10, 97, '2', 'CpuID'),
(395, 41, 10, 97, 'Ryzen 7-4800H', 'CPU'),
(396, 42, 10, 97, '8', 'Núcleos'),
(397, 43, 10, 97, 'ACER', 'Marca'),
(398, 44, 10, 97, '2.9-4.2 GHz', 'Frequencia CPU'),
(399, 45, 10, 97, '8 GB ', 'Memória Ram'),
(400, 46, 10, 97, 'Sim', 'Memória Expansivel'),
(401, 47, 10, 97, 'Não', 'Vídeo Integrado'),
(402, 48, 10, 97, 'NVIDIA GTX 1650 4 GB', 'Placa de Vídeo'),
(403, 49, 10, 97, 'SSD M2 512 GB', 'Armazenamento'),
(404, 50, 11, 100, '2', 'CpuID'),
(405, 51, 11, 100, 'AMD Ryzen 4700S', 'CPU'),
(406, 52, 11, 100, '4', 'Núcleos'),
(407, 53, 11, 100, '3.0 GHz', 'Frequencia CPU'),
(408, 54, 11, 100, 'Redragon', 'Marca'),
(409, 55, 11, 100, '16 GB ', 'Memória Ram'),
(410, 56, 11, 100, 'Sim', 'Memória Expansivel'),
(411, 57, 11, 100, 'Não', 'Vídeo Integrado'),
(412, 58, 11, 100, 'AMD RX 550', 'Placa de Vídeo'),
(413, 59, 11, 100, 'Mini ATX ', 'Placa Mãe'),
(414, 60, 11, 100, 'SSD SATA 256 GB', 'Armazenamento'),
(415, 61, 11, 100, '500 W', 'Fonte'),
(416, 50, 11, 101, '2', 'CpuID'),
(417, 51, 11, 101, 'AMD Ryzen 3600', 'CPU'),
(418, 52, 11, 101, '8', 'Núcleos'),
(419, 53, 11, 101, '3.5 GHz', 'Frequencia CPU'),
(420, 54, 11, 101, 'Redragon', 'Marca'),
(421, 55, 11, 101, '8 GB ', 'Memória Ram'),
(422, 56, 11, 101, 'Sim', 'Memória Expansivel'),
(423, 57, 11, 101, 'Não', 'Vídeo Integrado'),
(424, 58, 11, 101, 'NVIDIA GTX 1650 4 GB', 'Placa de Vídeo'),
(425, 59, 11, 101, 'ASROCK A320M-HD', 'Placa Mãe'),
(426, 60, 11, 101, 'SSD M2 256 GB', 'Armazenamento'),
(427, 61, 11, 101, '500W', 'Fonte'),
(428, 50, 11, 105, '1', 'CpuID'),
(429, 51, 11, 105, 'i5-9600KF', 'CPU'),
(430, 52, 11, 105, '6', 'Núcleos'),
(431, 53, 11, 105, '2.9 Gz', 'Frequencia CPU'),
(432, 54, 11, 105, 'Gamer Fácil', 'Marca'),
(433, 55, 11, 105, '16 GB ', 'Memória Ram'),
(434, 56, 11, 105, 'Sim', 'Memória Expansivel'),
(435, 57, 11, 105, 'Sim', 'Vídeo Integrado'),
(436, 58, 11, 105, 'NVIDIA GTX 1050 TI 4 GB', 'Placa de Vídeo'),
(437, 59, 11, 105, 'Gigabyte H310', 'Placa Mãe'),
(438, 60, 11, 105, 'SSD SATA 480 GB ', 'Armazenamento'),
(439, 61, 11, 105, '500 W', 'Fonte'),
(440, 50, 11, 107, '1', 'CpuID'),
(441, 51, 11, 107, 'I5-10400F', 'CPU'),
(442, 52, 11, 107, '6', 'Núcleos'),
(443, 53, 11, 107, '2.9-4.3 GHz', 'Frequencia CPU'),
(444, 54, 11, 107, 'Gamer Fácil', 'Marca'),
(445, 55, 11, 107, '16 GB ', 'Memória Ram'),
(446, 56, 11, 107, 'Sim', 'Memória Expansivel'),
(447, 57, 11, 107, 'Não', 'Vídeo Integrado'),
(448, 58, 11, 107, 'NVIDIA GTX 1650 4 GB', 'Placa de Vídeo'),
(449, 59, 11, 107, 'Gigabyte H510', 'Placa Mãe'),
(450, 60, 11, 107, 'SSD M2 512 GB', 'Armazenamento'),
(451, 61, 11, 107, '650 W ', 'Fonte');

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
  MODIFY `PecaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT de tabela `pecascampos`
--
ALTER TABLE `pecascampos`
  MODIFY `PecaCampoID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=452;

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
