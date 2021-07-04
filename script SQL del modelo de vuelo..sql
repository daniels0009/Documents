/* ---------------------------------------------------- */
/*  Generated by Enterprise Architect Version 13.5 		*/
/*  Created On : 02-jul.-2021 1:40:03 a. m. 				*/
/*  DBMS       : MySql 						*/
/* ---------------------------------------------------- */

SET FOREIGN_KEY_CHECKS=0 
;

/* Drop Tables */

DROP TABLE IF EXISTS `Aerolineas` CASCADE
;

DROP TABLE IF EXISTS `Aerolineas` CASCADE
;

DROP TABLE IF EXISTS `Cliente` CASCADE
;

DROP TABLE IF EXISTS `Destino` CASCADE
;

DROP TABLE IF EXISTS `Origen` CASCADE
;

DROP TABLE IF EXISTS `Pasaje` CASCADE
;

DROP TABLE IF EXISTS `Vitacora` CASCADE
;

DROP TABLE IF EXISTS `Vuelo` CASCADE
;

/* Create Tables */

CREATE TABLE `Aerolineas`
(
	`Id_Aerolinea` INT NOT NULL,
	`Nombre` VARCHAR(50) NOT NULL,
	`Telefono` INT NOT NULL,
	CONSTRAINT `PK_Table1` PRIMARY KEY (`Id_Aerolinea` ASC)
)
COMMENT = 'Informacion de las aerolineas due�as del vuelo'

;

CREATE TABLE `Aerolineas`
(
	`Id_Aerolinea` INT NOT NULL,
	`Nombre` VARCHAR(50) NOT NULL,
	`Telefono` INT NULL,
	`Id_Vuelo` INT NULL,
	CONSTRAINT `PK_Table1` PRIMARY KEY (`Id_Aerolinea` ASC)
)
COMMENT = 'Informacion de la aerolinea  Due�a del Avion'

;

CREATE TABLE `Cliente`
(
	`Id_cliente` INT NOT NULL,
	`Nombre` VARCHAR(50) NOT NULL,
	`Edad` INT NULL,
	`Telefono` INT NULL,
	CONSTRAINT `PK_Table1` PRIMARY KEY (`Id_cliente` ASC)
)
COMMENT = 'Tabla de la informacion personal del cliente del vuelo'

;

CREATE TABLE `Destino`
(
	`Id_Destino` INT NOT NULL,
	`Cuidad` VARCHAR(50) NOT NULL,
	`Cod_Cuidad` VARCHAR(50) NOT NULL,
	`Puerta` VARCHAR(50) NOT NULL,
	CONSTRAINT `PK_Table1` PRIMARY KEY (`Id_Destino` ASC)
)

;

CREATE TABLE `Origen`
(
	`Id_Origen` INT NOT NULL,
	`Cuidad` VARCHAR(50) NOT NULL,
	`Cod_Cuidad` VARCHAR(50) NOT NULL,
	`Puerta` VARCHAR(50) NOT NULL,
	CONSTRAINT `PK_Table1` PRIMARY KEY (`Id_Origen` ASC)
)

;

CREATE TABLE `Pasaje`
(
	`Id_Pasaje` INT NOT NULL,
	`Asiento` VARCHAR(50) NOT NULL,
	`Valor` INT NOT NULL,
	`Id_cliente` INT NULL,
	`Id_Vuelo` INT NULL,
	CONSTRAINT `PK_Table1` PRIMARY KEY (`Id_Pasaje` ASC)
)
COMMENT = 'Tabla con la informacion del Pasaje del cliente'

;

CREATE TABLE `Vitacora`
(
	`Id_Vitacora` INT NOT NULL,
	`Hora` TIME NOT NULL,
	`Fecha` DATE NOT NULL,
	`Id_Vuelo` INT NULL,
	`Id_Origen` INT NULL,
	`Id_Destino` INT NULL
)
COMMENT = 'Informacion de hora y fecha del vuelo'

;

CREATE TABLE `Vuelo`
(
	`Id_Vuelo` INT NOT NULL,
	`Num_Vuelo` VARCHAR(50) NULL,
	`Capacidad` INT NULL,
	`Id_Aerolinea` INT NULL,
	CONSTRAINT `PK_Table1` PRIMARY KEY (`Id_Vuelo` ASC)
)

;

/* Create Primary Keys, Indexes, Uniques, Checks */

ALTER TABLE `Aerolineas` 
 ADD INDEX `IXFK_Aerolineas_Vuelo` (`Id_Vuelo` ASC)
;

ALTER TABLE `Vitacora` 
 ADD INDEX `IXFK_Vitacora_Destino` (`Id_Destino` ASC)
;

ALTER TABLE `Vitacora` 
 ADD INDEX `IXFK_Vitacora_Origen` (`Id_Origen` ASC)
;

ALTER TABLE `Vitacora` 
 ADD INDEX `IXFK_Vitacora_Vuelo` (`Id_Vuelo` ASC)
;

/* Create Foreign Key Constraints */

ALTER TABLE `Pasaje` 
 ADD CONSTRAINT `FK_Pasaje_Cliente`
	FOREIGN KEY (`Id_cliente`) REFERENCES `Cliente` (`Id_cliente`) ON DELETE Restrict ON UPDATE Restrict
;

ALTER TABLE `Pasaje` 
 ADD CONSTRAINT `FK_Pasaje_Vuelo`
	FOREIGN KEY (`Id_Vuelo`) REFERENCES `Vuelo` (`Id_Vuelo`) ON DELETE Restrict ON UPDATE Restrict
;

ALTER TABLE `Vitacora` 
 ADD CONSTRAINT `FK_Vitacora_Destino`
	FOREIGN KEY (`Id_Destino`) REFERENCES `Destino` (`Id_Destino`) ON DELETE Restrict ON UPDATE Restrict
;

ALTER TABLE `Vitacora` 
 ADD CONSTRAINT `FK_Vitacora_Origen`
	FOREIGN KEY (`Id_Origen`) REFERENCES `Origen` (`Id_Origen`) ON DELETE Restrict ON UPDATE Restrict
;

ALTER TABLE `Vitacora` 
 ADD CONSTRAINT `FK_Vitacora_Vuelo`
	FOREIGN KEY (`Id_Vuelo`) REFERENCES `Vuelo` (`Id_Vuelo`) ON DELETE Restrict ON UPDATE Restrict
;

ALTER TABLE `Vuelo` 
 ADD CONSTRAINT `FK_Vuelo_Aerolineas`
	FOREIGN KEY (`Id_Aerolinea`) REFERENCES `Aerolineas` (`Id_Aerolinea`) ON DELETE Restrict ON UPDATE Restrict
;

SET FOREIGN_KEY_CHECKS=1 
;