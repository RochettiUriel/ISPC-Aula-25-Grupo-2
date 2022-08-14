/*
Valoración Final del Módulo Programador - Bases de Datos
*/

-- BASE DE DATOS PARA PELUQUERIA CANINA
DROP DATABASE IF EXISTS pelucanina;
CREATE DATABASE IF NOT EXISTS pelucanina;
USE pelucanina;

-- TABLA DUENO
CREATE TABLE IF NOT EXISTS Dueno(
	DNI INT NOT NULL,
	Nombre VARCHAR(40),
	Apellido VARCHAR(40),
	Telefono INT UNSIGNED,
	Direccion VARCHAR(100),
	PRIMARY KEY(DNI)
);

-- TABLA PERRO
CREATE TABLE IF NOT EXISTS Perro(
	ID_Perro INT AUTO_INCREMENT NOT NULL,
	Nombre VARCHAR(40),
	Fecha_nac DATE,
	Sexo VARCHAR(10),
	DNI_Dueno INT,
	PRIMARY KEY(ID_Perro),
	CONSTRAINT fk_dnidueno FOREIGN KEY(DNI_Dueno) REFERENCES Dueno (DNI)
);

-- TABLA HISTORIAL
CREATE TABLE IF NOT EXISTS Historial(
	ID_Historial INT AUTO_INCREMENT NOT NULL,
	Fecha DATE,
	Perro INT,
	Descripcion VARCHAR(200),
	Monto INT,
	PRIMARY KEY(ID_Historial),
	CONSTRAINT fk_idperro FOREIGN KEY(Perro) REFERENCES Perro (ID_Perro)
);


-- REGISTROS
INSERT INTO Dueno (DNI, Nombre, Apellido, Telefono, Direccion) VALUES
	(35287982, 'Juan', 'Cullo', 35188982, '9 de julio 294'),
	(40982576, 'Yolanda', 'Funes', 351635267, 'Puerredon 1482'),
	(11675432, 'Andres', 'Rodriguez', 351558976, 'Sarmiento 463'),
	(40682001, 'Virginia', 'Ledesma', 351097845, 'Buenos aires 1832'),
	(37239746, 'Jorgekina', 'Peralta', 351882233, 'San Martin 428');
    
INSERT INTO Perro (Nombre, Fecha_nac, Sexo, DNI_Dueno) VALUES
	('Choco', '2014-08-22', 'macho', 37239746),
	('Cokcy', '2019-02-05', 'macho', 35287982),
	('Clan', '2017-06-25', 'hembra', 40682001),
	('Mino', '2011-11-15', 'macho', 40982576),
	('Cony', '2010-09-25', 'hembra', 11675432),
	('Rufo', '2012-03-17', 'macho', 35287982);
    
INSERT INTO Historial (Fecha, Perro, Descripcion, Monto) VALUES
	('2019-12-09', 1, 'shampoo y corte', 2350),
	('2020-11-23', 2, 'spa completo', 5960),
	('2022-5-11', 1, 'mani-pedi', 1000),
	('2020-06-23', 2, 'shampoo y corte', 2100),
	('2019-11-15', 3, 'shampoo, corte y mani-pedi', 4120),
	('2019-12-12', 4, 'spa completo', 7510),
	('2021-10-17', 5, 'shampoo y corte', 3570),
	('2021-02-20', 5, 'spa completo', 7530),
	('2022-05-18', 4, 'shampoo y corte', 4100);
	
    
    
-- CONSULTAS A LA BASE DE DATOS
/*
6. Obtener todos los perros que asistieron a la peluquería en 2022
*/
SELECT DISTINCT Nombre 
	FROM Perro INNER JOIN Historial ON Perro.ID_Perro = Historial.Perro
	WHERE Historial.Fecha >= '2022-01-01';