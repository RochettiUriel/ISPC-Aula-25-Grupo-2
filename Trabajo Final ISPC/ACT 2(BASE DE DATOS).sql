create database pelu_Canina;
use pelu_Canina;

create table Dueno(
DNI int, 
Nombre varchar(40),
Apellido varchar(40),
Telefono int,
direccion varchar(60),
primary key(DNI)
);

#Consigna 2

create table perro(
ID_perro int,
Nombre varchar(20),
Fecha_nac varchar(20),
Sexo varchar(10),
DNI_dueno int,
primary key (ID_perro),
constraint fk_DNI_dueno foreign key (DNI_dueno) references Dueno (DNI)
);

create table historial(
ID_historial int,
Fecha int,
Perro varchar(20),
Descripcion varchar(200),
Monto int,
primary key(ID_historial),
constraint fk_perro foreign key (Perro) references perro (ID_perro)
);

#Consigna 2
insert Dueno values (45346723, "Ramiro", "Lopez", 3516747644, "Garramendi 1377");
insert Perro values ( 1, "Nala", "12 Febrero", "Hembra", 45346723);

#Consigna 12

select sexo, Fecha_nac from perro where sexo = "Macho" and Fecha_nac >= 2020 and Fecha_nac <= 2022;