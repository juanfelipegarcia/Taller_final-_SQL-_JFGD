use juanGarcia_02_12_2021;

insert into paciente 
  values("HC1022158338","","Emilia","","Garcia","Machado","65","23a", "Diagonal 78", "3005616227","1990-03-15" ),
  ("HC1022158339","","Jacobo","","Garcia","Machado","74C","54-55", "Barrio el porvenir", "6045616227","1988-09-20" ),
  ("HC1038974558","SS-5548-4545-5411","Nelson","Javier" ,"Perez","Mejia","54","47-55", "Rionegro", "3105487965","1995-07-21" ),
  ("HC1098744568","SS-5487-6584-5698","Alejandra","Milena","Machado","Sepulveda","47","87-5", "Cabañas", "3017598795","1984-07-11" ),
  ("HC1054887966","","Adres","Mario","Lopez","Alvarez","54","56-47", "El poblado", "3105874695","1999-08-01" ),
  ("HC1089744524","SS-5487-9857-5556","Sofia","Ester","Castro","Munera","45","45-78 · sur", "Bello", "3115462397","1981-12-24" ),
  ("HC1099785464","","Carlos","Jose","Usuga","","36","45-23a", "Envigado", "6045789954","1870-11-16" ),
  ("HC1038974554","SS-8795-6321-7854","Emilia","","Orozco","Ortiz","56","35-8", "Sabaneta ", "3118759648","1999-11-05" ),
  ("HC1045784775","","Luz","Maria" ,"lopez","Jimenez","24","56-39", "Transversal inferior ", "3129876542","1995-09-21" ),
  ("HC1067985421","SS-8795-1124-5477","Maria","Antonia" ,"Otalvaro","Ruiz","87C","54-65", "Edificio elif", "6045879654","2001-04-19" );

  insert into servicio
    values ("Cardiologia", 90000),
    ("Pediatria", 100000), 
    ("Radiografia", 120000),
    ("Medicina general", 45000),
    ("Dermatologia", 98000),
    ("Odontología", 55000),
    ("Oftalmologia", 390000);
    
insert into medicamento
  values("MC-CARD-54875125", "Lidocaína", "Lidocaína IV Braun", "Dispensador 15 - 2º piso", 24, 48000, default ,"C14H22N2O", "IdP457896" ),
  ("MC-CARD-54874787","Syntocinon", "Oxitocina",  "Dispensador 15 - 2º piso", 6, 89000, default ,"C43H66N12O12S2", "IdP654875" ),
  ("MC-PEDI-54785646", "Cristalmina", "Clorhexidina",  "Dispensador 10 - 1º piso", 12, 39000, default ,"C22H30Cl2N10", "IdP548745" ),
  ("MC-PEDI-54786932", "cloro-dimetilfenol","Cloroxilenol",  "Dispensador 10 - 1º piso", 12, 57800, default ,"C8H9OCl", "IdP457800" ),
  ("MC-RADI-54875654", "LASTACAFT", "Alcaftadine", "Dispensador 13 - 4º piso", 24, 65000, default ,"C19H21N3O", "IdP457758" ),
  ("MC-RADI-59874456", "Aspirina", "ácido acetilsalicílico", "Dispensador 13 - 4º piso", 12, 52000, default ,"C₉H₈O₄", "IdP457801" ),
  ("MC-MGEN-55477555", "Amoxigobens","Amoxicilina",  "Dispensador 10 - 3º piso", 12, 15000, default ,"C16H19N3O5S", "IdP457000" ),
  ("MC-MGEN-57785544", "PONSTEL", "Ácido mefenámico", "Dispensador 10 - 3º piso", 24, 12500, default ,"C15H15NO2", "IdP457986" ),
  ("MC-DERM-78554445", "Hidroaltesona", "Hidrocortisona ",  "Dispensador 11 - 2º piso", 24, 98000, default ,"C21H30O5", "IdP457698" ),
  ("MC-DERM-57788554", "Mometasona", "Elocom", "Dispensador 11 - 2º piso", 12, 37500, default ,"C22H28Cl2O4", "IdP456789" ),
  ("MC-ODON-88554447", "ANBESOL", "Benzocaine", "Dispensador 18 - 1º piso", 24, 49000, default ,"C9H11NO2", "IdP457845" ),
  ("MC-ODON-55477785", "Daivonex", "Calcipotriol", "Dispensador 18 - 1º piso", 24, 59700, default ,"C27H40O3", "IdP455788" );
  
insert into medico 
  values("1254785412","Manuela","Maria","Gomez","Plata","33","65-89", "Urbanizacion cielo", "3105697458","Cardiologia" ),
  ("1254785468","ALberto","Zaens","Gil","Mora","45","77-8", "Envigado", "3115487965","Cardiologia" ),
  ("1254785465","Mario","Andres","Torres","Mejia","54","55-63-8", "Barrio el tesoro", "3105478965","Pediatria" ),
  ("2364478545","Andres","MAria","Martin","Morales","45","47l-6", "Barrio Mesa", "3215478965","Pediatria" ),
  ("1365478965","Penelope","Ivon","Cruz","Lopez","41","#56-9", "Urbanizacion Paisajes", "3115477889","Radiografia" ),
  ("1985445587","Manuel","Alonso","Giron","Valdez","15","4-87", "Urb Cantos del viento", "3012365478","Radiografia" ),
  ("1632569845","Milena","","Lima","Tobon","45","77-8", "Bello", "3025478963","Medicina general" ),
  ("1665487445","Carolina","Andrea","Jimenez","Torres","12","85-81", "Sabaneta", "3108747895","Medicina general" ),
  ("1487455446","Luisa","MAria","Cifuentes","Marin","47","55-l", "Diagonal 65", "3135400478","Dermatologia" ),
  ("1236588778","Jenifer","Tatiana","Cadavid","Velez","45","k12-8", "Circumbalar 65", "3165800588","Dermatologia" ),
  ("5566989745","Mauricio","","Cuadrado","Sanches","25","l45-8", "Itagui", "3158570005","Odontologia" ),
  ("2336547885","Pedro","","Mosquera","Ospina","78","33-45", "Copacabana", "3003698521","Odontologia" );
  
insert into ingreso
  values("HC1022158338", 0000000001, "2021-01-02", "2021-01-09", "Arteria  cerca al corazon taponada", "Cardiologia"),  
  ("HC1022158339", 0000000002, "2021-02-03", "2021-02-06", "Hospitalizacion para  control de la presion Arterial", "Cardiologia" ),
  ("HC1098744568", 0000000004, "2021-04-05", "2021-04-05", "Cita de Control mensual",  "Oftalmologia"),
  ("HC1038974558", 0000000003, "2021-03-04", "2021-03-04", "Cita de Control mensual",  "Oftalmologia"),
  ("HC1054887966", 0000000005, "2021-05-06", "2021-05-06", "Cita de Control mensual",  "Radiografia"),
  ("HC1089744524", 0000000006, "2021-06-07", "2021-06-07", "Cita de Control mensual",  "Radiografia"),
  ("HC1099785464", 0000000007, "2021-07-08", "2021-07-18", "Cita de Control mensual",  "Medicina general"),
  ("HC1038974554", 0000000008, "2021-08-09", "2021-08-09", "Cita de Control mensual",  "Medicina general"),
  ("HC1045784775", 0000000009, "2021-09-10", "2021-09-10", "Cita de Control mensual",  "Dermatologia"),
  ("HC1067985421", 0000000010, "2021-10-11", "2021-10-11", "Cita de Control mensual",  "Odontologia");
  
insert into consumo_servicio
  values("Cardiologia", "MC-CARD-54875125", "2021-01-02", 2),
  ("Cardiologia", "MC-CARD-54874787","2021-02-03", 4 ),
  ("Oftalmologia", "MC-PEDI-54785646", "2021-04-05", 3),
  ("Oftalmologia", "MC-PEDI-54786932", "2021-03-04", 1),
  ("Medicina general",  "MC-MGEN-55477555" , "2021-07-08", 4),
  ("Medicina general", "MC-MGEN-57785544", "2021-08-09", 2),
  ("Dermatologia", "MC-DERM-78554445", "2021-09-10", 5),
  ("Dermatologia", "MC-DERM-57788554", "2021-09-10", 1),
  ("Odontologia", "MC-ODON-88554447", "2021-10-11", 1),
  ("Odontologia", "MC-ODON-55477785", "2021-10-11", 1),
  ("Radiografia", "MC-RADI-54875654", "2021-05-06", 4),
  ("Radiografia", "MC-RADI-59874456", "2021-06-07", 2);
  
insert into consulta
values
  ("HC1022158338", 0000000001,"1254785412", "2021-01-02", "08:00:00", "Revision con estetoscopio "),
  ("HC1022158339", 0000000002,"1254785468", "2021-02-03", "08:30:00", "Ganera Hospitalizacion"),
  ("HC1098744568", 0000000004,"1254785465", "2021-04-05", "09:00:00", "En buena codicion, se programa revision en un mes"),
  ("HC1038974558", 0000000003,"2364478545", "2021-03-04", "09:30:00", "En buena codicion, se programa revision en un mes"),
  ("HC1054887966", 0000000005,"1365478965", "2021-05-06", "10:00:00", "En buena codicion, se programa revision en un mes"),
  ("HC1089744524", 0000000006,"1985445587", "2021-06-07", "10:30:00", "En buena codicion, se programa revision en un mes"),
  ("HC1099785464", 0000000007,"1632569845", "2021-07-08", "11:00:00", "En buena codicion, se programa revision en un mes"),
  ("HC1038974554", 0000000008,"1665487445", "2021-08-09", "11:30:00", "En buena codicion, se programa revision en un mes"),
  ("HC1045784775", 0000000009,"1487455446", "2021-09-10", "12:00:00", "En buena codicion, se programa revision en un mes"),
  ("HC1067985421", 0000000010,"5566989745", "2021-10-11", "12:30:00", "En buena codicion, se programa revision en un mes");
  
insert into formula
  values
  ("HC1022158338", 0000000001,"1254785412", "MC-CARD-54875125","2021-01-02", 2),
  ("HC1022158339", 0000000002,"1254785468", "MC-CARD-54874787","2021-02-03", 4),
  ("HC1098744568", 0000000004,"1254785465", "MC-PEDI-54785646","2021-04-05", 3),
  ("HC1038974558", 0000000003,"2364478545", "MC-PEDI-54786932","2021-03-04", 1),
  ("HC1054887966", 0000000005,"1365478965", "MC-RADI-54875654","2021-05-06", 4),
  ("HC1089744524", 0000000006,"1985445587", "MC-RADI-59874456","2021-06-07", 2),
  ("HC1099785464", 0000000007,"1632569845", "MC-MGEN-55477555","2021-07-08", 4),
  ("HC1038974554", 0000000008,"1665487445", "MC-MGEN-57785544","2021-08-09", 2),
  ("HC1045784775", 0000000009,"1487455446", "MC-DERM-78554445","2021-09-10", 5),
  ("HC1045784775", 0000000009,"1487455446", "MC-DERM-57788554","2021-09-10", 1),
  ("HC1067985421", 0000000010,"5566989745", "MC-ODON-88554447","2021-10-11", 1),
  ("HC1067985421", 0000000010,"5566989745", "MC-ODON-55477785","2021-10-11", 1);
    
select * from paciente;
select * from servicio;
select * from medicamento;
select * from medico;
select * from ingreso;
select * from consumo_servicio;
select * from consulta;
select * from formula;





