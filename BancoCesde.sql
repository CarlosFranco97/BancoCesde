CREATE DATABASE BANCO;
USE BANCO;

CREATE TABLE Clientes (	
	clienteID INT PRIMARY KEY, 
	Nombre VARCHAR(25) NOT NULL, 
	Apellido VARCHAR(25) NOT NULL,
	Email varchar(20) UNIQUE NOT NULL,
	Telefono BIGINT NOT NULL,
	FechaNacimiento DATE NOT NULL,
	FechaCreacion DATETIME DEFAULT GETDATE(),
	EstadoCliente BIT NOT NULL,
)

CREATE TABLE Prestamos (
	PrestamoID INT PRIMARY KEY,
	ClienteID INT FOREIGN KEY REFERENCES Clientes(clienteID),
	MontoPrestamo BIGINT NOT NULL,
	TasaIntereses FLOAT NOT NULL,
	FechaAprobacion DATETIME DEFAULT GETDATE(),
	PlazoMeses INT NOT NULL,
	EstadoPrestamo BIT NOT NULL,
)

CREATE TABLE PagosPrestamos (
	PagoID INT PRIMARY KEY,
	PrestamoID INT FOREIGN KEY REFERENCES Prestamos(PrestamoID),
	MontoPago BIGINT NOT NULL,
	FechaPago DATETIME DEFAULT GETDATE()
)

CREATE TABLE CuentasBancarias(
	NumeroCuenta BIGINT PRIMARY KEY,
	ClienteID INT FOREIGN KEY REFERENCES Clientes(clienteID),
	EstadoCuenta BIT NOT NULL,
	TipoCuenta VARCHAR(20) NOT NULL,
	Saldo BIGINT NOT NULL,
	FechaApertura DATETIME DEFAULT GETDATE()
)

CREATE TABLE Transacciones(
	
	TransaccionID INT PRIMARY KEY, 
	NumeroCuenta BIGINT FOREIGN KEY REFERENCES CuentasBancarias(NumeroCuenta),
	Monto BIGINT NOT NULL,
	TipoTransaccion VARCHAR(20) NOT NULL,
	FechaTransaccion DATETIME DEFAULT GETDATE(),
	Descripcion VARCHAR(50) NOT NULL

)

CREATE TABLE Sucursales (
	SucursalID INT PRIMARY KEY,
	NombreSucursal VARCHAR(80),
	DireccionSucursal VARCHAR(80),
	CiudadSucursal VARCHAR(40) NOT NULL,
	EstadoSucursal VARCHAR(40) NOT NULL,
	TelefonoSucursal BIGINT NOT NULL
	
	)

CREATE TABLE Empleados (
	
	EmpleadoID INT PRIMARY KEY,
	SucursalID INT FOREIGN KEY REFERENCES Sucursales(SucursalID),
	NombreEmpleado VARCHAR(80) NOT NULL,
	ApellidoEmpleado VARCHAR(80) NOT NULL,
	CargoEmpleado VARCHAR(50) NOT NULL,
	EmailEmplado VARCHAR(60) UNIQUE NOT NULL,
	FechaIgresoEmpleado DATE NOT NULL,
	SalarioEmpleado FLOAT NOT NULL

)

select * from clientes


/* CREATE TABLE Clientes (	
	clienteID INT PRIMARY KEY, 
	Nombre VARCHAR(25) NOT NULL, 
	Apellido VARCHAR(25) NOT NULL,
	Email varchar(20) UNIQUE NOT NULL,
	Telefono BIGINT NOT NULL,
	FechaNacimiento DATE NOT NULL,
	FechaCreacion DATETIME DEFAULT GETDATE(),
	EstadoCliente BIT NOT NULL,
) */

INSERT INTO Clientes (clienteID, Nombre, Apellido, Email, Telefono, FechaNacimiento, EstadoCliente ) 
VALUES (1, 'Raul', 'Franco', 'raul@gmail.com', 3214597896, '2020/01/01', 1)

INSERT INTO Clientes(clienteID, Nombre, Apellido, Email, Telefono, FechaNacimiento, EstadoCliente) 
VALUES(2, 'Antonio', 'Rodriguez', 'kk@gmail.com', 3258963147, '1997/04/16', 1);