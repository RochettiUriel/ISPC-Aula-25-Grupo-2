
create database peluqueria_canina;
use peluqueria_canina;
create table Dueño (
DNI int not null unique,
Nombre varchar (45) not null,
Apellido varchar (45) not null,
Telefono varchar (45),
Direccion varchar (45), 
primary key (DNI));

create table Perro (
IDPerro int not null,
nombre varchar (45),
fecha_nac date,
sexo varchar (45),
DNI_dueño int,
primary key (IDPerro),
constraint fk_DNI_dueño foreign key (DNI_dueño) references Dueño(DNI));

create table Historial (
ID_Historial int not null,
fecha date,
perro int,
descripcion varchar (45),
monto float,
primary key (ID_Historial),
constraint fk_perro foreign key (perro) references Perro (IDPerro)
)
select * from  Dueño;
update dueño set direccion = "Libertad 123" where direccion = "Calle Falsa 123";

