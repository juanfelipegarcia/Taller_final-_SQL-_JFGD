DROP database if exists juanGarcia_02_12_2021;
CREATE DATABASE juanGarcia_02_12_2021;

USE juanGarcia_02_12_2021;

create table paciente(
	IdHistoriaClinica varchar(255) primary key,
    IdSS varchar(255),
	PrimerNombre varchar(50) not null,
    SegundoNombre varchar(50),
    PrimerApellido varchar(50) not null, 
    SegundoApellido varchar(50),
    Calle varchar(100) not null,
    Numero varchar(100) not null,
    Adjunto varchar(300) not null,
    Telefono varchar(30) not null,
    FechaDeNacimiento date not null
);

create table servicio(
	Nombre varchar(50) primary key,
    GastoServicio decimal(11,2) not null
);

create table medicamento(
	IdMedicamento varchar(60) primary key,
    NombreComercial varchar(100) not null,
    NombreClinico varchar(100) not null,
    Ubicacion varchar(200) not null,
    CantidadUnidosisPorEnvase int not null,
    PrecioUnidosis decimal(11,2) not null,
    PrecioEnvase decimal(11,2) default (PrecioUnidosis*CantidadUnidosisPorEnvase),
    CompuestoQuimico varchar(200) not null,
    IdProveedor varchar(50) not null
);

create table medico(
	IdMedico varchar(100),
    PrimerNombre varchar(50) not null,
    SegundoNombre varchar(50) ,
    PrimerApellido varchar(50) not null, 
    SegundoApellido varchar(50) ,
    Calle varchar(100) not null,
    Numero varchar(100) not null,
    Adjunto varchar(300) not null,
    Telefono varchar(30) not null,
    servicio varchar(50) not null,
    
    primary key(IdMedico),
    foreign key(servicio) references servicio(Nombre)
);

create table ingreso(
	Identificacion varchar(255) not null,
    Consecutivo int not null,
    FechaIngreso date not null,
    FechaAlta date,
    Diagnostico varchar(400),
    Servicio varchar(50) not null,
    
    primary key(Identificacion,Consecutivo),
    foreign key(Identificacion) references paciente(IdHistoriaClinica),
    foreign key(servicio) references servicio(Nombre)
    
);

create table consumo_servicio(
	NombreServicio varchar(50) not null,
    IdMedicamento varchar(60) not null,
    FechaConsumo date not null,
    NumeroUnidosisConsumidas int not null,
    
	primary key(NombreServicio, IdMedicamento),
    foreign key(NombreServicio) references servicio(Nombre),
    foreign key(IdMedicamento) references medicamento(IdMedicamento)

);

create table consulta(
	IdentificacionIngreso varchar(300) not null,
    ConsecutivoIngreso int not null,
    IdMedico varchar(100) not null,
    Fecha date not null,
    Hora time not null,
    Informe varchar(300) not null,
    
    primary key(IdentificacionIngreso,ConsecutivoIngreso,IdMedico),
    foreign key(IdentificacionIngreso,ConsecutivoIngreso) references ingreso(Identificacion,Consecutivo),
    foreign key(IdMedico) references medico(IdMedico)
);

create table formula(
	IdentificacionIngreso varchar(300) not null,
    ConsecutivoIngreso int not null,
    IdMedico varchar(100) not null,
    IdMedicamento varchar(60) not null,
    FechaFormula date not null,
    UnidosisUsadas int not null,
    
    primary key(IdentificacionIngreso,ConsecutivoIngreso,IdMedico,IdMedicamento),
    foreign key(IdentificacionIngreso,ConsecutivoIngreso) references ingreso(Identificacion,Consecutivo),
    foreign key(IdMedico) references medico(IdMedico),
    foreign key(IdMedicamento) references medicamento(IdMedicamento)
    
);




