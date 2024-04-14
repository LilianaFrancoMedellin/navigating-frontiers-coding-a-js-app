-- Creación de tablas

CREATE TABLE ciudades (id integer, nombre varchar(100), departamento varchar(100));


CREATE TABLE estudiantes (id integer, primer_nombre varchar(100), segundo_nombre varchar(100), apellidos varchar(100), edad integer, residencia varchar(100));

-- Agregar Información a la tabla de ciudades

INSERT INTO ciudades (id, nombre, departamento)
VALUES (1,
        'medellin',
        'antioquia');


INSERT INTO ciudades (id, nombre, departamento)
VALUES (2,
        'itagui',
        'antioquia');


INSERT INTO ciudades (id, nombre, departamento)
VALUES (3,
        'pereira',
        'risaralda');


INSERT INTO ciudades (id, nombre, departamento)
VALUES (4,
        'cali',
        'valle del cauca');


INSERT INTO ciudades (id, nombre, departamento)
VALUES (5,
        'bello',
        'antioquia');


INSERT INTO ciudades (id, nombre, departamento)
VALUES (6,
        'pasto',
        'nariño');


INSERT INTO ciudades (id, nombre, departamento)
VALUES (7,
        'sabaneta',
        'antioquia');

-- Agregar Información a la tabla de estudiantes

INSERT INTO estudiantes (id, primer_nombre, segundo_nombre, apellidos, edad, residencia)
VALUES (1,
        'juan',
        'camilo',
        'velasquez',
        31,
        'sabaneta');


INSERT INTO estudiantes (id, primer_nombre, segundo_nombre, apellidos, edad, residencia)
VALUES (2,
        'carolina',
        NULL,
        'gomez trejos',
        28,
        'pereira');


INSERT INTO estudiantes (id, primer_nombre, segundo_nombre, apellidos, edad, residencia)
VALUES (3,
        'liliana',
        'patricia',
        'franco',
        32,
        'medellin');


INSERT INTO estudiantes (id, primer_nombre, segundo_nombre, apellidos, edad, residencia)
VALUES (4,
        'miguel',
        NULL,
        'sierra',
        27,
        'bello');


INSERT INTO estudiantes (id, primer_nombre, segundo_nombre, apellidos, edad, residencia)
VALUES (5,
        'mateo',
        NULL,
        'garcia',
        27,
        'medellin');


INSERT INTO estudiantes (id, primer_nombre, segundo_nombre, apellidos, edad, residencia)
VALUES (6,
        'cesar',
        NULL,
        'herrera',
        32,
        'medellin');


INSERT INTO estudiantes (id, primer_nombre, segundo_nombre, apellidos, edad, residencia)
VALUES (7,
        'juan',
        NULL,
        'perez',
        35,
        'pasto');


INSERT INTO estudiantes (id, primer_nombre, segundo_nombre, apellidos, edad, residencia)
VALUES (8,
        'laura',
        'andrea',
        'suarez',
        30,
        'itagui');


INSERT INTO estudiantes (id, primer_nombre, segundo_nombre, apellidos, edad, residencia)
VALUES (9,
        'luisa',
        'veronica',
        'uribe',
        22,
        'itagui');


INSERT INTO estudiantes (id, primer_nombre, segundo_nombre, apellidos, edad, residencia)
VALUES (10,
        'carlos',
        'arturo',
        'vanegas',
        38,
        'cali');


INSERT INTO estudiantes (id, primer_nombre, segundo_nombre, apellidos, edad, residencia)
VALUES (11,
        'felipe',
        NULL,
        'arias',
        35,
        'sabaneta');


INSERT INTO estudiantes (id, primer_nombre, segundo_nombre, apellidos, edad, residencia)
VALUES (12,
        'andres',
        'felipe',
        'garcia',
        29,
        'pereira');


-- QUERIES

SELECT *
FROM ciudades;

 -- por id

SELECT *
FROM estudiantes
WHERE id = 1 

-- edad mayor o menor que

SELECT *
FROM estudiantes WHERE edad > 30 

-- rango de edad

SELECT *
FROM estudiantes WHERE edad BETWEEN 25 AND 30 

-- campo no sea null

SELECT *
FROM estudiantes WHERE segundo_nombre IS NOT NULL 

-- campo sea null

SELECT *
FROM estudiantes WHERE segundo_nombre NOT NULL 

-- la mayor edad

SELECT max(edad)
FROM estudiantes 

-- la menor edad

SELECT min(edad)
FROM estudiantes 

-- el promedio de edad

SELECT avg(edad)
FROM estudiantes 

-- la suma de las edades

SELECT sum(edad)
FROM estudiantes 

-- el total de registros en la tabla

SELECT count(*)
FROM estudiantes 

-- select anidado

SELECT * FROM estudiantes
WHERE edad = (SELECT max(edad) FROM estudiantes)

-- por edad y segundo nombre

SELECT *
FROM estudiantes WHERE edad = 30
AND segundo_nombre IS NOT NULL 

-- por edad con 2 valores (in)

SELECT *
FROM estudiantes WHERE edad IN (31, 27) 

-- ordernamiento descendente o ascendente

SELECT *
FROM estudiantes
ORDER BY primer_nombre DESC 

-- limitar la cantidad de registros

SELECT *
FROM estudiantes LIMIT 3 

-- haciendo join por el campo residencia con la tabla ciudades

SELECT *
FROM estudiantes e
INNER JOIN ciudades c ON c.nombre = e.residencia 

-- haciendo join pero trayendo algunos campos de ambas tablas

SELECT e.primer_nombre,
       c.nombre,
       c.departamento
FROM estudiantes e
INNER JOIN ciudades c ON c.nombre = e.residencia 

-- haciendo join, trayendo algunos campos y agregando condición where

SELECT e.primer_nombre,
       c.nombre,
       c.departamento
FROM estudiantes e
INNER JOIN ciudades c ON c.nombre = e.residencia
WHERE c.departamento = 'antioquia' 

-- haciendo join, trayendo algunos campos pero usando alias en las columnas

SELECT e.primer_nombre AS estudiante,
     c.nombre AS ciudad,
     c.departamento
FROM estudiantes e
INNER JOIN ciudades c ON c.nombre = e.residencia 

-- tratando de concatenar primer nombre, segundo nombre y apellidos

SELECT (e.primer_nombre || ' ' || e.segundo_nombre || ' ' || e.apellidos) AS estudiante,
     c.nombre AS ciudad,
     c.departamento
FROM estudiantes e
INNER JOIN ciudades c ON c.nombre = e.residencia 

-- concatenando usando la función concat

SELECT concat(e.primer_nombre, ' ', e.segundo_nombre, ' ', e.apellidos) AS estudiante,
     c.nombre AS ciudad,
     c.departamento
FROM estudiantes e
INNER JOIN ciudades c ON c.nombre = e.residencia 

-- DELETE & UPDATE
-- actualizar el segundo nombre del estudiante 2

UPDATE estudiantes
SET segundo_nombre = 'andrea' WHERE id = 2

-- borrar el estudiante 5

DELETE 
FROM estudiantes WHERE id = 5