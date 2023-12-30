-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2023-06-22 14:50:38.442

-- tables
-- Table: ALUMNO
CREATE TABLE ALUMNO (
    Id int  NOT NULL COMMENT 'El identificador unico de cada estudiante',
    Nombre varchar(50)  NOT NULL COMMENT 'Contiene los nombre completos del estudiante',
    Apellido varchar(50)  NOT NULL COMMENT 'Contiene los apellidos completos del estudiante',
    DNI char(8)  NOT NULL COMMENT 'Contiene el tipo de documento   del estudiante',
    Direccion varchar(90)  NOT NULL COMMENT 'Contiene las direcciones  completas del estudiante',
    Fechanacimiento date  NOT NULL COMMENT 'Contiene las fechas de naciemiento  completos del estudiante',
    Celular char(9)  NOT NULL COMMENT 'Contiene los numeros del celular  del estudiante',
    SECRETARIA_Codigo int  NOT NULL,
    CONSTRAINT ALUMNO_pk PRIMARY KEY (Id)
) COMMENT 'Contiene la información de los Alumnos';

-- Table: APODERADO
CREATE TABLE APODERADO (
    DNI char(8)  NOT NULL COMMENT 'Contiene el tipo de documento   del apoderado',
    Nombre varchar(50)  NOT NULL COMMENT 'Contiene el nombre   del  apoderado',
    Gmail varchar(40)  NOT NULL COMMENT 'Contiene  el gmail  completos del apoderado',
    Celular char(9)  NOT NULL COMMENT 'Contiene  el numero de celular   completos del apoderado',
    Fecha_nacimiento int  NOT NULL COMMENT 'Contiene las fechas de naciemiento  completas del apoderado',
    SECRETARIA_Codigo int  NOT NULL,
    CONSTRAINT APODERADO_pk PRIMARY KEY (DNI)
) COMMENT 'Contiene la información del apoderado';

-- Table: Consulta
CREATE TABLE Consulta (
    Id int  NOT NULL,
    Nombres varchar(80)  NOT NULL COMMENT 'Nombre completo de la persona que realice la consulta',
    Apellidos varchar(80)  NOT NULL COMMENT 'Apellido completo de la persona que realice la consulta',
    DNI char(8)  NOT NULL COMMENT 'DNI completo de la persona que realise la consulta',
    Gmail varchar(80)  NOT NULL COMMENT 'Correo _Electronico completo de la persona que realice la consulta',
    Mensaje char(120)  NOT NULL COMMENT 'Mensaje  de la persona que realice la consulta',
    Celular char(9)  NOT NULL COMMENT 'numero de celular completo de la persona que realice la consulta',
    SECRETARIA_Codigo int  NOT NULL,
    CONSTRAINT Consulta_pk PRIMARY KEY (Id)
) COMMENT 'Se realizara las consultas';

-- Table: DIRECTOR
CREATE TABLE DIRECTOR (
    DNI int  NOT NULL COMMENT 'Contiene el tipo de documento del director',
    Nombre varchar(50)  NOT NULL COMMENT 'Contiene el nombre completo del director',
    Apellidos varchar(50)  NOT NULL COMMENT 'Contiene el apellido del director',
    Celular char(9)  NOT NULL COMMENT 'Contiene el numero de celular del director',
    Direccion varchar(90)  NOT NULL COMMENT 'Contiene la dirección del director',
    SECRETARIA_Codigo int  NOT NULL,
    CONSTRAINT DIRECTOR_pk PRIMARY KEY (DNI)
) COMMENT 'Contiene la información del Director';

-- Table: PROFESORES
CREATE TABLE PROFESORES (
    Id int  NOT NULL,
    Nombre varchar(50)  NOT NULL COMMENT 'Contiene el nombre completo    de los profesores',
    Apellidos varchar(50)  NOT NULL COMMENT 'Contiene el apellido completo    de los profesores',
    DNI char(8)  NOT NULL COMMENT 'Contiene el tipo de comento de cada profesor',
    Celular char(9)  NOT NULL COMMENT 'Contiene el numero de celular de cada profesor',
    Gmail varchar(50)  NOT NULL COMMENT 'Contiene el correo electrónico de cada profesores',
    DIRECTOR_DNI int  NOT NULL COMMENT 'Contiene el tipo de documento del director',
    CONSTRAINT PROFESORES_pk PRIMARY KEY (Id)
) COMMENT 'Contiene la información de los profesores ';

-- Table: SECRETARIA
CREATE TABLE SECRETARIA (
    Codigo int  NOT NULL,
    DNI char(8)  NOT NULL COMMENT 'Contiene el tipo de documento de la secretaria',
    Nombre varchar(50)  NOT NULL COMMENT 'Contiene el nombre completo de la secretaria',
    Apellidos varchar(50)  NOT NULL COMMENT 'Contiene los apellidos de la secretaria',
    Celular char(9)  NOT NULL COMMENT 'Contiene el numero de celular de la secretaria',
    Sueldo decimal(8,2)  NOT NULL COMMENT 'Contiene el sueldo de la secretaria ',
    Fechanacimiento date  NOT NULL COMMENT 'Contiene la fecha de nacimiento de la secretaria',
    CONSTRAINT SECRETARIA_pk PRIMARY KEY (Codigo)
) COMMENT 'Contiene la información de la secretaria';

-- foreign keys
-- Reference: ALUMNO_SECRETARIA (table: ALUMNO)
ALTER TABLE ALUMNO ADD CONSTRAINT ALUMNO_SECRETARIA FOREIGN KEY ALUMNO_SECRETARIA (SECRETARIA_Codigo)
    REFERENCES SECRETARIA (Codigo);

-- Reference: APODERADO_SECRETARIA (table: APODERADO)
ALTER TABLE APODERADO ADD CONSTRAINT APODERADO_SECRETARIA FOREIGN KEY APODERADO_SECRETARIA (SECRETARIA_Codigo)
    REFERENCES SECRETARIA (Codigo);

-- Reference: DIRECTOR_SECRETARIA (table: DIRECTOR)
ALTER TABLE DIRECTOR ADD CONSTRAINT DIRECTOR_SECRETARIA FOREIGN KEY DIRECTOR_SECRETARIA (SECRETARIA_Codigo)
    REFERENCES SECRETARIA (Codigo);

-- Reference: PROFESORES_DIRECTOR (table: PROFESORES)
ALTER TABLE PROFESORES ADD CONSTRAINT PROFESORES_DIRECTOR FOREIGN KEY PROFESORES_DIRECTOR (DIRECTOR_DNI)
    REFERENCES DIRECTOR (DNI);

-- Reference: entity_1_SECRETARIA (table: Consulta)
ALTER TABLE Consulta ADD CONSTRAINT entity_1_SECRETARIA FOREIGN KEY entity_1_SECRETARIA (SECRETARIA_Codigo)
    REFERENCES SECRETARIA (Codigo);

-- End of file.

