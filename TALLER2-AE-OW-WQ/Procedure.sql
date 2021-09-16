
alter procedure sp_Banda
@Nombre as varchar(100),
@UsuarioRegistro as varchar(15)
as
insert into Banda values ( @Nombre,GETDATE(),GETDATE(), @UsuarioRegistro)

select  1 as 'Id', @Nombre as 'Name', @UsuarioRegistro as 'Username'