-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 22-Jun-2022 às 22:27
-- Versão do servidor: 10.4.17-MariaDB
-- versão do PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `teupcfinal`
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
