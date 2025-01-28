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

