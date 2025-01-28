-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-01-2025 a las 15:45:18
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_bidaiak`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agentzia`
--

CREATE TABLE `agentzia` (
  `IDAgentzia` tinyint(4) NOT NULL,
  `izena` varchar(50) NOT NULL,
  `logoa` varchar(200) DEFAULT NULL,
  `kolorea` varchar(7) DEFAULT NULL,
  `kodAgMota` varchar(2) NOT NULL,
  `kodLangKop` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `agentzia`
--

INSERT INTO `agentzia` (`IDAgentzia`, `izena`, `logoa`, `kolorea`, `kodAgMota`, `kodLangKop`) VALUES
(1, 'Primera', 'logo1', 'kolore1', 'A1', 'L1'),
(2, 'sEGUNDA', 'lOGAZO', 'kolor2', 'A3', 'L3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agentzia_mota`
--

CREATE TABLE `agentzia_mota` (
  `kodAgMota` varchar(2) NOT NULL,
  `deskribapena` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `agentzia_mota`
--

INSERT INTO `agentzia_mota` (`kodAgMota`, `deskribapena`) VALUES
('A1', 'Mayorista'),
('A2', 'Minorista'),
('A3', 'Mayorista-minorista');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `airelinea`
--

CREATE TABLE `airelinea` (
  `KodAirelinea` varchar(5) NOT NULL,
  `izena` varchar(20) NOT NULL,
  `herrialdea` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `airelinea`
--

INSERT INTO `airelinea` (`KodAirelinea`, `izena`, `herrialdea`) VALUES
('2K', 'AVIANCA-Ecuador dba ', 'EC'),
('3P', 'World 2 Fly PT, S.A.', 'PT'),
('6B*', 'TUIfly Nordic AB', 'CN'),
('A.C.', 'Air France', 'FR'),
('A0', 'BA Euroflyer Limited', 'GB'),
('AA', 'American Airlines', 'USA'),
('AM', 'Aerovias de Mexico S', 'MX'),
('AR', 'Aerolineas Argentina', 'AR'),
('AV', 'Aerovias del Contine', 'CO'),
('AY', 'Finnair', 'FI'),
('AZ', 'Alitalia', 'IT'),
('BA', 'British Airways PLC', 'GB'),
('CL', 'Lufthansa CityLine G', 'DE'),
('DE', 'Condor Flugdienst Gm', 'DE'),
('DL', 'Delta Air Lines Inc', 'USA'),
('DS', 'Easyjet CH S.A', 'CH'),
('GL', 'Air GRL', 'GRL'),
('JJ', 'Tam Linhas Aereas SA', 'BR'),
('KL', 'KLM', 'NL'),
('KN', 'CN United Airlines', 'CN'),
('LH', 'Lufthansa', 'DE'),
('LX', 'SWISS International ', 'CH'),
('M3', 'BSA - Aerolinhas Bra', 'BR'),
('MS', 'Egyptair', 'EG'),
('MT', 'MT Air Travel Ltd db', 'MT'),
('N0', 'Norse Atlantic Airwa', 'NO'),
('OU', 'HR Airlines d.d.', 'HR'),
('PC', 'Pegasus Airlines', 'TR'),
('QR', 'QA Airways Group Q.C', 'QA'),
('RJ', 'Alia - The Royal JOn', 'JO'),
('RK', 'RYNAIR', 'GB'),
('S4', 'SATA Internacional -', 'PT'),
('SN', 'Brussels Airlines', 'BE'),
('SP', 'SATA (Air Acores)', 'PT'),
('TK', 'Turkish Airlines Inc', 'TR'),
('TP', 'TAP PT', 'PT'),
('TS', 'Air Transat', 'CA'),
('U2', 'EASYJET UK LIMITED', 'GB'),
('UA', 'United Airlines Inc', 'USA'),
('UX', 'Air Europa Lineas Ae', 'ES'),
('VOY', 'Aerolínea Vueling SA', 'ES'),
('VS', 'Virgin Atlantic Airw', 'GB'),
('WA', 'KLM Cityhopper', 'NL'),
('WFL', 'World2Fly', 'ES'),
('WK', 'Edelweiss Air AG', 'CH'),
('X3*', 'TUIfly Gmbh', 'DE'),
('X7', 'Challenge Airlines (', 'BE'),
('YW', 'Air Nostrum, Lineas ', 'ES');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aireportua`
--

CREATE TABLE `aireportua` (
  `KodAireportua` varchar(5) NOT NULL,
  `hiria` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `aireportua`
--

INSERT INTO `aireportua` (`KodAireportua`, `hiria`) VALUES
('ACA', 'MÉXICO (ACAPULCO)'),
('ACE', 'Lanzarote'),
('AGP', 'MALAGA'),
('ALC', 'Alicante'),
('AMM', 'JO (Ammán ) AMM'),
('AMS', 'HOLANDA Amsterdam'),
('ATH', 'GRECIA ( Atenas)'),
('BCN', 'Barcelona'),
('BER', 'ALEMANIA (Berlín )'),
('BIO', 'Bilbao'),
('BJZ', 'Badajoz'),
('BKK', 'TAILANDIA Bagkok'),
('BOG', 'COLOMBIA Bogotá'),
('BOS', 'Boston'),
('BRU', 'BELGICA (Bruselas )'),
('BSB', 'BRASIL (brasilia)'),
('BUE', 'Buenos Aires'),
('CAI', 'EG El Cairo'),
('CAS', 'MARRUECOS (Casablanc'),
('CCS', 'VENEZUELA ( CARACAS)'),
('CDG', 'FRANCIA,París (aerop'),
('CPH', 'DINAMARCA'),
('DTT', 'DETROIT'),
('DUB', 'IRLANDA (DUBLIN)'),
('DUS', 'ALEMANIA (Dusseldorf'),
('EAS', 'SAN SEBASTIAN'),
('FRA', 'ALEMANIA (Frankfurt '),
('FUE', 'FUERTEVENTURA'),
('GMZ', 'LA GOMERA'),
('GRO', 'Gerona'),
('GRX', 'Granada'),
('GVA', 'SUIZA (Ginebra )'),
('HAM', 'ALEMANIA (hamburgo)'),
('HEL', 'FINLANDIA (Helsinki '),
('HOU', 'Houston'),
('IBZ', 'Ibiza'),
('IST', 'TR (ESTAMBUL)'),
('JFK', 'Nueva York'),
('KIN', 'JAMAICA (kingston)'),
('LAX', 'LOS ANGELES'),
('LBG', 'FRANCIA ,Le Bourget'),
('LCG', 'La Coruña LCG'),
('LGH', 'LONDRES (GATWICK)'),
('LHR', 'LONDRES Heathrow'),
('LIM', 'PERU ( Lima)'),
('LIS', 'PT (lisboa)'),
('LPA', 'GRAN CANARIA'),
('LYS', 'FRANCIA (lyon)'),
('MAD', 'Madrid'),
('MAH', 'MAHON'),
('MEL', 'AUSTRALIA Melbourne'),
('MEX', 'México D.F.'),
('MIA', 'Miami'),
('MIL', 'ITALIA (Milán )'),
('MJV', 'Murcia'),
('MOW', 'RUSIA (Moscú ) MOW'),
('MRS', 'FRANCIA (Marsella)'),
('MUC', 'ALEMANIA (Munich )'),
('NBO', 'KENIA ( Nairobi)'),
('ODB', 'Córdoba'),
('ORY', 'FRANCIA (ORLY)'),
('OSL', 'NORUEGA (oslo)'),
('OVD', 'Asturias'),
('PHL', 'Philadelphia PHL'),
('PMI', 'PALMA DE MALLORCA'),
('PNA', 'Pamplona'),
('PRG', 'REPÚBLICA CHECA (Pra'),
('RAK', 'MARRUECOS (Marrakech'),
('REU', 'REUS'),
('RIO', 'BRASIL (Rio de Janei'),
('SAO', 'BRASIL (Sao Paulo )'),
('SCQ', 'Santiago de Composte'),
('SDQ', 'REPÚBLICA DOMINICANA'),
('SDR', 'SANTANDER'),
('SEA', 'Seattle'),
('SFO', 'SAN FRANCISCO'),
('SLM', 'Salamanca'),
('SPC', 'Santa Cruz de la Pal'),
('STN', 'LONDRES (Stanted)'),
('STO', 'SUECIA (Estocolmo)'),
('STR', 'ALEMANIA (Stuttgart)'),
('SYD', 'AUSTRALIA (SIYNEY)'),
('TFN', 'Tenerife Norte'),
('TFS', 'Tenerife Sur'),
('TUN', 'Túnez'),
('VDE', 'HIERRO'),
('VGO', 'Vigo'),
('VIE', 'AUSTRIA (Viena )'),
('VIT', 'VITORIA'),
('VLC', 'Valencia'),
('WAS', 'WASHINGTON'),
('WAW', 'POLONIA (Varsovia ) '),
('XRY', 'JEREZ DE LA FRONTERA'),
('YMQ', 'Montreal, Québec'),
('YOW', 'CA Ottawa, Ontario Y'),
('YTO', 'CA Toronto, Ontario '),
('YVR', 'CA VANCOUVER'),
('ZAZ', 'Zaragoza'),
('ZRH', 'SUIZA (Zurich)');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `beste_zerbitzuak`
--

CREATE TABLE `beste_zerbitzuak` (
  `IDBesteZerbitzuak` varchar(5) NOT NULL,
  `izena` varchar(20) NOT NULL,
  `data` date NOT NULL,
  `deskribapena` varchar(50) DEFAULT NULL,
  `prezioa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bidaia`
--

CREATE TABLE `bidaia` (
  `IDBidaia` varchar(10) NOT NULL,
  `izena` varchar(50) NOT NULL,
  `deskribapena` varchar(50) DEFAULT NULL,
  `dataIrteera` date NOT NULL,
  `dataAmaiera` date NOT NULL,
  `IDAgentzia` tinyint(4) NOT NULL,
  `kodBidaiaMota` varchar(2) NOT NULL,
  `kodHerrialdea` varchar(2) NOT NULL,
  `iraupena` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bidaia_mota`
--

CREATE TABLE `bidaia_mota` (
  `kodBidaiaMota` varchar(2) NOT NULL,
  `deskribapena` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `bidaia_mota`
--

INSERT INTO `bidaia_mota` (`kodBidaiaMota`, `deskribapena`) VALUES
('B1', 'Ezkongaiak'),
('B2', 'Senior'),
('B3', 'Taldeak'),
('B4', 'Bidaia handiak (helmuga exotikoak + hegaldia + ost'),
('B5', 'Eskapada'),
('B6', 'Familiak (haur txikiekin)');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hegaldia`
--

CREATE TABLE `hegaldia` (
  `IDHegaldia` varchar(5) NOT NULL,
  `mota` tinyint(10) NOT NULL,
  `HegaldiKodea` varchar(5) DEFAULT NULL,
  `BidaiaIraupen` int(11) NOT NULL,
  `prezioa` smallint(6) DEFAULT NULL,
  `IrteeraData` date NOT NULL,
  `IrteeraOrdutegia` time NOT NULL,
  `KodAirelinea` varchar(5) NOT NULL,
  `KodAireIrteera` varchar(5) NOT NULL,
  `KodAireHelmuga` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `herrialdea`
--

CREATE TABLE `herrialdea` (
  `kodHerrialdea` varchar(2) NOT NULL,
  `deskribapena` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `herrialdea`
--

INSERT INTO `herrialdea` (`kodHerrialdea`, `deskribapena`) VALUES
('AR', 'ARGENTINA'),
('AT', 'AUSTRIA'),
('BE', 'BÉLGICA'),
('BR', 'BRASIL'),
('CA', 'CANADA'),
('CH', 'SUIZA'),
('CN', 'CHINA'),
('CU', 'CUBA'),
('CY', 'CHIPRE'),
('CZ', 'REPUBLICA CHECA'),
('DE', 'ALEMANIA'),
('DK', 'DINAMARCA'),
('EE', 'ESTONIA'),
('EG', 'EGIPTO'),
('ES', 'ESPAÑA'),
('FI', 'FINLANDIA'),
('FR', 'FRANCIA'),
('GB', 'REINO UNIDO'),
('GR', 'GRECIA'),
('GT', 'GUATEMALA'),
('HK', 'HONG-KONG'),
('HR', 'CROACIA'),
('HU', 'HUNGRIA'),
('ID', 'INDONESIA'),
('IE', 'IRLANDA'),
('IL', 'ISRAEL'),
('IN', 'INDIA'),
('IS', 'ISLANDIA'),
('IT', 'ITALIA'),
('JM', 'JAMAICA'),
('JP', 'JAPÓN'),
('KE', 'KENIA'),
('LU', 'LUXEMBURGO'),
('MA', 'MARRUECOS'),
('MC', 'MÓNACO'),
('MT', 'MALTA'),
('MV', 'MALDIVAS'),
('MX', 'MEXICO'),
('NL', 'PAISES BAJOS'),
('NO', 'NORUEGA'),
('PA', 'PANAMÁ'),
('PE', 'PERÚ'),
('PL', 'POLONIA'),
('PR', 'PUERTO RICO'),
('PT', 'PORTUGAL'),
('QA', 'QATAR'),
('RO', 'RUMANIA'),
('RU', 'RUSIA'),
('SC', 'SEYCHELLES'),
('SE', 'SUECIA'),
('SG', 'SINGAPUR'),
('TH', 'TAILANDIA'),
('TN', 'TÚNEZ'),
('TR', 'TURQUIA'),
('TZ', 'TANZANIA (INCLUYE ZANZIBAR)'),
('US', 'ESTADOS UNIDOS'),
('VE', 'VENEZUELA'),
('VN', 'VIETNAM'),
('ZA', 'SUDÁFRICA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `joanetorri`
--

CREATE TABLE `joanetorri` (
  `IDJoanEtorri` varchar(5) NOT NULL,
  `ItzuleraOrdua` time NOT NULL,
  `ItzuleraData` date NOT NULL,
  `BueltakoIraupena` int(11) NOT NULL,
  `HegaldiKodeaBuelta` varchar(5) NOT NULL,
  `KodAirelinea` varchar(5) NOT NULL,
  `KodAireIrteera` varchar(5) NOT NULL,
  `KodAireHelmuga` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `langile_kopurua`
--

CREATE TABLE `langile_kopurua` (
  `kodLangKop` varchar(2) NOT NULL,
  `deskribapena` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `langile_kopurua`
--

INSERT INTO `langile_kopurua` (`kodLangKop`, `deskribapena`) VALUES
('L1', '5 gehienez (1 - 5 bitartean)'),
('L2', '10 gehienez (1 - 10 bitartean)'),
('L3', '20 gehienez (1 - 20 bitartean)');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logela_mota`
--

CREATE TABLE `logela_mota` (
  `kodLogelaMota` varchar(5) NOT NULL,
  `deskribapena` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `logela_mota`
--

INSERT INTO `logela_mota` (`kodLogelaMota`, `deskribapena`) VALUES
('DB', 'Bikoitza'),
('DUI', 'Bikoitza, erabilpen indibiduala'),
('SIN', 'Indibiduala'),
('TPL', 'Hirukoitza');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ostatua`
--

CREATE TABLE `ostatua` (
  `IDostatua` varchar(5) NOT NULL,
  `izena` varchar(20) NOT NULL,
  `hiria` varchar(20) NOT NULL,
  `prezioa` tinyint(4) DEFAULT NULL,
  `sarreraEguna` date NOT NULL,
  `irteeraEguna` date NOT NULL,
  `kodLogelaMota` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zerbitzua`
--

CREATE TABLE `zerbitzua` (
  `IDZerbitzua` varchar(5) NOT NULL,
  `mota` varchar(20) NOT NULL,
  `IDBidaia` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `agentzia`
--
ALTER TABLE `agentzia`
  ADD PRIMARY KEY (`IDAgentzia`),
  ADD KEY `kodAgMota` (`kodAgMota`),
  ADD KEY `kodLangKop` (`kodLangKop`);

--
-- Indices de la tabla `agentzia_mota`
--
ALTER TABLE `agentzia_mota`
  ADD PRIMARY KEY (`kodAgMota`);

--
-- Indices de la tabla `airelinea`
--
ALTER TABLE `airelinea`
  ADD PRIMARY KEY (`KodAirelinea`);

--
-- Indices de la tabla `aireportua`
--
ALTER TABLE `aireportua`
  ADD PRIMARY KEY (`KodAireportua`);

--
-- Indices de la tabla `beste_zerbitzuak`
--
ALTER TABLE `beste_zerbitzuak`
  ADD PRIMARY KEY (`IDBesteZerbitzuak`);

--
-- Indices de la tabla `bidaia`
--
ALTER TABLE `bidaia`
  ADD PRIMARY KEY (`IDBidaia`),
  ADD KEY `IDAgentzia` (`IDAgentzia`),
  ADD KEY `kodBidaiaMota` (`kodBidaiaMota`),
  ADD KEY `kodHerrialdea` (`kodHerrialdea`);

--
-- Indices de la tabla `bidaia_mota`
--
ALTER TABLE `bidaia_mota`
  ADD PRIMARY KEY (`kodBidaiaMota`);

--
-- Indices de la tabla `hegaldia`
--
ALTER TABLE `hegaldia`
  ADD PRIMARY KEY (`IDHegaldia`),
  ADD UNIQUE KEY `HegaldiKodea` (`HegaldiKodea`),
  ADD KEY `KodAirelinea` (`KodAirelinea`),
  ADD KEY `KodAireIrteera` (`KodAireIrteera`),
  ADD KEY `KodAireHelmuga` (`KodAireHelmuga`);

--
-- Indices de la tabla `herrialdea`
--
ALTER TABLE `herrialdea`
  ADD PRIMARY KEY (`kodHerrialdea`);

--
-- Indices de la tabla `joanetorri`
--
ALTER TABLE `joanetorri`
  ADD PRIMARY KEY (`IDJoanEtorri`),
  ADD UNIQUE KEY `HegaldiKodeaBuelta` (`HegaldiKodeaBuelta`),
  ADD KEY `KodAirelinea` (`KodAirelinea`),
  ADD KEY `KodAireIrteera` (`KodAireIrteera`),
  ADD KEY `KodAireHelmuga` (`KodAireHelmuga`);

--
-- Indices de la tabla `langile_kopurua`
--
ALTER TABLE `langile_kopurua`
  ADD PRIMARY KEY (`kodLangKop`);

--
-- Indices de la tabla `logela_mota`
--
ALTER TABLE `logela_mota`
  ADD PRIMARY KEY (`kodLogelaMota`);

--
-- Indices de la tabla `ostatua`
--
ALTER TABLE `ostatua`
  ADD PRIMARY KEY (`IDostatua`),
  ADD KEY `kodLogelaMota` (`kodLogelaMota`);

--
-- Indices de la tabla `zerbitzua`
--
ALTER TABLE `zerbitzua`
  ADD PRIMARY KEY (`IDZerbitzua`),
  ADD KEY `IDBidaia` (`IDBidaia`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `agentzia`
--
ALTER TABLE `agentzia`
  ADD CONSTRAINT `agentzia_ibfk_1` FOREIGN KEY (`kodAgMota`) REFERENCES `agentzia_mota` (`kodAgMota`),
  ADD CONSTRAINT `agentzia_ibfk_2` FOREIGN KEY (`kodLangKop`) REFERENCES `langile_kopurua` (`kodLangKop`);

--
-- Filtros para la tabla `beste_zerbitzuak`
--
ALTER TABLE `beste_zerbitzuak`
  ADD CONSTRAINT `beste_zerbitzuak_ibfk_1` FOREIGN KEY (`IDBesteZerbitzuak`) REFERENCES `zerbitzua` (`IDZerbitzua`);

--
-- Filtros para la tabla `bidaia`
--
ALTER TABLE `bidaia`
  ADD CONSTRAINT `bidaia_ibfk_1` FOREIGN KEY (`IDAgentzia`) REFERENCES `agentzia` (`IDAgentzia`),
  ADD CONSTRAINT `bidaia_ibfk_2` FOREIGN KEY (`kodBidaiaMota`) REFERENCES `bidaia_mota` (`kodBidaiaMota`),
  ADD CONSTRAINT `bidaia_ibfk_3` FOREIGN KEY (`kodHerrialdea`) REFERENCES `herrialdea` (`kodHerrialdea`);

--
-- Filtros para la tabla `hegaldia`
--
ALTER TABLE `hegaldia`
  ADD CONSTRAINT `hegaldia_ibfk_1` FOREIGN KEY (`KodAirelinea`) REFERENCES `airelinea` (`KodAirelinea`),
  ADD CONSTRAINT `hegaldia_ibfk_2` FOREIGN KEY (`KodAireIrteera`) REFERENCES `aireportua` (`KodAireportua`),
  ADD CONSTRAINT `hegaldia_ibfk_3` FOREIGN KEY (`KodAireHelmuga`) REFERENCES `aireportua` (`KodAireportua`),
  ADD CONSTRAINT `hegaldia_ibfk_4` FOREIGN KEY (`IDHegaldia`) REFERENCES `zerbitzua` (`IDZerbitzua`);

--
-- Filtros para la tabla `joanetorri`
--
ALTER TABLE `joanetorri`
  ADD CONSTRAINT `joanetorri_ibfk_1` FOREIGN KEY (`IDJoanEtorri`) REFERENCES `zerbitzua` (`IDZerbitzua`),
  ADD CONSTRAINT `joanetorri_ibfk_2` FOREIGN KEY (`KodAirelinea`) REFERENCES `airelinea` (`KodAirelinea`),
  ADD CONSTRAINT `joanetorri_ibfk_3` FOREIGN KEY (`KodAireIrteera`) REFERENCES `aireportua` (`KodAireportua`),
  ADD CONSTRAINT `joanetorri_ibfk_4` FOREIGN KEY (`KodAireHelmuga`) REFERENCES `aireportua` (`KodAireportua`);

--
-- Filtros para la tabla `ostatua`
--
ALTER TABLE `ostatua`
  ADD CONSTRAINT `ostatua_ibfk_1` FOREIGN KEY (`kodLogelaMota`) REFERENCES `logela_mota` (`kodLogelaMota`);

--
-- Filtros para la tabla `zerbitzua`
--
ALTER TABLE `zerbitzua`
  ADD CONSTRAINT `zerbitzua_ibfk_1` FOREIGN KEY (`IDBidaia`) REFERENCES `bidaia` (`IDBidaia`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
