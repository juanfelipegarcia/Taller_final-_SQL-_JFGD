use juanGarcia_02_12_2021;

#CRUD TABLA PACIENTE
insert into paciente values
 ("HC1022100000","","Matilde","","Marin","Nicholls","54","33a", "Bloque 15", "3005478569","2002-07-30" );
alter table paciente add Sexo varchar(15) default '' after SegundoApellido;
update paciente set Sexo = "Mujer" where IdHistoriaClinica = "HC1022100000";
select * from paciente where Sexo = "Mujer";
alter table paciente drop Sexo;
delete from paciente where IdHistoriaClinica = "HC1022100000";


#CRUD TABLA SERVICIO
alter table servicio add ConsultoriosDisponibles int default 0;
insert into servicio
    values ("Dialisis", 120000, 5);
update servicio set ConsultoriosDisponibles = 10 where Nombre = "Medicina general";
alter table servicio drop ConsultoriosDisponibles;
delete from servicio where Nombre = "Dialisis";



select * from paciente;
select * from servicio;
select * from medicamento;



