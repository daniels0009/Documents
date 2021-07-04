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


SELECT *FROM productos WHERE idCategoria=1 AND precio 10;

SELECT *FROM productos WHERE idCategoria=1 OR precio 10;

SELECT *FROM productos WHERE idCategoria<>1;
SELECT *FROM productos WHERE idCategoria<=1;
SELECT *FROM productos WHERE idCategoria=>3;

SELECT *FROM productos WHERE precio  NULL;
SELECT *FROM productos WHERE precio IS NOT NULL;

SELECT *FROM productos WHERE precio BETWEEN 5 AND 10;
SELECT *FROM productos WHERE precio NOT IN(5,6,7,8,9,10);

SELECT *FROM productos WHERE DATE(fecha_alta) BETWEEN  '2015-01-01' AND '2016-07-24'

SELECT *FROM prodcutos WHERE precio =5+5;

SELECT *FROM prodcutos WHERE nombre LIKE 'Limonada';

SELECT *FROM prodcutos WHERE nombre LIKE '%Limon%';

SELECT *FROM prodcutos WHERE nombre NOT LIKE 'Limonada' ;

SELECT *FROM productos WHERE idCategoria=2 NAD precio>10 AND existencia BETWEEN 5 AND 20 fecha_alta IS NOT NULL

SELECT *FROM productos WHERE idCategoria IN(SELECT id FROM categoria WHERE id>2)

SELECT *FROM productos, categoria WHERE idCategoria=id;

SELECT p.nombre,p.precio,p.existencia,c.nombre FROM productos AS P INNER JOIN categoria AS c ON p.idCategoria=c.id WHERE p.idCategoria=2;

SELECT p.nombre,p.precio,p.existencia,t.nombre FROM productos AS P LEFT JOIN temp AS t ON p.idCategoria=t.id;


SELECT p.nombre,p.precio,p.existencia,t.nombre FROM productos AS P RIGHT JOIN temp AS t ON p.idCategoria=t.id;


SELECT p.nombre AS producto , c.nombre AS categoria FROM productos AS p INNER JOIN categoria AS c ON p.idCategoria=c.id INNER JOIN detalle_producto_proveedor AS det ON p.idProdcuto=det.id INNER JOIN proveedore AS pv ON det.id=pv.id;

SELECT * FROM categoria UNION SELECT idProducto,nombre FROM productos;

