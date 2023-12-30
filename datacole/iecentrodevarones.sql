/* 
   Crear base de datos iecentrodevarones
*/
CREATE DATABASE iecentrodevarones;

/*
   Seleccionar la base de datos creada
*/
USE iecentrodevarones;

/*
   Crear tabla 'registros' con los campos: ID, NOMBRES, APELLIDOS, TIPODEDOCUMENTO, 
   NUMERODEDOCUMENTO, CORREOELECTRONICO, TELEFONO y MENSAJE. 
   Definir ID como clave primaria con autoincremento.
*/
CREATE TABLE registros
(
     ID int AUTO_INCREMENT,
     NOMBRES varchar(80),
     APELLIDOS varchar(80),
     TIPODEDOCUMENTO char(3),
     NUMERODEDOCUMENTO varchar(15),
     CORREOELECTRONICO varchar(80),
     TELEFONO char(9),
     MENSAJE varchar(80),
     PRIMARY KEY (ID)
);

/*
   Consulta para mostrar todos los registros de la tabla 'registros'
*/
SELECT * FROM registros;
