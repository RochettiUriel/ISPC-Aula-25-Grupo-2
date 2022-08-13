create database if not exists pelu_canina;

use pelu_canina;

create table if not exists Dueno(
DNI int not null unique,
Nombre varchar (30),
Apellido varchar (30),
Telefono int,
Dirección varchar (50),
primary key(DNI)
);

#Consigna 1
create table if not exists Perro(
ID_Perro int not null unique,
Nombre varchar (30),
Fecha_nac varchar (15),
Sexo varchar (10),
DNI_dueno int not null unique,
primary key (ID_Perro),
constraint fk_DNI_dueno
	foreign key (DNI_dueno)
    references Dueno (DNI)
    on delete no action
    on update cascade
);

create table if not exists Historial(
ID_Historial int not null unique,
Fecha varchar (15),
Perro int not null unique,
Descripcion varchar (256),
Monto float not null,
primary key (ID_Historial),
constraint fk_Perro
	foreign key (Perro)
    references Perro (ID_Perro)
    on delete no action
    on update cascade
);

#Consigna 2
insert Dueno values (28957346, "Benjamin", "Suarez", 150123456, "Avenida General Paz 123");
insert Perro values (13, "Puppy", "13/12/2012", "Macho", 28957346);

#Consigna 8
insert Dueno values (11222333, "Carolina", "Ceballos", 156543210, "Avenida Juan B. Justo 321");
insert Perro values (10, "Dio", "12/08/2018", "Macho", 11222333);
insert Historial values (457, "13/08/2022", 10, "Recorte de pelaje general y limpieza", 1535.5);
