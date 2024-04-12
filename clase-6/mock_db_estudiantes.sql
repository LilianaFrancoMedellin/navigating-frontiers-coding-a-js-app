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
VALUES (6,
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