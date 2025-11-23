-- Base de Datos 2 - SIN IDENTITY
CREATE TABLE Departamentos (
    id INT PRIMARY KEY NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    ubicacion VARCHAR(100),
    fecha_creacion DATETIME NOT NULL
);

CREATE TABLE Medicos (
    id INT PRIMARY KEY NOT NULL,
    departamento_id INT NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    especialidad VARCHAR(100),
    fecha_registro DATETIME NOT NULL,
    CONSTRAINT FK_Medicos_Departamentos 
        FOREIGN KEY (departamento_id) 
        REFERENCES Departamentos(id)
);

CREATE TABLE Consultas (
    id INT PRIMARY KEY NOT NULL,
    medico_id INT NOT NULL,
    nombre_paciente VARCHAR(200) NOT NULL,
    diagnostico TEXT,
    fecha_consulta DATETIME NOT NULL,
    CONSTRAINT FK_Consultas_Medicos 
        FOREIGN KEY (medico_id) 
        REFERENCES Medicos(id)
);
