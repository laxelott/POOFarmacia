DROP DATABASE IF EXISTS SAFO;
CREATE DATABASE SAFO;
USE SAFO;

CREATE TABLE clientes (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nombre NVARCHAR(100) NOT NULL,
	RFC NVARCHAR(13) NOT NULL UNIQUE,
	edad INT NOT NULL
);

CREATE TABLE pacientes (
	id INT PRIMARY KEY AUTO_INCREMENT,
	peso INT,
	estatura INT,
	
	
	FOREIGN KEY (id) REFERENCES clientes(id)
);

CREATE TABLE alergias (
	id_paciente INT,
	nombre NVARCHAR(50) NOT NULL,
	
	FOREIGN KEY (id_paciente) REFERENCES pacientes(id)
);

CREATE TABLE resultadosLab (
	id INT PRIMARY KEY AUTO_INCREMENT,
	diagnostico NVARCHAR(500) NOT NULL
);

CREATE TABLE historialLab (
	id_paciente INT,
	id_resultado INT,
	
	FOREIGN KEY (id_paciente) REFERENCES pacientes(id),
	FOREIGN KEY (id_resultado) REFERENCES resultadosLab(id)
);

CREATE TABLE empleados (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nombre NVARCHAR(100) NOT NULL,
	username NVARCHAR(100) UNIQUE NOT NULL,
	claveAcceso INT NOT NULL
);
/* TODO Turnos */

CREATE TABLE productos(
	id INT PRIMARY KEY AUTO_INCREMENT,
	nombre nvarchar(100) NOT NULL,
	precio INT NOT NULL
);

CREATE TABLE inventario(
	id INT PRIMARY KEY AUTO_INCREMENT,
	id_producto INT NOT NULL,
	cantidad INT NOT NULL DEFAULT 0,
	
	FOREIGN KEY (id_producto) REFERENCES productos(id)
);