

CREATE PROCEDURE sp_cargos
(
@codigo int,
@nombre varchar(50)

)

AS
BEGIN
	insert into cargos(codigo,nombre) values(@codigo,@nombre)
END
GO

exec sp_cargos 1,'adm'

	select * from cargos


use certamen2diego

create PROCEDURE sp_eliminar_cargos
(
@codigo int
)

AS
BEGIN
	delete from cargos where @codigo=cargos.codigo
END
GO


create procedure sp_actualizar_cargos
(
@codigo int,
@nombre varchar(50)
)

AS
BEGIN
	update cargos set cargos.nombre=@nombre
	where @codigo=cargos.codigo
END
GO