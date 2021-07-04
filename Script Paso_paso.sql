CREATE DATABASE prueba;

USE prueba;

DROP DATABASE prueba;


CREATE DATABASE prueba CHARACTER SET uft8_COLLATE uft8_spanish_ci;


CREATE TABLE prooductos(
idProducto INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(50) NOT NULL,
precio DECIMAL(10,2) NOT NULL,
fecha_alta DATE DEFAULT '0000-00-00'
);


SHOW TABLES;

SHOW CREATE TABLE productos;


SHOW TABLES;

RENAME TABLE productos TO producto

ALTER TABLE producto ADD existencias INT NOT NULL;


SHOW COLUMNS FROM producto;


ALTER TABLE producto DROP COLUMN existencias;

SHOW COLUMNS FROM producto;



ALTER TABLE producto CHANGE precio precios DECIMAL (18,2);
SHOW COLUMNS FROM producto;

DROP TABLE producto;

SWOW TABLES;






