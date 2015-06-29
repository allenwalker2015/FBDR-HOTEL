use HOTEL;
CREATE TABLE Auditoria(
	idSoyAudi int PRIMARY KEY identity(1,1),
	fechaAudi datetime NOT NULL,
	nomUser varchar(50) NOT NULL,
	Reg varchar(20) NOT NULL,
	tablaAfectada varchar(100) NOT NULL,
	--de cliente
	idReservaCliente int,
	NomCliente varchar(25),
);

go

/* Etapa dos, creamos el primer triggers relacionado con la tabla Plaza */

CREATE TRIGGER [dbo].[Auditoria] ON [dbo].[Cliente] AFTER INSERT, DELETE, UPDATE  AS
begin
	if (select count(IdCliente) from inserted) > 0 begin
		insert into Auditoria(fechaAudi, nomUser, Reg, tablaAfectada, idReservaCliente, NomCliente)
		select getdate(), ORIGINAL_LOGIN(), 'Inserto', '[dbo].[Cliente]', IdCliente, NomCliente
		from inserted
	end

	if (select count(IdCliente) from deleted) > 0 begin
		insert into Auditoria(fechaAudi, nomUser, Reg, tablaAfectada, idReservaCliente, NomCliente)
		select getdate(), ORIGINAL_LOGIN(), 'Inserto', '[dbo].[Cliente]', IdCliente, NomCliente
		from deleted
	end
end

go