--SCRIPT DE INSERCION
use HOTEL21;   
	--OK
	INSERT INTO GENERO(IdGenero,NomGenero) VALUES(1,'masculino')
    INSERT INTO GENERO(IdGenero,NomGenero) VALUES(0,'femenino')

	--OK
    INSERT INTO TIPO_SALA(IdTipoSala,nomTipoSala,maxPerTipoSala) VALUES(1101,'Auditorio',210)
	INSERT INTO TIPO_SALA(IdTipoSala,nomTipoSala,maxPerTipoSala) VALUES(1201,'tipo U',190)
	INSERT INTO TIPO_SALA(IdTipoSala,nomTipoSala,maxPerTipoSala) VALUES(1301,'aula',160)
	INSERT INTO TIPO_SALA(IdTipoSala,nomTipoSala,maxPerTipoSala) VALUES(1401,'banquete',170)
	INSERT INTO TIPO_SALA(IdTipoSala,nomTipoSala,maxPerTipoSala) VALUES(1501,'Cóctel',130)
	--OK
    INSERT INTO SALA(IdSala,IdTipoSala,tamSala) VALUES(1111,1101,200)
	INSERT INTO SALA(IdSala,IdTipoSala,tamSala) VALUES(1211,1201,160)
	INSERT INTO SALA(IdSala,IdTipoSala,tamSala) VALUES(1311,1301,120)
	INSERT INTO SALA(IdSala,IdTipoSala,tamSala) VALUES(1411,1401,140)
	INSERT INTO SALA(IdSala,IdTipoSala,tamSala) VALUES(1511,1501,110)
	--OK
       INSERT INTO TURNO_EMPLEADO(IdTurnoEmp,NomTurnoEmp) VALUES(1102,'matutino')
        INSERT INTO TURNO_EMPLEADO(IdTurnoEmp,NomTurnoEmp) VALUES(1202,'despertino')
        INSERT INTO TURNO_EMPLEADO(IdTurnoEmp,NomTurnoEmp) VALUES(1302,'nocturno')
	--OK
       INSERT INTO TIPO_EMPLEADO(IdTipoEmp,nomTipoEmp) VALUES(1103,'ordenanza')
        INSERT INTO TIPO_EMPLEADO(IdTipoEmp,nomTipoEmp) VALUES(1203,'mantenimiento')
        INSERT INTO TIPO_EMPLEADO(IdTipoEmp,nomTipoEmp) VALUES(1303,'recesiónista')
        INSERT INTO TIPO_EMPLEADO(IdTipoEmp,nomTipoEmp) VALUES(1403,'mucama')
        INSERT INTO TIPO_EMPLEADO(IdTipoEmp,nomTipoEmp) VALUES(1503,'Conserje')
		--OK
        INSERT INTO SERVICIO(IdServicio,NomServicio,EstServicio) VALUES(1104,'masajista',0) -- estado de servicio es 1 si activo y 0 no activo
         INSERT INTO SERVICIO(IdServicio,NomServicio,EstServicio) VALUES(1204,'gastronómicos',1)
         INSERT INTO SERVICIO(IdServicio,NomServicio,EstServicio) VALUES(1304,'bartender',1)
         INSERT INTO SERVICIO(IdServicio,NomServicio,EstServicio) VALUES(1404,'spa',1)
         INSERT INTO SERVICIO(IdServicio,NomServicio,EstServicio) VALUES(1504,'dj',1)
		 --OK
       INSERT INTO DOCUMENTOIDENTIDAD(IdDocIdentidad,TipoDoc) VALUES(1105,'DUI')
	INSERT INTO DOCUMENTOIDENTIDAD(IdDocIdentidad,TipoDoc) VALUES(1205,'Pasaporte')
	--OK
       INSERT INTO  PAIS (IdPais,NomPais,ContPais) VALUES(1106,'Panama','America')
	INSERT INTO  PAIS (IdPais,NomPais,ContPais) VALUES(1206,'El Salvador','America')
	INSERT INTO  PAIS (IdPais,NomPais,ContPais) VALUES(1306,'Costa Rica','America')
	INSERT INTO  PAIS (IdPais,NomPais,ContPais) VALUES(1406,'Australia','Australia')
	INSERT INTO  PAIS (IdPais,NomPais,ContPais) VALUES(1506,'España','Europa')
	--OK
	INSERT INTO HOTEL(IdHotel,IdPais,DirHotel,TelHotel,nomHotel,webSiteHotel,emailHotel) VALUES(1221,1206,'Punta Remedi,El Salvador','2277-7777','LA COSTA','WWW.HOTELLACOSTA.COM.','H_LACOSTA@GMAIL.COM')
	INSERT INTO HOTEL(IdHotel,IdPais,DirHotel,TelHotel,nomHotel,webSiteHotel,emailHotel) VALUES(1222,1106,'Río Hato,Panamá','2244-4434','El Panama','WWW.HOTELELPANAMA.COM.','HotelElPanama@GMAIL.COM')
	INSERT INTO HOTEL(IdHotel,IdPais,DirHotel,TelHotel,nomHotel,webSiteHotel,emailHotel) VALUES(1223,1306,'playa Langosta,Costa Rica','2232-5647','Pueblo Dorado Hotel','WWW.PuebloDorado.COM.','HotelPuebloDorado@GMAIL.COM')
    INSERT INTO HOTEL(IdHotel,IdPais,DirHotel,TelHotel,nomHotel,webSiteHotel,emailHotel) VALUES(1224,1406,'km 5 beach the snail,australia','2724-2262','hause of Caracol','WWW.hotelcaracol.COM.','homethecaracol@GMAIL.COM')
	INSERT INTO HOTEL(IdHotel,IdPais,DirHotel,TelHotel,nomHotel,webSiteHotel,emailHotel) VALUES(1225,1506,'calle al pueblo,km 40,España','28252-5151','HOTEL CARNAVAL','WWW.hotelCarnaval.COM.','H_CARNAVAL@GMAIL.COM')

	--OK
    INSERT INTO SALAXHOTEL(IdHotel,IdPais,IdSala,IdSalaXHotel,condSalaXHotel) VALUES(1221,1206,1111,1113,0) --la condicion de sala es asi?? 1 ocupada 0 desocupada
	INSERT INTO SALAXHOTEL(IdHotel,IdPais,IdSala,IdSalaXHotel,condSalaXHotel) VALUES(1222,1106,1211,1213,0)
	INSERT INTO SALAXHOTEL(IdHotel,IdPais,IdSala,IdSalaXHotel,condSalaXHotel) VALUES(1223,1306,1311,1313,0)
	INSERT INTO SALAXHOTEL(IdHotel,IdPais,IdSala,IdSalaXHotel,condSalaXHotel) VALUES(1224,1406,1411,1413,0)
	INSERT INTO SALAXHOTEL(IdHotel,IdPais,IdSala,IdSalaXHotel,condSalaXHotel) VALUES(1225,1506,1511,1513,0)

       

       INSERT INTO TELEFONOXCLIENTE(IdCliente,IdGenero,IdDocIdentidad,IdTelefonoXcliente,NumTel) VALUES(1122,1,1105,1114,'7434-5287')
        INSERT INTO TELEFONOXCLIENTE(IdCliente,IdGenero,IdDocIdentidad,IdTelefonoXcliente,NumTel) VALUES(1222,0,1205,1214,'7477-9287') 
        INSERT INTO TELEFONOXCLIENTE(IdCliente,IdGenero,IdDocIdentidad,IdTelefonoXcliente,NumTel) VALUES(1322,1,1105,1314,'7714-9087')
        INSERT INTO TELEFONOXCLIENTE(IdCliente,IdGenero,IdDocIdentidad,IdTelefonoXcliente,NumTel) VALUES(1422,1,1105,1414,'7447-0007')
        INSERT INTO TELEFONOXCLIENTE(IdCliente,IdGenero,IdDocIdentidad,IdTelefonoXcliente,NumTel) VALUES(1522,1,1105,1514,'7434-5287')

       INSERT INTO CORREOXCLIENTE(IdCliente,IdGenero,IdDocIdentidad,IdCorreoXcliente,CorreoCLiente) VALUES(1122,1,1105,1115,'joseA199@gmail.com')
        INSERT INTO CORREOXCLIENTE(IdCliente,IdGenero,IdDocIdentidad,IdCorreoXcliente,CorreoCLiente) VALUES(1222,0,1205,1215,'maria19gevara@gmail.com')
        INSERT INTO CORREOXCLIENTE(IdCliente,IdGenero,IdDocIdentidad,IdCorreoXcliente,CorreoCLiente) VALUES(1322,1,1105,1315,'gerardo20ra@gmail.com')
        INSERT INTO CORREOXCLIENTE(IdCliente,IdGenero,IdDocIdentidad,IdCorreoXcliente,CorreoCLiente) VALUES(1422,1,1105,1415,'alexander230@gmail.com')
        INSERT INTO CORREOXCLIENTE(IdCliente,IdGenero,IdDocIdentidad,IdCorreoXcliente,CorreoCLiente) VALUES(1522,1,1105,1515,'sergio13fc@gmail.com')

		--OK
		INSERT INTO EMPLEADO(codEmp,IdTipoEmp,NomEmp,ApeEmp,afpEmp,isssEmp,HoraEntradaEmp,HoraSalidaEmp,IdGenero,IdTurnoEmp,IdDocIdentidad) VALUES('0012120',1103,'mario steven','cruz rivera','705434','875314534','7:00 am','3:00 pm',1,1102,1105)
        INSERT INTO EMPLEADO(codEmp,IdTipoEmp,NomEmp,ApeEmp,afpEmp,isssEmp,HoraEntradaEmp,HoraSalidaEmp,IdGenero,IdTurnoEmp,IdDocIdentidad) VALUES('0012121',1203,'josue walter','campos paz','356771','800385678','5:00 am','1:00 pm',1,1102,1105)
        INSERT INTO EMPLEADO(codEmp,IdTipoEmp,NomEmp,ApeEmp,afpEmp,isssEmp,HoraEntradaEmp,HoraSalidaEmp,IdGenero,IdTurnoEmp,IdDocIdentidad) VALUES('0012122',1403,'daniela maria','mendoza sanchez','256791','443332116','11:00 am','9:00 pm',0,1202,1105)
        INSERT INTO EMPLEADO(codEmp,IdTipoEmp,NomEmp,ApeEmp,afpEmp,isssEmp,HoraEntradaEmp,HoraSalidaEmp,IdGenero,IdTurnoEmp,IdDocIdentidad) VALUES('0012123',1203,'luis alonso','sanchez soriano','723877','275322342','12:00 pm','10:00 pm',1,1202,1105)
        INSERT INTO EMPLEADO(codEmp,IdTipoEmp,NomEmp,ApeEmp,afpEmp,isssEmp,HoraEntradaEmp,HoraSalidaEmp,IdGenero,IdTurnoEmp,IdDocIdentidad) VALUES('0012124',1203,'elizabeth hernandez','artiga sanchez','712468','8983141334','11:00 am','9:00 pm',0,1102,1105)

		--OK
		INSERT INTO TELEFONOXEMPLEADO(codEmp,IdTipoEmp,IdGenero,IdTurnoEmp,IdTelefonoXEmpleado,NumTelEmp,IdDocIdentidad) VALUES('0012120',1103,1,1102,1116,1117,1105)
        INSERT INTO TELEFONOXEMPLEADO(codEmp,IdTipoEmp,IdGenero,IdTurnoEmp,IdTelefonoXEmpleado,NumTelEmp,IdDocIdentidad) VALUES('0012121',1203,1,1102,1216,1217,1105)
        INSERT INTO TELEFONOXEMPLEADO(codEmp,IdTipoEmp,IdGenero,IdTurnoEmp,IdTelefonoXEmpleado,NumTelEmp,IdDocIdentidad) VALUES('0012122',1403,0,1202,1316,1317,1105)
        INSERT INTO TELEFONOXEMPLEADO(codEmp,IdTipoEmp,IdGenero,IdTurnoEmp,IdTelefonoXEmpleado,NumTelEmp,IdDocIdentidad) VALUES('0012123',1203,1,1202,1416,1417,1105)
        INSERT INTO TELEFONOXEMPLEADO(codEmp,IdTipoEmp,IdGenero,IdTurnoEmp,IdTelefonoXEmpleado,NumTelEmp,IdDocIdentidad) VALUES('0012124',1203,0,1102,1516,1517,1105)


		--DAAAAA ERRORRRRR!!!!
        INSERT INTO RESERVACION(IdHotel,IdSala,IdSalaXHotel,codEmp,IdTipoEmp,idCliente,IdGenero,IdTurnoEmp,idRes,HoraIniRes,HoraFinRes,FechaIniRes,FechaFinRes,CannonRes,numSillasRes,numMesasRes,IdServicio,IdDocIdentidad) VALUES(1112,1111,1113,'0012120',1103,1122,1,1102,1123,07:10:20am,06:19:00pm,23/09/2008,27/09/2008,12,234,56,1204,1105) 
        INSERT INTO RESERVACION(IdHotel,IdSala,IdSalaXHotel,codEmp,IdTipoEmp,idCliente,IdGenero,IdTurnoEmp,idRes,HoraIniRes,HoraFinRes,FechaIniRes,FechaFinRes,CannonRes,numSillasRes,numMesasRes,IdServicio,IdDocIdentidad) VALUES(1212,1211,1213,'0012121',1103,1222,0,1102,1223,08:31:20am,06:19:00pm,1/03/2012,4/03/2012,11,139,24,1204,1105)
        INSERT INTO RESERVACION(IdHotel,IdSala,IdSalaXHotel,codEmp,IdTipoEmp,idCliente,IdGenero,IdTurnoEmp,idRes,HoraIniRes,HoraFinRes,FechaIniRes,FechaFinRes,CannonRes,numSillasRes,numMesasRes,IdServicio,IdDocIdentidad) VALUES(1312,1311,1213,'0012122',1103,1322,1,1202,1323,12:23:23pm,06:19:00pm,12/10/2010,13/10/2010,14,310,63,1204,1105)
        INSERT INTO RESERVACION(IdHotel,IdSala,IdSalaXHotel,codEmp,IdTipoEmp,idCliente,IdGenero,IdTurnoEmp,idRes,HoraIniRes,HoraFinRes,FechaIniRes,FechaFinRes,CannonRes,numSillasRes,numMesasRes,IdServicio,IdDocIdentidad) VALUES(1412,1411,1413,'0012123',1103,1422,1,1102,1423,10:34:03am,07:31:30am,10/11/2013,12/11/2013,19,234,42,1304,1105)
        INSERT INTO RESERVACION(IdHotel,IdSala,IdSalaXHotel,codEmp,IdTipoEmp,idCliente,IdGenero,IdTurnoEmp,idRes,HoraIniRes,HoraFinRes,FechaIniRes,FechaFinRes,CannonRes,numSillasRes,numMesasRes,IdServicio,IdDocIdentidad) VALUES(1512,1511,1513,'0012124',1103,1522,1,1202,1523,03:30:24pm,06:52:02am,4/12/2014,6/12/2014,19,154,26,1304,1105) 