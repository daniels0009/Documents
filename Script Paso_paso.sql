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


CREATE TABLE categoria(
id INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(50) NOT NULL
);

SHOW TABLES;


ALTER TABLE productos ADD idCategoria INT NOT NULL;

SHOW COLUMNS FROM  productos;

ALTER TABLE productos ADD CONSTRAINT fk_Carpro FOREIGN KEY (idCategoria) REFERENCES categoria (id) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE productos DROP FOREIGN KEY  fk_Carpro;

ALTER TABLE productos DROP COLUMN idCategoria;

INSERT INTO categoria VALUES (NULL  'Bebidas');

SELECT *FROM categoria;

INSERT INTO categorias (nombre) VALUES ('aceites');

INSERT INTO categoria (nombre) VALUES ('Detergente'),('dulce'),('frituras');

INSERT INTO categoria SET nombre='Categoria';

SHOW COLUMNS FROM productos;

INSERT INTO productos (nombre, precio ,idCategoria) VALUES ('Refresco', 8.50 , 1);

INSERT INTO productos(nombre  precio , fecha_alta  idCategoria)

VALUES('Paleta', 5 ,'CURDATE',5)

UPDATE categoria SET nombre='Modificado WHRERE id='1';


SELECT * FROM categoria;


UPDATE productos SET nombre='Refresco 1' , precio='12.60' WHERE idProducto=1;


SELECT * FROM productos;


ALTER TABLE productos ADD COLUMN existencia INT NOT NULL;

UPDATE productos SET existencia = existencia + 5 WHERE idProducto=1;

UPDATE productos SET precio =REPLACE(precio, 5, 6);

SELECT * FROM productos;

UPDATE productos SET precio =REPLACE(nombre, "leta", "letita");

SELECT * FROM productos;


DELETE FROM productos WHERE idProducto=4;

SELECT *FROM productos;


INSERT INTO productos (nombre, precio , fecha_alta , idCategoria; existencia)
VALUES ('Refresco',10, '2016-01-01', 2 ,10);

SET FOREIGN_KEY CHECKS=0;
TRUNCATE TABLE productos;
SET FOREIGN_KEY CHECKS=1;



SELECT *FROM productos;


SELECT nombre AS Nombre, precio AS Precio ,existencia , idCategoria FROM productos WHERE eixtencia>10;

SELECT COUNT(idProducto) AS Cantidad ,idCategoria FROM productos GROUP BY idCategoria;

SELECT MIN(existencia) AS existencia_minima , MAX(existencia) AS existencia_maxima FROM productos;

SELECT *FROM productos LIMIT 5;

SELECT *FROM productos LIMIT 3 ,10;


SELECT *FROM productos ORDER BY nombre ASC;

SELECT *FROM productos ORDER BY nombre desc;

SELECT *FROM productos ORDER BY nombre ASC , existencia ASC;


