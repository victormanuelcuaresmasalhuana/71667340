CREATE DATABASE  INFORMACION;
USE INFORMACION;
CREATE TABLE INFORMACION (
  id INT(11) NOT NULL AUTO_INCREMENT,
  nombres VARCHAR(50) NOT NULL,
  apellidos VARCHAR(50) NOT NULL,
  dni VARCHAR(8) NOT NULL,
  correo_electronico VARCHAR(100) NOT NULL,
  telefono VARCHAR(20) DEFAULT NULL,
  mensaje TEXT NOT NULL,
  fecha_envio TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id)
);

INSERT INTO INFORMACION (nombres, apellidos, dni, correo_electronico, telefono, mensaje)
VALUES ('Juan', 'Pérez', '12345678', 'juan.perez@example.com', '555-1234', 'Hola mundo!');

INSERT INTO INFORMACION (nombres, apellidos, dni, correo_electronico, telefono, mensaje)
VALUES ('María', 'García', '87654321', 'maria.garcia@example.com', NULL, 'Buenos días!');

SELECT * FROM INFORMACION;

INSERT INTO INFORMACION (nombres, apellidos, dni, correo_electronico, telefono, mensaje)
VALUES ('Marcos', 'Manrique', '40908978', 'marcos.manrique@gmail.com', '900695890', 'Registrame!');
/**/
INSERT INTO INFORMACION (nombres, apellidos, dni, correo_electronico, telefono, mensaje)
VALUES ('Jean', 'Flores', '70907897', 'flores.jean@gmail.com', '988666777', 'Enviame!');

INSERT INTO INFORMACION (nombres, apellidos, dni, correo_electronico, telefono, mensaje)
VALUES ('Andres', 'Gonzales', '78908765', 'andres.gonzales@hotmail.com', '987654321', 'Registrate!');

INSERT INTO INFORMACION (nombres, apellidos, dni, correo_electronico, telefono, mensaje)
VALUES ('Alexandra', 'Hernandez', '70907890', 'alexandra.hernandez@gmail.com', '908789678', 'Registrame ala web!');

INSERT INTO INFORMACION (nombres, apellidos, dni, correo_electronico, telefono, mensaje)
VALUES ('Valeria', 'Chumpitaz', '78889086', 'valeria.chumpitaz@outlook.com', '900900800', 'Registrame Wey!');

INSERT INTO INFORMACION (nombres, apellidos, dni, correo_electronico, telefono, mensaje)
VALUES ('Alexa', 'Rejas', '70009090', 'Alexa.rejas@vallegrande.edu.pe', '900300400', 'Registrame Por Favor!');

SELECT * FROM INFORMACION;

INSERT INTO INFORMACION (nombres, apellidos, dni, correo_electronico, telefono, mensaje)
VALUES ('Sheyla', 'Rojas', '67890987', 'sheyla.rojas@vallegrande.edu.pe', '900100200', 'Registrame Por Favor!');

INSERT INTO INFORMACION (nombres, apellidos, dni, correo_electronico, telefono, mensaje)
VALUES ('Alexa', 'huaman', '89089789', 'Alexa.huaman@vallegrande.edu.pe', '900999400', 'Registrame Por Favor!');

INSERT INTO INFORMACION (nombres, apellidos, dni, correo_electronico, telefono, mensaje)
VALUES ('Andrea', 'Diaz', '79789087', 'andrea.diaz@vallegrande.edu.pe', '987654346', 'Registrame Por Favor!');

SELECT * FROM INFORMACION;