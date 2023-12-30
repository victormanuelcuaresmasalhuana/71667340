-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2023-05-16 02:16:16.476

-- tables
-- Table: Apoderado
CREATE TABLE Apoderado (
    dni char(8)  NOT NULL COMMENT 'Contiene el Numero de Documento de Identidad del apoderado.',
    nombres varchar(60)  NOT NULL COMMENT 'Contiene los Nombres Completos de los Apoderados.',
    apellidos varchar(90)  NOT NULL COMMENT 'Contiene los Apellidos Completos de los Apoderados.',
    celular char(9)  NOT NULL COMMENT 'Contiene los Numeros de Celular de los Apoderados.',
    direccion varchar(90)  NOT NULL COMMENT 'Contiene las Direcciones de los Apoderados.',
    CONSTRAINT Apoderado_pk PRIMARY KEY (dni)
) COMMENT 'Contiene los Apoderados de los Estudiantes.';

-- Table: Docente
CREATE TABLE Docente (
    codigo_docente char(10)  NOT NULL COMMENT 'Contiene el codigo del Docente.',
    nombres varchar(60)  NOT NULL COMMENT 'Contiene los nombres completos de los docentes.',
    apellidos varchar(90)  NOT NULL COMMENT 'Contiene los Apellidos completos de los docentes.',
    celular char(9)  NOT NULL,
    direccion varchar(90)  NOT NULL,
    CONSTRAINT Docente_pk PRIMARY KEY (codigo_docente)
) COMMENT 'Aqui estaran registrados los datos de los docentes';

-- Table: Estudiante
CREATE TABLE Estudiante (
    dni char(8)  NOT NULL COMMENT 'Contiene el Numero de Identificacion de los estudiantes.',
    nombres varchar(60)  NOT NULL COMMENT 'Contiene los Nombres Completos de los Estudiantes.',
    apellidos varchar(90)  NOT NULL COMMENT 'Contiene los Apellidos Completos de los Estudiantes.',
    direccion varchar(90)  NOT NULL COMMENT 'Contiene las direcciones de los Estudiantes.',
    edad int  NOT NULL COMMENT 'Contiene las edades de los Estudiantes.',
    grado_estudiar int  NOT NULL COMMENT 'Contiene los datos de grado_estudiar.',
    Apoderado_dni char(8)  NOT NULL,
    CONSTRAINT Estudiante_pk PRIMARY KEY (dni)
) COMMENT 'Contiene los Datos de los estudiantes.';

-- Table: Grado
CREATE TABLE Grado (
    codigo_aula char(10)  NOT NULL,
    seccion int  NOT NULL COMMENT 'Contiene los datos de las secciones de los estudiantes.',
    nivel int  NOT NULL COMMENT 'Contiene los datos del nivel de cada estudiante.',
    CONSTRAINT Grado_pk PRIMARY KEY (codigo_aula)
) COMMENT 'Contiene los Grados de los Estudiantes.';

-- Table: Matricula
CREATE TABLE Matricula (
    Fechadeatricula int  NOT NULL COMMENT 'Contiene los Datos de las Fechas de Matricula.',
    FechadeInicio int  NOT NULL COMMENT 'Contiene los Datos de las Fechas de Inicio.',
    Findelcurso int  NOT NULL COMMENT 'Contiene los Datos de Fin de Curso.',
    Notas int  NOT NULL COMMENT 'Contiene los Datos de La nota obtenida por el estudiante.',
    Docente_codigo_docente char(10)  NOT NULL COMMENT 'Contiene datos de docente de codigo de docente.',
    Grado_codigo_aula char(10)  NOT NULL COMMENT 'Contiene los Datos de Grado de codigo por aula.',
    Estudiante_dni char(8)  NOT NULL COMMENT 'Contiene los Datos del estudiante al Dni.',
    CONSTRAINT Matricula_pk PRIMARY KEY (Fechadeatricula)
) COMMENT 'Contiene los Datos de los Matriculados.';

-- foreign keys
-- Reference: Estudiante_Apoderado (table: Estudiante)
ALTER TABLE Estudiante ADD CONSTRAINT Estudiante_Apoderado FOREIGN KEY Estudiante_Apoderado (Apoderado_dni)
    REFERENCES Apoderado (dni);

-- Reference: Table_5_Docente (table: Matricula)
ALTER TABLE Matricula ADD CONSTRAINT Table_5_Docente FOREIGN KEY Table_5_Docente (Docente_codigo_docente)
    REFERENCES Docente (codigo_docente);

-- Reference: Table_5_Estudiante (table: Matricula)
ALTER TABLE Matricula ADD CONSTRAINT Table_5_Estudiante FOREIGN KEY Table_5_Estudiante (Estudiante_dni)
    REFERENCES Estudiante (dni);

-- Reference: Table_5_Grado (table: Matricula)
ALTER TABLE Matricula ADD CONSTRAINT Table_5_Grado FOREIGN KEY Table_5_Grado (Grado_codigo_aula)
    REFERENCES Grado (codigo_aula);

-- End of file.

