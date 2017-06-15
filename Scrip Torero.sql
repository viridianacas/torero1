create database Torero;
use Torero;
create table Usuario(
NombreUsuario varchar(20) not null,
Contraseña varchar(20) not null,
NombrePersona varchar(50) not null
PRIMARY KEY(NombreUsuario));
create table MarcaArticulo(
idMarcaArticulo int not null,
NombreArticulo varchar(20)
PRIMARY KEY(idMarcaArticulo));
create table TipoMaquina(
idTipoMaquina int not null,
NombreTipo varchar(25)
PRIMARY KEY(idTipoMaquina));
create table MarcaMaquina(
idMarcaMaquina int not null,
NombreMarcaMaquina varchar(25)
PRIMARY KEY(idMarcaMaquina));
create table Material(
idMaterial int not null,
Descripcion varchar(100),
Cantidad int not null,
Tipo varchar(20),
NombreMaterial varchar(20)
PRIMARY KEY(idMaterial));
create table Articulos(
idArticulo int not null,
idMaterial int not null,
idMarcaArticulo int not null,
Funcion varchar(25),
TipoMotor varchar(25)
PRIMARY KEY(idArticulo, idMaterial, idMarcaArticulo),
FOREIGN KEY(idMaterial) REFERENCES Material(idMaterial),
FOREIGN KEY(idMarcaArticulo) REFERENCES MarcaArticulo(idMarcaArticulo));
create table ModeloMaquina(
idModeloMaquina int not null,
idMarcaMaquina int not null,
idTipoMaquina int not null,
NombreModelo varchar(20)
PRIMARY KEY(idModeloMaquina),
FOREIGN KEY(idMarcaMaquina) REFERENCES MarcaMaquina(idMarcaMaquina),
FOREIGN KEY(idTipoMaquina) REFERENCES TipoMaquina(idTipoMaquina));
create table Servicios(
idServicio int not null,
idTipoMaquina int not null,
NombreServicio varchar(50),
DescripcionServicio varchar(200)
PRIMARY KEY(idServicio, idTipoMaquina),
FOREIGN KEY(idTipoMaquina) REFERENCES TipoMaquina(idTipoMaquina));
create table Refaccion(
idRefaccion int not null,
idMaterial int not null,
idTipoMaquina int not null,	
idMarcaMaquina int not null,
idModeloMaquina int not null,
Estado varchar(20)
PRIMARY KEY(idRefaccion, idMaterial, idTipoMaquina, idMarcaMaquina, idModeloMaquina),
FOREIGN KEY (idMaterial) REFERENCES Material(idMaterial),
FOREIGN KEY(idTipoMaquina) REFERENCES TipoMaquina(idTipoMaquina),
FOREIGN KEY(idModeloMaquina) REFERENCES ModeloMaquina(idModeloMaquina),
FOREIGN KEY(idMarcaMaquina) REFERENCES MarcaMaquina(idMarcaMaquina));




	


