use juanGarcia_02_12_2021;

drop procedure if exists sp_lista_pacientes;
DELIMITER $$
create procedure sp_lista_pacientes()
begin
	select 
		p.IdHistoriaClinica as "N° HISTORIA CLINICA",
        p.IdSS as "N° SEGURIDAD SOCIAL",
        p.PrimerNombre AS "PRIMER NOMBRE",
        p.SegundoNombre AS "SEGUNDO NOMBRE",
        p.PrimerApellido AS "PRIMER APELLIDO",
        p.SegundoApellido AS "SEGUNDO APELLIDO", 
        p.Calle AS "CALLE",
        p.Numero AS "NUMERO",
        p.Adjunto AS "ADJUNTO",
        p.Telefono AS "TELEFONO",
        p.FechaDeNacimiento AS "FECHA DE NACIMIENTO"
	from
		paciente p;
end$$
DELIMITER ;
call sp_lista_pacientes();

drop procedure if exists sp_crear_paciente;
DELIMITER $$
create procedure sp_crear_paciente(
	in IdHistoriaClinica varchar(255),
    in IdSS varchar(255),
	in PrimerNombre varchar(50),
    in SegundoNombre varchar(50),
    in PrimerApellido varchar(50), 
    in SegundoApellido varchar(50),
    in Calle varchar(100),
    in Numero varchar(100),
    in Adjunto varchar(300), 
    in Telefono varchar(30),
    in FechaDeNacimiento date 
)
begin
	insert into paciente value(
		IdHistoriaClinica,
        IdSS,
        PrimerNombre,
        SegundoNombre,
        PrimerApellido,
        SegundoApellido,
        Calle,
        Numero,
        Adjunto,
        Telefono,
        FechaDeNacimiento
    );
end$$
DELIMITER ;
call sp_crear_paciente("HC1022100000","","Carlos","","Martal","Perafan","45","22c", "apt 106", "3005693214","2000-01-01" );

drop procedure if exists sp_eliminar_Paciente;
DELIMITER $$
create procedure sp_eliminar_Paciente(
	in IdHistoriaClinica varchar(255)
)
begin

	delete from paciente p
	where 
		p.IdHistoriaClinica = IdHistoriaClinica;
end$$
DELIMITER ;
call sp_eliminar_Paciente("HC1022100000");


select * from paciente;
select * from formula;
select * from medicamento;

drop view if exists vista_detalle_formula;
create view vista_detalle_formula as
select 
	p.IdHistoriaClinica as "HISTORIA CLINICA",
    i.Consecutivo AS "CONSECUTIVO",
    CONCAT(p.PrimerNombre, ' ', p.PrimerApellido) As "NOMBRE PACIENTE",
    CONCAT(me.PrimerNombre, ' ', me.PrimerApellido) As "NOMBRE MEDICO",
    s.Nombre AS	"DEPENDENCIA",
    mt.NombreComercial as "NOMBRE DEL MEDICAMENTO",
    f.FechaFormula as "FECHA DE LA FORMULA",
    f.UnidosisUsadas as "N° DE DOSIS",
    f.UnidosisUsadas * mt.PrecioUnidosis as "VALOR DEL MEDICAMENTO"
from
	medicamento mt inner join formula f on mt.IdMedicamento = f.IdMedicamento
    inner join medico me on f.IdMedico = me.IdMedico
    inner join ingreso i on f.IdentificacionIngreso = i.Identificacion and f.ConsecutivoIngreso = i.Consecutivo
    inner join paciente p on i.Identificacion = p.IdHistoriaClinica
	inner join servicio s on s.Nombre = i.Servicio;
    

select * from vista_detalle_formula;

select * from consumo_servicio;

drop view if exists vista_detalle_consumo;
create view vista_detalle_consumo as
select 
	cs.NombreServicio as "DEPENDENCIA",
    mt.NombreComercial as "NOMBRE DEL MEDICAMENTO",
    CONCAT(me.PrimerNombre, ' ', me.PrimerApellido) As "NOMBRE MEDICO",
    cs.FechaConsumo as "FECHA DE CONSUMO",
	cs.NumeroUnidosisConsumidas as "DOSIS CONSUMIDAS",
    cs.NumeroUnidosisConsumidas * mt.PrecioUnidosis "VALOR CONSUMO DETALLE"
from
	medico me inner join formula f on me.IdMedico = f.IdMedico
    inner join medicamento mt on f.IdMedicamento = mt.IdMedicamento
    inner join consumo_servicio cs on mt.IdMedicamento = cs.IdMedicamento;



    
