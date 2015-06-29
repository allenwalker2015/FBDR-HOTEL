--Creacion de la base de datos

create database HOTEL20

use HOTEL20

go

--Creacion de Tablas
create table HOTEL(
	IdHotel int not null,
	IdPais int not null,
	DirHotel varchar(30) not null,
	TelHotel varchar(20) not null,
	nomHotel varchar(40) not null,
	webSiteHotel varchar(40) not null,
	emailHotel varchar(40) not null
	)
create table SALA(
	IdSala int not null,
	IdTipoSala int not null,
	tamSala int not null,
	
	)
 create table SALAXHOTEL(
	IdHotel int not null,
	IdPais int not null,
	IdSala int not null,
	IdSalaXHotel int not null,
	condSalaXHotel bit DEFAULT NULL
	)

create table PAIS (
	IdPais int not null,
	NomPais varchar(20) not null,
	ContPais varchar(20) not null
)

create table TIPO_SALA(
	IdTipoSala int not null,
	nomTipoSala varchar(20) not null,
	maxPerTipoSala int not null
	)

create table CLIENTE(
	IdCliente int not null,
	IdGenero int not null,
	IdDocIdentidad int not null,
	NomCliente varchar(20)not null,
	ApeCliente varchar(20)not null,
	DirCliente varchar(20),
	
	)

CREATE TABLE DOCUMENTOIDENTIDAD(
	IdDocIdentidad int not null,
	TipoDoc varchar(20) null
	)

CREATE TABLE TELEFONOXCLIENTE(
    IdCliente int not null,
    IdGenero int not null,
	IdDocIdentidad int not null,
	IdTelefonoXcliente int not null,
	NumTel int null
	)
CREATE TABLE CORREOXCLIENTE(
	IdCliente int not null,
    IdGenero int not null,
	IdDocIdentidad int not null,
	IdCorreoXcliente int not null, 
	CorreoCLiente varchar(30) null,
)

create table EMPLEADO(
	codEmp varchar(20) not null,
	IdTipoEmp int not null,
	IdGenero int not null,
	IdTurnoEmp int not null,
	IdDocIdentidad int not null,
	NomEmp varchar(20) not null,
	ApeEmp varchar(20) not null,
	afpEmp varchar(20) not null,
	isssEmp varchar(20) not null,	
	HoraEntradaEmp time not null,
	HoraSalidaEmp time not null,
	
	)

CREATE TABLE TELEFONOXEMPLEADO(
    codEmp varchar(20) not null,
	IdTipoEmp int not null,
	IdGenero int not null,
	IdTurnoEmp int not null,
	IdDocIdentidad int not null,
	IdTelefonoXEmpleado int not null,
	NumTelEmp int null,
	
	)

CREATE TABLE TURNO_EMPLEADO(
	IdTurnoEmp int not null,
	NomTurnoEmp varchar(20) not null
	)

CREATE TABLE GENERO(
	IdGenero int not null,
	NomGenero varchar(25) not null
)

create table TIPO_EMPLEADO(
	IdTipoEmp int not null,
	nomTipoEmp varchar(30) not null,

	)
create table RESERVACION(
	IdHotel int not null,
	IdSala int not null,
	IdSalaXHotel int not null,
	codEmp varchar(20) not null,
	IdTipoEmp int not null,
	idCliente int not null,
	IdGenero int not null,
	IdTurnoEmp int not null,
	idRes int not null,
	IdServicio int not null,
	IdDocIdentidad int not null,
	HoraIniRes time not null,
	HoraFinRes time not null,
	FechaIniRes date not null,
	FechaFinRes date not null,
	CannonRes bit default null,
	numSillasRes int,
	numMesasRes int,
	
	--ServComRes bit default null,
	--EqSonRes bit default null,
	--MasRes bit default null,
	--SpaRes bit default null,
	--BarRes bit default null,
	)

CREATE TABLE SERVICIO(
	IdServicio int not null,
	NomServicio varchar(30) null, 
	EstServicio bit default null,
)


--SETEANDO LAS LLAVES PRIMARIAS
ALTER TABLE GENERO ADD
	CONSTRAINT PK_Genero
	PRIMARY KEY (IdGenero)

ALTER TABLE TELEFONOXCLIENTE ADD
	CONSTRAINT PK_TELEFONOXCLIENTE
	PRIMARY KEY (Idcliente,IdGenero,IdDocIdentidad,Idtelefonoxcliente)

ALTER TABLE HOTEL ADD
	CONSTRAINT PK_idHotel
	PRIMARY KEY (IdHotel,IdPais)

ALTER TABLE SALAXHOTEL ADD
	CONSTRAINT PK_SALAXHOTEL
	PRIMARY KEY (IdHotel,IdSala,IdSalaXHotel)

ALTER TABLE SALA ADD
	CONSTRAINT PK_SALA
	PRIMARY KEY (IdSala)

ALTER TABLE TIPO_SALA ADD
	CONSTRAINT PK_TIPO_SALA
	PRIMARY KEY (IdTipoSala)

ALTER TABLE PAIS ADD
	CONSTRAINT PK_PAIS
	PRIMARY KEY (idPais)

ALTER TABLE RESERVACION ADD
	CONSTRAINT PK_RESERVACION
	PRIMARY KEY (IdHotel,IdSala,IdSalaXHotel,codEmp,IdCliente,IdRes,IdGenero,IdTurnoEmp,IdServicio,IdDocIdentidad)

ALTER TABLE SERVICIO ADD
	CONSTRAINT PK_SERVICIO
	PRIMARY KEY (IdServicio)

ALTER TABLE TURNO_EMPLEADO ADD
	CONSTRAINT PK_TURNO_EMPLEADO
	PRIMARY KEY (IdTurnoEmp)

ALTER TABLE EMPLEADO ADD
	CONSTRAINT PK_EMPLEADO
	PRIMARY KEY (codEmp,IdTipoEmp,IdGenero,IdTurnoEmp,IdDocIdentidad)

ALTER TABLE TIPO_EMPLEADO ADD
	CONSTRAINT PK_TIPO_EMPLEADO
	PRIMARY KEY (IdTipoEmp)

ALTER TABLE TELEFONOXEMPLEADO ADD
	CONSTRAINT PK_TELEFONOXEMPLEADO
	PRIMARY KEY (codEmp,IdTipoEmp,IdGenero,IdTurnoEmp,IdDocIdentidad,IdTelefonoXEmpleado)

ALTER TABLE CLIENTE ADD
	CONSTRAINT PK_CLIENTE
	PRIMARY KEY (IdCliente,IdGenero,IdDocIdentidad)

ALTER TABLE CORREOXCLIENTE ADD
	CONSTRAINT PK_CORREOXCLIENTE
	PRIMARY KEY (IdCliente,IdGenero,IdDocIdentidad,IdCorreoXcliente)

ALTER TABLE DOCUMENTOIDENTIDAD ADD
	CONSTRAINT PK_DOCUMENTOIDENTIDAD
	PRIMARY KEY (IdDocIdentidad)


-- LLAVES FORANEAS

ALTER TABLE EMPLEADO ADD
	CONSTRAINT FK_EMPLEADO_TURNOEMP
	FOREIGN KEY (IdTurnoEmp)
	REFERENCES TURNO_EMPLEADO (IdTurnoEmp)

ALTER TABLE SALA ADD
	CONSTRAINT FK_SALA_TIPO_SALA
	FOREIGN KEY (IdTipoSala)
	REFERENCES TIPO_SALA (IdTipoSala)

ALTER TABLE SALAXHOTEL ADD
	CONSTRAINT FK_SALA_HOTEL_SALA
	FOREIGN KEY (IdSala)
	REFERENCES SALA (IdSala)

ALTER TABLE SALAXHOTEL ADD
	CONSTRAINT FK_SALA_HOTEL_HOTEL
	FOREIGN KEY (IdHotel,IdPais)
	REFERENCES HOTEL (IdHotel,IdPais)

ALTER TABLE CLIENTE ADD
	CONSTRAINT FK_CLIENTE_GENERO
	FOREIGN KEY (IdGenero)
	REFERENCES GENERO (IdGenero)

ALTER TABLE CLIENTE ADD
	CONSTRAINT FK_CLIENTE_DOCUMENTOIDENTIDAD
	FOREIGN KEY (IdDocIdentidad)
	REFERENCES DOCUMENTOIDENTIDAD (IdDocIdentidad)

ALTER TABLE CORREOXCLIENTE ADD
	CONSTRAINT FK_CLINETE_CORREOXCLIENTE
	FOREIGN KEY (IdCliente, IdGenero,IdDocIdentidad)
	REFERENCES CLIENTE (IdCliente, IdGenero,IdDocIdentidad)

ALTER TABLE TELEFONOXCLIENTE ADD
	CONSTRAINT FK_CLIENTE_TELEFONOXCLIENTE
	FOREIGN KEY (IdCliente,IdGenero,IdDocIdentidad)
	REFERENCES CLIENTE (IdCliente,IdGenero,IdDocIdentidad)

ALTER TABLE EMPLEADO ADD
	CONSTRAINT FK_EMPLEADO_GENERO
	FOREIGN KEY (IdGenero)
	REFERENCES GENERO (IdGenero)

ALTER TABLE EMPLEADO ADD
	CONSTRAINT FK_EMPLEADO_DOCUMENTOIDENTIDAD
	FOREIGN KEY (IdDocIdentidad)
	REFERENCES DOCUMENTOIDENTIDAD (IdDocIdentidad)

ALTER TABLE RESERVACION ADD
	CONSTRAINT FK_RESERVACION_SALA
	FOREIGN KEY (IdHotel,IdSala,IdSalaXHotel)
	REFERENCES SALAXHOTEL (IdHotel,IdSala,IdSalaXHotel)

ALTER TABLE RESERVACION ADD
	CONSTRAINT FK_RESERVACION_SERVICIO
	FOREIGN KEY (IdServicio)
	REFERENCES SERVICIO (IdServicio)


ALTER TABLE RESERVACION ADD
	CONSTRAINT FK_RESERVACION_EMPLEADO
	FOREIGN KEY (codEmp,IdTipoEmp,IdGenero,IdTurnoEmp,IdDocIdentidad)
	REFERENCES EMPLEADO (codEmp,IdTipoEmp,IdGenero,IdTurnoEmp,IdDocIdentidad)

ALTER TABLE RESERVACION ADD
	CONSTRAINT FK_RESERVACION_CLIENTE
	FOREIGN KEY (IdCliente,IdGenero,IdDocIdentidad)
	REFERENCES CLIENTE (IdCliente,IdGenero,IdDocIdentidad)

ALTER TABLE EMPLEADO ADD
	CONSTRAINT FK_EMPLEADO_TIPO_EMPLEADO
	FOREIGN KEY (IdTipoEmp)
	REFERENCES TIPO_EMPLEADO (IdTipoEmp)

ALTER TABLE TELEFONOXEMPLEADO ADD
	CONSTRAINT FK_EMPLEADO_TELEFONOXEMPLEADO
	FOREIGN KEY (codEmp,IdTipoEmp,IdGenero,IdTurnoEmp,IdDocIdentidad)
	REFERENCES EMPLEADO (codEmp,IdTipoEmp,IdGenero,IdTurnoEmp,IdDocIdentidad)

ALTER TABLE HOTEL ADD
	CONSTRAINT FK_HOTEL_Pais
	FOREIGN KEY (IdPais)
	REFERENCES PAIS (IdPais)

--CK'S
ALTER TABLE GENERO ADD
	CONSTRAINT CK_GENERO_NOMGENERO
	CHECK (NomGenero = 'masculino' OR Nomgenero = 'femenino')

ALTER TABLE TIPO_SALA ADD
	CONSTRAINT CK_TIPO_SALA_NOMSALA
	CHECK (nomTipoSala = 'Auditorio' OR nomTipoSala = 'Tipo U' or nomTipoSala = 'Aula' or nomTipoSala = 'Cóctel' or nomTipoSala= 'Banquete')

ALTER TABLE TURNO_EMPLEADO ADD
	CONSTRAINT	CK_TURNO_EMPLEADO_NOMTURNOEMP
	CHECK (NomTurnoEmp = 'matutino' or NomTurnoEmp = 'despertino' or NomTurnoEmp = 'nocturno')

ALTER TABLE TIPO_EMPLEADO ADD
	CONSTRAINT CK_TIPO_EMPLEADO_NOMTIPOEMPLEADO
	CHECK (nomTipoEmp = 'ordenanza' or nomTipoEmp = "mantenimiento" or nomTipoEmp = 'recepcionista' or nomTipoEmp = 'mucama' or nomTipoEmp = 'conserje')

ALTER TABLE SERVICIO ADD
	CONSTRAINT	CK_SERVICIO_NOMSERVICIO
	CHECK (NomServicio = 'masajista' or NomServicio = 'gastronomicos' or NomServicio = 'bartender' or NomServicio = 'spa' or NomServicio = 'dj')

ALTER TABLE PAIS ADD
	CONSTRAINT CK_PAIS_NOMPAIS
	CHECK (NomPais = 'El Salvador' or NomPais = 'Honduras' or NomPais = 'Nicaragua' or NomPais = 'Panama' or NomPais = 'Australia' or NomPais = 'Costa Rica' or NomPais = 'España')

ALTER TABLE PAIS ADD
	CONSTRAINT CK_PAIS_CONTPAIS
	CHECK (ContPais = 'America' or ContPais = 'Europa' or ContPais = 'Oceania' or ContPais = 'Asia' or ContPais = 'Africa')

