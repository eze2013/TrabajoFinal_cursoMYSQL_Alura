CREATE DATABASE empresa;
USE empresa;

CREATE TABLE clientes (
DNI VARCHAR(11) NOT NULL,
NOMBRE VARCHAR(100),
DIRECCION VARCHAR(150),
BARRIO VARCHAR(50),
CIUDAD VARCHAR(50),
ESTADO VARCHAR(50),
CP VARCHAR(10),
FECHA_NACIMIENTO DATE,
EDAD SMALLINT,
SEXO VARCHAR(1),
LIMITE_CREDITO FLOAT,
VOLUMEN_COMPRA FLOAT,
PRIMERA_COMPRA BIT(1),
PRIMARY KEY (DNI)
);

CREATE TABLE vendedores(
MATRICULA VARCHAR(5) NOT NULL,
NOMBRE VARCHAR(100),
BARRIO VARCHAR(50),
COMISION FLOAT,
FECHA_ADMISION DATE,
VACACIONES BIT(1),
PRIMARY KEY (MATRICULA)
);

CREATE TABLE productos(
CODIGO VARCHAR(10) NOT NULL,
DESCRIPCION VARCHAR(100),
SABOR VARCHAR(50),
TAMANO VARCHAR(50),
ENVASE VARCHAR(50),
PRECIO FLOAT,
PRIMARY KEY (CODIGO)
);

CREATE TABLE facturas (
NUMERO VARCHAR(5)NOT NULL,
FECHA DATE,
DNI VARCHAR(11) NOT NULL,
MATRICULA VARCHAR(5) NOT NULL,
IMPUESTO FLOAT,
PRIMARY KEY (NUMERO),
FOREIGN KEY (DNI) REFERENCES clientes(DNI),
FOREIGN KEY (MATRICULA) REFERENCES vendedores(MATRICULA)
);

CREATE TABLE items(
NUMERO VARCHAR(5) NOT NULL,
CODIGO VARCHAR(10) NOT NULL,
CANTIDAD INT,
PRECIO FLOAT,
PRIMARY KEY (NUMERO, CODIGO),
FOREIGN KEY (NUMERO) REFERENCES facturas(NUMERO),
FOREIGN KEY (CODIGO) REFERENCES productos(CODIGO)
);

INSERT INTO clientes (DNI, NOMBRE, DIRECCION, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, 
EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES
('9283760794', 'Edson Calisaya', 'Sta Úrsula Xitla', 'Barrio del Niño Jesús', 'Ciudad de México', 'EM', '22002002', '1995-01-07', 25, 'M', 150000, 250000, 1),
('7771579779', 'Marcelo Perez', 'F.C. de Cuernavaca 13', 'Carola', 'Ciudad de México', 'EM', '88202912', '1992-01-25', 29, 'M', 120000, 200000, 1),
('5576228758', 'Patricia Olivera', 'Pachuca 75', 'Condesa', 'Ciudad de México', 'EM', '88192029', '1995-01-14', 25, 'F', 70000, 160000, 1),
('8502682733', 'Luis Silva', 'Prol. 16 de Septiembre 1156', 'Contadero', 'Ciudad de México', 'EM', '82122020', '1995-01-07', 25, 'M', 110000, 190000, 0),
('1471156710', 'Erica Carvajo', 'Heriberto Frías 1107', 'Del Valle', 'Ciudad de México', 'EM', '80012212', '1990-01-01', 30, 'F', 170000, 245000, 0),
('2600586709', 'Raúl Meneses', 'Estudiantes 89', 'Centro', 'Ciudad de México', 'EM', '22002012', '1999-08-13', 21, 'M', 120000, 210000, 1),
('3623344710', 'Marcos Rosas', 'Av. Universidad', 'Del Valle', 'Ciudad de México', 'EM', '22002012', '1995-01-13', 26, 'M', 110000, 220000, 1),
('50534475787', 'Abel Pintos', 'Carr. México-Toluca 1499', 'Cuajimalpa', 'Ciudad de México', 'EM', '22000212', '1995-01-11', 25, 'M', 170000, 260000, 0),
('5840119709', 'Gabriel Roca', 'Eje Central Lázaro Cárdenas 911', 'Del Valle', 'Ciudad de México', 'EM', '80010221', '1985-01-16', 36, 'M', 140000, 210000, 1),
('8719655770', 'Carlos Santivañez', 'Calz. del Hueso 363', 'Floresta Coyoacán', 'Ciudad de México', 'EM', '81192002', '1983-01-20', 37, 'M', 200000, 240000, 0),
('19290992743', 'Rodrigo Villa', 'Libertadores 65', 'Héroes', 'Ciudad de México', 'EM', '21002020', '1998-05-30', 22, 'M', 120000, 220000, 0),
('5648641702', 'Paolo Mendez', 'Martires de Tacubaya 65', 'Héroes de Padierna', 'Ciudad de México', 'EM', '21002020', '1991-01-30', 29, 'M', 120000, 220000, 0),
('492472718', 'Jorge Castro', 'Federal México-Toluca 5690', 'Locaxco', 'Ciudad de México', 'EM', '22012002', '1994-01-19', 26, 'M', 75000, 95000, 1),
('9275760794', 'Alberto Rodriguez', 'Circunvalación Oblatos 690', 'Oblatos', 'Guadalajara', 'JC', '44700000', '1991-12-28', 26, 'M', 75000, 95000, 1),
('94387575700', 'María Jimenez', 'Av. Libertadores 457', 'Barragán Hernández', 'Guadalajara', 'JC', '44469000', '1995-05-13', 26, 'F', 120000, 300000, 1),
('95939180787', 'Ximena Gómez', 'Jaguares 822', 'Alcalde Barranquitas', 'Guadalajara', 'JC',	'44270000', '1992-01-05', 16, 'F', 90000, 18000, 0);

INSERT INTO productos (CODIGO, DESCRIPCION, TAMANO, SABOR, ENVASE, PRECIO) 
VALUES 
('773912', 'Clean', '1 Litro', 'Naranja', 'Botella PET', 8.01),
('838819', 'Clean', '1,5 Litros', 'Naranja', 'Botella PET', 12.01),
('1037797', 'Clean', '2 Litros', 'Naranja', 'Botella PET', 16.01),
('812829', 'Clean', '350 ml', 'Naranja', 'Lata', 2.81),
('479745', 'Clean', '470 ml', 'Naranja', 'Botella de Vidrio', 3.77),
('695594', 'Festival de Sabores', '1,5 Litros', 'Asaí', 'Botella PET', 28.51),
('243083', 'Festival de Sabores', '1,5 Litros', 'Maracuyá', 'Botella PET', 10.51),
('1022450', 'Festival de Sabores', '2 Litros', 'Asái', 'Botella PET', 38.01),
('231776', 'Festival de Sabores', '700 ml', 'Asaí', 'Botella de Vidrio', 13.31),
('723457', 'Festival de Sabores', '700 ml', 'Maracuyá', 'Botella de Vidrio', 4.91),
('746596', 'Light', '1,5 Litros', 'Sandía', 'Botella PET', 19.51),
('1040107', 'Light', '350 ml', 'Sandía', 'Lata', 4.56),
('1002334', 'Línea Citrus', '1 Litro', 'Lima/Limón', 'Botella PET', 7),
('1088126', 'Línea Citrus', '1 Litro', 'Limón', 'Botella PET', 7),
('1041119', 'Línea Citrus', '700 ml', 'Lima/Limón', 'Botella de Vidrio', 4.9),
('1042712', 'Línea Citrus', '700 ml', 'Limón', 'Botella de Vidrio', 4.9),
('520380', 'Pedazos de Frutas', '1 Litro', 'Manzana', 'Botella PET', 12.01),
('788975', 'Pedazos de Frutas', '1,5 Litros', 'Manzana', 'Botella PET', 18.01),
('229900', 'Pedazos de Frutas', '350 ml', 'Manzana', 'Lata', 4.21),
('1101035', 'Refrescante', '1 Litro', 'Frutilla/Limón', 'Botella PET', 9.01),
('1086543', 'Refrescante', '1 Litro', 'Mango', 'Botella PET', 11.01),
('326779', 'Refrescante', '1,5 Litros', 'Mango', 'Botella PET', 16.51),
('826490', 'Refrescante', '700 ml', 'Frutilla/Limón', 'Botella de Vidrio', 6.31),
('1096818', 'Refrescante', '700 ml', 'Mango', 'Botella de Vidrio', 7.71),
('394479', 'Sabor da Montaña', '700 ml', 'Cereza', 'Botella de Vidrio', 8.41),
('783663', 'Sabor da Montaña', '700 ml', 'Frutilla', 'Botella de Vidrio', 7.71),
('1000889', 'Sabor da Montaña', '700 ml', 'Uva', 'Botella de Vidrio', 6.31),
('544931', 'Verano', '350 ml', 'Limón', 'Lata', 2.46),
('235653', 'Verano', '350 ml', 'Mango', 'Lata', 3.86),
('1051518', 'Verano', '470 ml', 'Limón', 'Botella de Vidrio', 3.3),
('1078680', 'Verano', '470 ml', 'Mango', 'Botella de Vidrio', 5.18),
('1004327', 'Vida del Campo', '1,5 Litros', 'Sandía', 'Botella PET', 19.51),
('1013793', 'Vida del Campo', '2 Litros', 'Cereza/Manzana', 'Botella PET', 24.01),
('290478', 'Vida del Campo', '350 ml', 'Sandía', 'Lata', 4.56),
('1002767', 'Vida del Campo', '700 ml', 'Cereza/Manzana', 'Botella de Vidrio', 8.41);

INSERT VENDEDORES (MATRICULA, NOMBRE, COMISION, FECHA_ADMISION, VACACIONES, BARRIO) 
VALUES 
('00235','Miguel Pavón Silva',0.08,'2014-08-15', 0,'Condesa'),
('00236', 'Claudia Morales',0.08,'2013-09-17', 1,'Del Valle'),
('00237', 'Concepción Martinez',0.11,'2017-03-18', 1,'Contadero'),
('00238', 'Patricia Sánchez',0.11,'2016-08-21', 0,'Oblatos');

					/*TRAEMOS DATOS DE OTRAS BASE DE DATOS*/

INSERT INTO facturas
SELECT NUMERO,FECHA_VENTA AS FECHA, DNI, MATRICULA, IMPUESTO
FROM jugos_ventas.facturas;

INSERT INTO items
SELECT NUMERO, CODIGO_DEL_PRODUCTO AS CODIGO, CANTIDAD, PRECIO
FROM jugos_ventas.items_facturas;

SELECT * FROM facturas F
INNER JOIN items I  -- VEMOS LOS DATOS DE LAS DOS TABLAS JUNTAS!
ON F.NUMERO = I.NUMERO;

-- BUSCANDO UN NUMERO ALEATORIO ENTRE 20 Y 250
-- LA FUNCION SERIA (RAND() * (MAX - MIN + 1)) + MIN
SELECT (RAND() * (250 - 20 + 1)) + 20 AS ALEATORIO;
SELECT FLOOR((RAND() * (250 - 20 + 1)) + 20) AS ALEATORIO;
-- VA A DEVOLVER EL ENTERO ANTERIOR!!!

SET GLOBAL log_bin_trust_function_creators = 1;-- esto me da permiso para poder crear funciones

SELECT f_aleatorio(1,10) AS ALEATORIO;-- PROBAMOS LA FUNCION 
SELECT f_cliente_aleatorio() AS CLIENTE; -- PROBAMOS LA DE CLIENTES ALEATORIOS

DELIMITER //
CREATE FUNCTION `f_producto_aleatorio`() 
RETURNS varchar(10) 
BEGIN
DECLARE vresultado VARCHAR(10);
DECLARE vmax INT;
DECLARE valeatorio INT;
SELECT COUNT(*) INTO vmax FROM productos;
SET valeatorio = f_aleatorio(1,vmax);
SET valeatorio = valeatorio-1;
SELECT CODIGO INTO vresultado FROM productos LIMIT valeatorio,1;
RETURN vresultado;
END // 

DELIMITER //
CREATE FUNCTION `f_vendedor_aleatorio`() 
RETURNS varchar(5) 
BEGIN
DECLARE vresultado VARCHAR(5);
DECLARE vmax INT;
DECLARE valeatorio INT;
SELECT COUNT(*) INTO vmax FROM vendedores;
SET valeatorio = f_aleatorio(1,vmax);
SET valeatorio = valeatorio-1;
SELECT MATRICULA INTO vresultado FROM vendedores LIMIT valeatorio,1;
RETURN vresultado;
END //

SELECT f_cliente_aleatorio() AS CLIENTE,
f_producto_aleatorio() AS PRODUCTO,
f_vendedor_aleatorio() AS VENDEDOR; -- probamos todas las funciones combinadas

CALL sp_venta('20251202',15,100);

			/*CAMBIANDO CLAVES PRIMARIAS EN TABLAS Y VALORES */

DROP TABLE items;
DROP TABLE facturas;

/*LAS CREAMOS DE NUEVO CAMBIANDO SUS PK DE VARCHAR A INT*/
CREATE TABLE facturas (
NUMERO INT NOT NULL,
FECHA DATE,
DNI VARCHAR(11) NOT NULL,
MATRICULA VARCHAR(5) NOT NULL,
IMPUESTO FLOAT,
PRIMARY KEY (NUMERO),
FOREIGN KEY (DNI) REFERENCES clientes(DNI),
FOREIGN KEY (MATRICULA) REFERENCES vendedores(MATRICULA)
);

CREATE TABLE items(
NUMERO INT NOT NULL,
CODIGO VARCHAR(10) NOT NULL,
CANTIDAD INT,
PRECIO FLOAT,
PRIMARY KEY (NUMERO, CODIGO),
FOREIGN KEY (NUMERO) REFERENCES facturas(NUMERO),
FOREIGN KEY (CODIGO) REFERENCES productos(CODIGO)
);
/*LE INSERTAMOS NUEVAMENTE TODOS LOS DATOS*/
INSERT INTO facturas
SELECT NUMERO,FECHA_VENTA AS FECHA, DNI, MATRICULA, IMPUESTO
FROM jugos_ventas.facturas;

INSERT INTO items
SELECT NUMERO, CODIGO_DEL_PRODUCTO AS CODIGO, CANTIDAD, PRECIO
FROM jugos_ventas.items_facturas;

/*AHORA QUE PASAMOS A ENTERO PODEMOS SUMAR VENTAS ALEATORIAS*/
CALL sp_venta('20251202',3,100);
SELECT MAX(NUMERO) FROM facturas;

/*VER LA FACTURACION HASTA EL MOMENTO*/
/*TENIENDO EN CUENTA QUE POR CADA COSA QUE SE FACTURE ESTE NUMERO VA A AUMENTAR*/

SELECT A.FECHA, SUM(B.CANTIDAD*B.PRECIO) AS FACTURACION
FROM facturas A
INNER JOIN items B
ON A.NUMERO = B.NUMERO
WHERE A.FECHA = '20251202'
GROUP BY A.FECHA;

CALL sp_venta('20251202',20,80);

CREATE TABLE facturacion(
FECHA DATE NULL,
VENTA_TOTAL FLOAT
);

DELIMITER //
CREATE TRIGGER TG_FACTURACION_INSERT 
AFTER INSERT ON items
FOR EACH ROW BEGIN
  DELETE FROM facturacion;
  INSERT INTO facturacion
  SELECT A.FECHA, SUM(B.CANTIDAD * B.PRECIO) AS VENTA_TOTAL
  FROM facturas A
  INNER JOIN
  items B
  ON A.NUMERO = B.NUMERO
  GROUP BY A.FECHA;
END //

DELIMITER //
CREATE TRIGGER TG_FACTURACION_DELETE
AFTER DELETE ON items
FOR EACH ROW BEGIN
  DELETE FROM facturacion;
  INSERT INTO facturacion
  SELECT A.FECHA, SUM(B.CANTIDAD * B.PRECIO) AS VENTA_TOTAL
  FROM facturas A
  INNER JOIN
  items B
  ON A.NUMERO = B.NUMERO
  GROUP BY A.FECHA;
END //

DELIMITER //
CREATE TRIGGER TG_FACTURACION_UPDATE
AFTER UPDATE ON items
FOR EACH ROW BEGIN
  DELETE FROM facturacion;
  INSERT INTO facturacion
  SELECT A.FECHA, SUM(B.CANTIDAD * B.PRECIO) AS VENTA_TOTAL
  FROM facturas A
  INNER JOIN
  items B
  ON A.NUMERO = B.NUMERO
  GROUP BY A.FECHA;
END //

SELECT * FROM facturacion;
/* DESPUES DE HACER UN STORED PROCEDURES CON ESTOS TRIGGES LOS BORRAMOS YA QUE ES MEJOR USARLOS DESDE AHI*/
DROP TRIGGER TG_FACTURACION_DELETE;
DROP TRIGGER TG_FACTURACION_INSERT;
DROP TRIGGER TG_FACTURACION_UPDATE;

/*Y LOS VOLVEMOS A CREAR CON EL PROCEDURES DENTRO PARA MEJOR TRABAJO*/
DELIMITER //
CREATE TRIGGER TG_FACTURACION_INSERT 
AFTER INSERT ON items
FOR EACH ROW BEGIN
  CALL sp_triggers;
END //

DELIMITER //
CREATE TRIGGER TG_FACTURACION_DELETE
AFTER DELETE ON items
FOR EACH ROW BEGIN
  CALL sp_triggers;
END //

DELIMITER //
CREATE TRIGGER TG_FACTURACION_UPDATE
AFTER UPDATE ON items
FOR EACH ROW BEGIN
  CALL sp_triggers;
END //


