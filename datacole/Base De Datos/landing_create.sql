-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2023-06-09 02:44:54.26

-- tables
-- Table: ALUMNO
CREATE TABLE ALUMNO (
    Id int  NOT NULL,
    Nombre varchar(50)  NOT NULL,
    Apellido varchar(50)  NOT NULL,
    DNI char(8)  NOT NULL,
    Direccion varchar(90)  NOT NULL,
    Fecha_nacimiento date  NOT NULL,
    Celular char(9)  NOT NULL,
    SECRETARIA_Codigo int  NOT NULL,
    CONSTRAINT ALUMNO_pk PRIMARY KEY  (Id)
);

-- Table: APODERADO
CREATE TABLE APODERADO (
    DNI char(8)  NOT NULL,
    Nombre varchar(50)  NOT NULL,
    Gmail varchar(40)  NOT NULL,
    Celular char(9)  NOT NULL,
    Fecha_nacimiento int  NOT NULL,
    SECRETARIA_Codigo int  NOT NULL,
    CONSTRAINT APODERADO_pk PRIMARY KEY  (DNI)
);

-- Table: DIRECTOR
CREATE TABLE DIRECTOR (
    DNI int  NOT NULL,
    Nombre varchar(50)  NOT NULL,
    Apellido varchar(50)  NOT NULL,
    Celular char(9)  NOT NULL,
    Direccion varchar(90)  NOT NULL,
    SECRETARIA_Codigo int  NOT NULL,
    CONSTRAINT DIRECTOR_pk PRIMARY KEY  (DNI)
);

-- Table: PROFESORES
CREATE TABLE PROFESORES (
    Id int  NOT NULL,
    Nombre varchar(50)  NOT NULL,
    Apellido varchar(50)  NOT NULL,
    DNI char(8)  NOT NULL,
    Celular char(9)  NOT NULL,
    Gmail varchar(50)  NOT NULL,
    DIRECTOR_DNI int  NOT NULL,
    CONSTRAINT PROFESORES_pk PRIMARY KEY  (Id)
);

-- Table: SECRETARIA
CREATE TABLE SECRETARIA (
    Codigo int  NOT NULL,
    DNI char(8)  NOT NULL,
    Nombre varchar(50)  NOT NULL,
    Apellido varchar(50)  NOT NULL,
    Celular char(9)  NOT NULL,
    Sueldo decimal(8,2)  NOT NULL,
    Fecha_nacimiento date  NOT NULL,
    CONSTRAINT SECRETARIA_pk PRIMARY KEY  (Codigo)
);

-- foreign keys
-- Reference: ALUMNO_SECRETARIA (table: ALUMNO)
ALTER TABLE ALUMNO ADD CONSTRAINT ALUMNO_SECRETARIA
    FOREIGN KEY (SECRETARIA_Codigo)
    REFERENCES SECRETARIA (Codigo);

-- Reference: APODERADO_SECRETARIA (table: APODERADO)
ALTER TABLE APODERADO ADD CONSTRAINT APODERADO_SECRETARIA
    FOREIGN KEY (SECRETARIA_Codigo)
    REFERENCES SECRETARIA (Codigo);

-- Reference: DIRECTOR_SECRETARIA (table: DIRECTOR)
ALTER TABLE DIRECTOR ADD CONSTRAINT DIRECTOR_SECRETARIA
    FOREIGN KEY (SECRETARIA_Codigo)
    REFERENCES SECRETARIA (Codigo);

-- Reference: PROFESORES_DIRECTOR (table: PROFESORES)
ALTER TABLE PROFESORES ADD CONSTRAINT PROFESORES_DIRECTOR
    FOREIGN KEY (DIRECTOR_DNI)
    REFERENCES DIRECTOR (DNI);

-- sequences
-- Sequence: ALUMNO_seq
CREATE SEQUENCE ALUMNO_seq
    START WITH 1 
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    NO CYCLE
    NO CACHE;

-- Sequence: DIRECTOR_seq
CREATE SEQUENCE DIRECTOR_seq
    START WITH 1 
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    NO CYCLE
    NO CACHE;

-- Sequence: PROFESORES_seq
CREATE SEQUENCE PROFESORES_seq
    START WITH 1 
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    NO CYCLE
    NO CACHE;

-- Sequence: SECRETARIA_seq
CREATE SEQUENCE SECRETARIA_seq
    START WITH 1 
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    NO CYCLE
    NO CACHE;

-- End of file.

