-- Base de Datos 1 - CON IDENTITY
CREATE TABLE Departamentos (
    id INT PRIMARY KEY IDENTITY(1,1),
    nombre VARCHAR(100) NOT NULL,
    ubicacion VARCHAR(100),
    fecha_creacion DATETIME NOT NULL DEFAULT GETDATE()
);

CREATE TABLE Medicos (
    id INT PRIMARY KEY IDENTITY(1,1),
    departamento_id INT NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    especialidad VARCHAR(100),
    fecha_registro DATETIME NOT NULL DEFAULT GETDATE(),
    CONSTRAINT FK_Medicos_Departamentos 
        FOREIGN KEY (departamento_id) 
        REFERENCES Departamentos(id)
);

CREATE TABLE Consultas (
    id INT PRIMARY KEY IDENTITY(1,1),
    medico_id INT NOT NULL,
    nombre_paciente VARCHAR(200) NOT NULL,
    diagnostico TEXT,
    fecha_consulta DATETIME NOT NULL DEFAULT GETDATE(),
    CONSTRAINT FK_Consultas_Medicos 
        FOREIGN KEY (medico_id) 
        REFERENCES Medicos(id)
);
