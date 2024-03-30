CREATE TABLE Socio (
    NIF VARCHAR(25) PRIMARY KEY,
    Nombre VARCHAR(55),
    Apellido1 VARCHAR(55),
    Apellido2 VARCHAR(55),
    N_Direccion VARCHAR(55),
    Piso VARCHAR(25),
    Codigo_Postal VARCHAR(25),
    Municipio VARCHAR(55),
    Provincia VARCHAR(55),
    Telefono VARCHAR(30),
    Correo_Electronico VARCHAR(200)
);

CREATE TABLE Entrega (
    N_Entrega INT AUTO_INCREMENT PRIMARY KEY,
    Municipio VARCHAR(55),
    Fecha_Hora_Entrega DATETIME,
    Numero_Socio VARCHAR(25),
    Cantidad_Aceituna DECIMAL(12,2),
    Tipo_Aceite VARCHAR(55),
    Parcela VARCHAR(55),
    Recinto VARCHAR(55),
    FOREIGN KEY (Numero_Socio) 
    REFERENCES Socio(NIF) 
    ON DELETE CASCADE
);

CREATE TABLE Ventas (
    N_Factura INT AUTO_INCREMENT PRIMARY KEY,
    Fecha_Hora_Venta DATETIME,
    Numero_Socio VARCHAR(25),
    FOREIGN KEY (Numero_Socio) 
    REFERENCES Socio(NIF) 
    ON DELETE CASCADE
);
