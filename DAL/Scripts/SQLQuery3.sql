Create database UsuariosrDb
go

use UsuariosrDb
go

create table Usuarios(
UsuarioId int primary key identity(1,1),
Nombres varchar(80),
NombreUsuario varchar(80),
Contase�a varchar(40),
ConfirmarContrase�a varchar(40),
Cargo varchar(60)
);
