-- Usuarios (login)
INSERT INTO Usuarios (Nombre, Correo, ContrasenaHash, Rol) VALUES
('Mario Barsallo', 'mario.barsallo@up.ac.pa', 'hash123', 'Administrador'),
('Cristopher Hull', 'cristopher.hull@up.ac.pa', 'hash456', 'Estudiante');

-- Giras disponibles
INSERT INTO Giras (Nombre, Fecha, Lugar, Descripcion, OrganizadorID) VALUES
('Visita a Cable & Wireless', '2025-11-15', 'Panamá', 'Recorrido por centro de datos', 1),
('Tour a UTP', '2025-12-01', 'Campus Tocumen', 'Exploración de laboratorios de redes', 2);

-- Inscripciones (registro de selección de giras)
INSERT INTO Inscripciones (UsuarioID, GiraID, Estado) VALUES
(2, 1, 'Registrado'),
(2, 2, 'Registrado');