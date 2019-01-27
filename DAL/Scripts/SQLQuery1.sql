Create database UsuariosDb
go

use UsuariosDb
go

create table Usuarios(

UsuarioId int primary key identity(1,1),
Nombres varchar(80),
NombreUsuario varchar(80),
Contaseña varchar(40),
ConfirmarContraseña varchar(40),
Cargo varchar(60),
Email Varchar(30),
Telefono varchar(max),
Celular varchar(max)

);
