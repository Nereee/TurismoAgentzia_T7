DROP DATABASE IF EXISTS db_bidaiak;

CREATE DATABASE IF NOT EXISTS db_bidaiak
collate utf8mb4_spanish_ci;

USE db_bidaiak;

create table if not exists agentzia_mota (
kodAgMota varchar(2) primary key not null,
deskribapena varchar(20) not null
);

create table if not exists langile_kopurua (
kodLangKop varchar(2) not null primary key,
deskribapena varchar(60) not null
);

create table if not exists agentzia (
IDAgentzia tinyint not null primary key,
izena varchar(50) not null,
logoa varchar(200),
kolorea varchar(7),
Pasahitza varchar(50) not null,
Erabiltzaile varchar (25) not null unique,
kodAgMota varchar(2) not null,
kodLangKop varchar(2) not null,
foreign key (kodAgMota) references agentzia_mota(kodAgMota),
foreign key (kodLangKop) references langile_kopurua(kodLangKop)
);

create table if not exists bidaia_mota (
kodBidaiaMota varchar(2) not null primary key,
 deskribapena varchar(50) not null
 );
 
 create table if not exists herrialdea (
 kodHerrialdea varchar(2) not null primary key,
 deskribapena varchar(50) not null
 );
 
 create table if not exists bidaia (
 IDBidaia varchar(10) primary key not null,
 izena varchar(50) not null,
 deskribapena varchar(50),
 dataIrteera date not null,
 dataAmaiera date not null,
 IDAgentzia tinyint not null,
 kodBidaiaMota varchar(2) not null,
 kodHerrialdea varchar(2) not null,
 iraupena tinyint not null, 	#tipo de entrada? DIA
 foreign key (IDAgentzia) references agentzia(IDAgentzia),
 foreign key (kodBidaiaMota) references bidaia_mota(kodBidaiaMota),
foreign key (kodHerrialdea) references herrialdea(kodHerrialdea)
);

create table if not exists zerbitzua (
IDZerbitzua varchar(5) not null primary key,
mota varchar(20) not null,
IDBidaia varchar(10) not null,
foreign key (IDBidaia) references bidaia(IDBidaia)
);

create table if not exists beste_zerbitzuak (
IDBesteZerbitzuak varchar(5) primary key not null,
izena varchar(20) not null,
data date not null,
deskribapena varchar(50),
prezioa int,
foreign key (IDBesteZerbitzuak) references zerbitzua(IDZerbitzua) 
);

create table if not exists logela_mota (
kodLogelaMota varchar(5) primary key not null,
deskribapena varchar(50)
);

create table if not exists airelinea (
KodAirelinea varchar(5) primary key not null,
izena varchar(50) not null,
herrialdea varchar (100) not null
);

create table if not exists aireportua (
KodAireportua varchar(5) primary key not null,
hiria varchar(100) not null
);

create table if not exists ostatua (
IDostatua varchar(5) primary key not null,
izena varchar(20) not null,
hiria varchar(20) not null,
prezioa tinyint,
sarreraEguna date not null,
irteeraEguna date not null,
kodLogelaMota varchar(5) not null,
foreign key (IDOstatua) references zerbitzua(IDZerbitzua),
foreign key (KodLogelaMota) references logela_mota(KodLogelaMota)
);

create table if not exists hegaldia (
IDHegaldia varchar(5) primary key not null,
mota tinyint(10) not null,
HegaldiKodea varchar(5) not null unique,
BidaiaIraupen int not null,
prezioa smallint,
IrteeraData date not null,
IrteeraOrdutegia time not null,
KodAirelinea varchar(5) not null,
KodAireIrteera varchar(5) not null,
KodAireHelmuga varchar(5) not null,
foreign key (KodAirelinea) references airelinea(KodAirelinea),
foreign key (KodAireIrteera) references aireportua(KodAireportua),
foreign key (KodAireHelmuga) references aireportua(KodAireportua),
foreign key (IDHegaldia) references zerbitzua(IDZerbitzua)
);

create table if not exists joanetorri (
IDJoanEtorri varchar(5) primary key not null,
ItzuleraOrdua time not null,
ItzuleraData date not null,
BueltakoIraupena int not null,
HegaldiKodeaBuelta varchar(5) not null unique,
KodAirelinea varchar(5) not null,
KodAireIrteera varchar(5) not null,
KodAireHelmuga varchar(5) not null,
foreign key (IDJoanEtorri) references zerbitzua(IDZerbitzua),
foreign key (KodAirelinea) references airelinea(KodAirelinea),
foreign key (KodAireIrteera) references aireportua(KodAireportua),
foreign key (KodAireHelmuga) references aireportua (KodAireportua)
);

insert into aireportua
VALUES
('ACA',	'MÉXICO (ACAPULCO)'),
('ACE', 'Lanzarote'),
('AGP',	'MALAGA'),
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
('CAS', 'MARRUECOS (Casablanca)'),
('CCS', 'VENEZUELA ( CARACAS)'),
('CDG', 'FRANCIA,París (aeropuerto Charles de Gaulle)'),
('CPH', 'DINAMARCA'),
('DTT', 'DETROIT'),
('DUB', 'IRLANDA (DUBLIN)'),
('DUS', 'ALEMANIA (Dusseldorf )'),
('EAS', 'SAN SEBASTIAN'),
('FRA', 'ALEMANIA (Frankfurt )'),
('FUE', 'FUERTEVENTURA'),
('GMZ', 'LA GOMERA'),
('GRO', 'Gerona'),
('GRX', 'Granada'),
('GVA', 'SUIZA (Ginebra )'),
('HAM', 'ALEMANIA (hamburgo)'),
('HEL', 'FINLANDIA (Helsinki )'),
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
('PRG', 'REPÚBLICA CHECA (Praga )'),
('RAK', 'MARRUECOS (Marrakech)'),
('REU', 'REUS'),
('RIO', 'BRASIL (Rio de Janeiro )'),
('SAO', 'BRASIL (Sao Paulo )'),
('SCQ', 'Santiago de Compostela'),
('SDQ', 'REPÚBLICA DOMINICANA (Santo Domingo)'),
('SDR', 'SANTANDER'),
('SEA', 'Seattle'),
('SFO', 'SAN FRANCISCO'),
('SLM', 'Salamanca'),
('SPC', 'Santa Cruz de la Palma'),
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
('WAW', 'POLONIA (Varsovia ) WAW'),
('XRY', 'JEREZ DE LA FRONTERA'),
('YMQ', 'Montreal, Québec'),
('YOW', 'CA Ottawa, Ontario YOW'),
('YTO', 'CA Toronto, Ontario YTO'),
('YVR', 'CA VANCOUVER'),
('ZAZ', 'Zaragoza'),
('ZRH', 'SUIZA (Zurich)');

INSERT into herrialdea
VALUES
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

insert into langile_kopurua
VALUES
('L1', '5 gehienez (1 - 5 bitartean)'),
('L2', '10 gehienez (1 - 10 bitartean)'),
('L3', '20 gehienez (1 - 20 bitartean)');

INSERT INTO `agentzia_mota` (`kodAgMota`, `deskribapena`) VALUES
('A1', 'Mayorista'),
('A2', 'Minorista'),
('A3', 'Mayorista-minorista');

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

INSERT INTO `bidaia_mota` (`kodBidaiaMota`, `deskribapena`) VALUES
('B1', 'Ezkongaiak'),
('B2', 'Senior'),
('B3', 'Taldeak'),
('B4', 'Bidaia handiak (helmuga exotikoak + hegaldia + ost'),
('B5', 'Eskapada'),
('B6', 'Familiak (haur txikiekin)');

INSERT INTO `logela_mota` (`kodLogelaMota`, `deskribapena`) VALUES
('DB', 'Bikoitza'),
('DUI', 'Bikoitza, erabilpen indibiduala'),
('SIN', 'Indibiduala'),
('TPL', 'Hirukoitza');