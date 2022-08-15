create database trabajofinalmoduloprogramador;



SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Dueno`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Dueno` (
  `DNI` VARCHAR(16) NOT NULL,
  `Nombre` VARCHAR(45) NOT NULL,
  `Apellido` VARCHAR(45) NOT NULL,
  `Telefono` VARCHAR(45) NOT NULL,
  `Direccion` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`DNI`),
  UNIQUE INDEX `Telefono_UNIQUE` (`Telefono` ASC) VISIBLE);


-- -----------------------------------------------------
-- Table `mydb`.`Perro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Perro` (
  `ID_Perro` INT NOT NULL,
  `Nombre` VARCHAR(45) NULL,
  `Fecha_Nac` VARCHAR(45) NULL,
  `Sexo` VARCHAR(45) NULL,
  `DNI_dueno` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`ID_Perro`),
  INDEX `DNI_dueno_idx` (`DNI_dueno` ASC) VISIBLE,
  CONSTRAINT `DNI_dueno`
    FOREIGN KEY (`DNI_dueno`)
    REFERENCES `mydb`.`Dueno` (`DNI`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Historial`6
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Historial` (
  `ID_Historial` INT NOT NULL,
  `Fecha` VARCHAR(45) NULL,
  `Perro` INT(45) NOT NULL,
  `Descripcion` VARCHAR(45) NULL,
  PRIMARY KEY (`ID_Historial`),
  INDEX `Perro_idx` (`Perro` ASC) VISIBLE,
  CONSTRAINT `Perro`
    FOREIGN KEY (`Perro`)
    REFERENCES `mydb`.`Perro` (`ID_Perro`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
    ENGINE = InnoDB;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

INSERT INTO Perro (Nombre,DNI_Dueno) VALUES ('Chequis', '38001728');  

ALTER TABLE Perro MODIFY COLUMN ID_Perro int auto_increment;  

select * from Perro;
update Perro set Fecha_Nac= '12/12/2022' where `ID_Perro` = '1';


 


