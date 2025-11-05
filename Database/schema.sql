-- schema.sql
-- Proyecto: Registro de Giras Técnicas - Universidad de Panamá

CREATE TABLE Usuarios (
    UsuarioID INT PRIMARY KEY IDENTITY(1,1),
    Nombre NVARCHAR(100) NOT NULL,
    Correo NVARCHAR(100) UNIQUE NOT NULL,
    ContrasenaHash NVARCHAR(256) NOT NULL,
    Rol NVARCHAR(50) CHECK (Rol IN ('Estudiante', 'Organizador', 'Administrador')),
    FechaRegistro DATETIME DEFAULT GETDATE()
);

CREATE TABLE Facultades (
    FacultadID INT PRIMARY KEY IDENTITY(1,1),
    Nombre NVARCHAR(100) NOT NULL
);

CREATE TABLE Organizadores (
    OrganizadorID INT PRIMARY KEY IDENTITY(1,1),
    Nombre NVARCHAR(100) NOT NULL,
    Correo NVARCHAR(100),
    FacultadID INT FOREIGN KEY REFERENCES Facultades(FacultadID)
);

CREATE TABLE Giras (
    GiraID INT PRIMARY KEY IDENTITY(1,1),
    Nombre NVARCHAR(100) NOT NULL,
    Fecha DATE NOT NULL,
    Lugar NVARCHAR(100),
    Descripcion NVARCHAR(MAX),
    OrganizadorID INT FOREIGN KEY REFERENCES Organizadores(OrganizadorID)
);

CREATE TABLE Inscripciones (
    InscripcionID INT PRIMARY KEY IDENTITY(1,1),
    UsuarioID INT FOREIGN KEY REFERENCES Usuarios(UsuarioID),
    GiraID INT FOREIGN KEY REFERENCES Giras(GiraID),
    FechaInscripcion DATETIME DEFAULT GETDATE(),
    Estado NVARCHAR(50) CHECK (Estado IN ('Registrado', 'Cancelado', 'Confirmado'))
);

CREATE TABLE BitacoraAccesos (
    AccesoID INT PRIMARY KEY IDENTITY(1,1),
    UsuarioID INT FOREIGN KEY REFERENCES Usuarios(UsuarioID),
    FechaAcceso DATETIME DEFAULT GETDATE(),
    IP NVARCHAR(50),
    Navegador NVARCHAR(100)
);

CREATE TABLE Comentarios (
    ComentarioID INT PRIMARY KEY IDENTITY(1,1),
    UsuarioID INT FOREIGN KEY REFERENCES Usuarios(UsuarioID),
    GiraID INT FOREIGN KEY REFERENCES Giras(GiraID),
    Texto NVARCHAR(MAX),
    FechaComentario DATETIME DEFAULT GETDATE()
);