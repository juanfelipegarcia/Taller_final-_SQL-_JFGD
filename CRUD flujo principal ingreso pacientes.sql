use juanGarcia_02_12_2021;

#INSERT
insert into paciente values
	("HC1265412548","SS-4588-478-2211","Maria","Patricia","Otalvaro","Echeverry","78C","78-31", "San Antonio de Pereira", "3158964125","1969-12-31" );
insert into servicio values ("Toxicologia", 39000);
insert into medicamento values
	("MC-TOXI-87569842", "Vitamina C", "Acido ascorbico", "Dispensador 07 - 2º piso", 48, 1200, default ,"C6H8O6", "IdP457728" );
insert into medico values
	("1587999658","Elias","Jose","Diaz","Diaz","45","30B 55-4", "Torre Monserrat", "3004587963","Toxicologia" );
insert into ingreso values
	("HC1265412548", 0000000011, "2021-10-15", "2021-10-16", "Intoxicacion por ingerir alimentos", "Toxicologia");  
insert into consumo_servicio values("Toxicologia", "MC-TOXI-87569842", "2021-10-15", 4);
insert into consulta values
	("HC1265412548", 0000000011,"1587999658", "2021-10-15", "07:45:00", "Aplicacion de Vitamina C para contraste de sintomas");
insert into formula values
	("HC1265412548", 0000000011,"1587999658", "MC-TOXI-87569842","2021-10-15", 2);
    
#READ
select * from paciente where IdHistoriaClinica = "HC1265412548";
select * from servicio where Nombre = "Toxicologia";
select * from medicamento where IdMedicamento = "MC-TOXI-87569842";
select * from medico where PrimerNombre = "Elias" and SegundoNombre = "Jose";
select * from ingreso where Identificacion = "HC1265412548";
select * from consumo_servicio where IdMedicamento = "MC-TOXI-87569842" and FechaConsumo = "2021-10-15";
select * from consulta where Fecha = "2021-10-15";
select * from formula where IdMedicamento = "MC-TOXI-87569842" and FechaFormula = "2021-10-15";


#UPDATE
update paciente set SegundoNombre = 'Jose' where IdHistoriaClinica = "HC1265412548";
update servicio set GastoServicio = "27000" where Nombre = "Toxicologia";
update medicamento set CantidadUnidosisPorEnvase = 36 where IdMedicamento = "MC-TOXI-87569842";
update medico set Telefono = "6045414478" where IdMedico = "1587999658";
update ingreso set FechaAlta = "2021-10-15" where Identificacion = "HC1265412548" and Consecutivo =  0000000011;
update consumo_servicio set NumeroUnidosisConsumidas = 3 
	where NombreServicio = "Toxicologia" and IdMedicamento = "MC-TOXI-= 87569842" and FechaConsumo = "2021-10-15";
update consulta set Informe = "Aplicacion de Vitamina C para contraste de sintomas de manera intravenosa"
	where IdentificacionIngreso = "HC1265412548" and ConsecutivoIngreso = 11 and Hora = "07:45:00";
update formula set UnidosisUsadas = 3 where ConsecutivoIngreso = 11 and IdMedico = "1587999658";

#DELETE

delete from formula where ConsecutivoIngreso = 0000000011 and IdentificacionIngreso = "HC1265412548"  and IdMedico = "1587999658";
delete from consulta where IdentificacionIngreso = "HC1265412548" and ConsecutivoIngreso = 11 and IdMedico = "1587999658";
delete from consumo_servicio where NombreServicio = "Toxicologia" and IdMedicamento = "MC-TOXI-87569842" and FechaConsumo = "2021-10-15";
delete from ingreso where Identificacion = "HC1265412548" and Consecutivo = 0000000011;
delete from medico where IdMedico = "1587999658";
delete from medicamento where IdMedicamento = "MC-TOXI-87569842";
delete from servicio where Nombre = "Toxicologia";
delete from paciente where IdHistoriaClinica = "HC1265412548";


select * from paciente;
select * from servicio;
select * from medicamento;
select * from medico;
select * from ingreso;
select * from consumo_servicio;
select * from consulta;
select * from formula;
