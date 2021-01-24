DROP DATABASE IF EXISTS SAFO;
CREATE DATABASE SAFO;
USE SAFO;

/*Tabla de referencia a las alergias*/
CREATE TABLE alergias (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nombre CHAR(50) NOT NULL, /*Nombre de la alergia*/
    descripcion TEXT 
);

/*Tabla de Clientes*/
CREATE TABLE clientes (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nombre CHAR(100) NOT NULL,
	rfc CHAR(13) default "MOMV990405",
	edad INT NOT NULL
);

/*Tabla de Medicos*/
CREATE TABLE medicos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre CHAR(100) NOT NULL,
	cedula CHAR(13) NOT NULL DEFAULT 'sin-cédula',
	consultorio INT NOT NULL DEFAULT -1,
    edad INT NOT NULL
);

CREATE TABLE laboratoristas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    usuario CHAR(100) NOT NULL UNIQUE,
	pass CHAR(100) NOT NULL
);


CREATE TABLE pacientes (
	id INT PRIMARY KEY,
	peso INT,
	estatura INT,
	FOREIGN KEY (id) REFERENCES clientes(id)
);

CREATE TABLE pacientes_alergias (
	id INT auto_increment PRIMARY KEY,
    id_paciente INT NOT NULL,
    id_alergia INT NOT NULL,
	FOREIGN KEY (id_paciente) REFERENCES clientes(id),
    FOREIGN KEY (id_alergia) REFERENCES alergias(id) 
);

CREATE TABLE analisis (
	id INT PRIMARY KEY AUTO_INCREMENT,
	tipo_analisis TEXT, /*Tipo de analisis*/
    muestras_requeridas TEXT /*Muestras para el tratamiento*/
);

CREATE TABLE resultadosLab (
	id INT PRIMARY KEY AUTO_INCREMENT,
	diagnostico TEXT NOT NULL,
    id_laboratorista INT NOT NULL,
    id_paciente INT NOt NULL,
    id_analisis INT NOT NULL,

    FOREIGN KEY (id_laboratorista) REFERENCES laboratoristas(id),
    FOREIGN KEY (id_paciente) REFERENCES pacientes(id),
    FOREIGN KEY (id_analisis) REFERENCES analisis(id)
);

CREATE TABLE historialLab (
	id_paciente INT,
	id_resultado INT,
	
	FOREIGN KEY (id_paciente) REFERENCES pacientes(id),
	FOREIGN KEY (id_resultado) REFERENCES resultadosLab(id)
);

CREATE TABLE empleados (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nombre CHAR(100) NOT NULL,
	username CHAR(100) NOT NULL,
	clave_acceso INT NOT NULL
);
/* TODO Turnos */

CREATE TABLE productos(
	id INT PRIMARY KEY AUTO_INCREMENT,
	nombre CHAR(100) NOT NULL,
	precio INT NOT NULL
);

CREATE TABLE inventario(
	id INT PRIMARY KEY AUTO_INCREMENT,
	id_producto INT NOT NULL,
	cantidad INT NOT NULL DEFAULT 0,
	
	FOREIGN KEY (id_producto) REFERENCES productos(id)
);

CREATE TABLE servicios_especiales(
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_paciente INT NOT NULL,
    descripcion TEXT,

    FOREIGN KEY (id_paciente) REFERENCES pacientes(id)
);

CREATE TABLE emergencias_medicas(
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_paciente INT NOT NULL,
    id_medico INT NOT NULL, /*medico que atendio la emergencia*/
    tipo INT NOT NULL, /*Tipo de emergencia*/
    descripcion TEXT,

    FOREIGN KEY (id_paciente) REFERENCES pacientes(id),
    FOREIGN KEY (id_medico) REFERENCES medicos(id)
);

CREATE TABLE tratamientos (
	id INT PRIMARY KEY AUTO_INCREMENT,
	id_paciente INT NOT NULL, 
    id_medico INT NOT NULL, /*medico que lleva el tratamiento*/

    FOREIGN KEY (id_paciente) REFERENCES pacientes(id),
    FOREIGN KEY (id_medico) REFERENCES medicos(id)
);

CREATE TABLE descuentos (
	id INT PRIMARY KEY AUTO_INCREMENT,
	id_paciente INT NOT NULL,
    descuento INT, /*Porcentaje del descuento*/
    gasto DOUBLE NOT NULL,
    FOREIGN KEY (id_paciente) REFERENCES pacientes(id)
);

CREATE TABLE caja (
	 id INT PRIMARY KEY AUTO_INCREMENT,
    id_empleado INT NOT NULL,
	 corte DATE NOT NULL, /*Fecha de corte*/
    egreso DOUBLE NOT NULL, 
    ingreso DOUBLE NOT NULL,
    id_descuento INT,
    
    FOREIGN KEY (id_descuento) REFERENCES descuentos(id),
    FOREIGN KEY (id_empleado) REFERENCES empleados(id)
);

CREATE TABLE consultas (
	 id INT PRIMARY KEY AUTO_INCREMENT,
    id_medico INT NOT NULL, /*medico que atiende la consulta*/ 
	 id_paciente INT NOT NULL, /*Paciente al que se le hace la consulta*/
    fecha_hora DATETIME NOT NULL, /*Fecha y hora de la consulta donde se realizo la consulta*/
    padecimiento TEXT, /*Descripcion de la consulta*/

    FOREIGN KEY (id_paciente) REFERENCES pacientes(id),
    FOREIGN KEY (id_medico) REFERENCES medicos(id)

);

CREATE TABLE expediente (
	id INT PRIMARY KEY AUTO_INCREMENT,
	id_consulta INT NOT NULL,
    folio INT NOT NULL,
    consultorio INT NOT NULL DEFAULT 1,

    FOREIGN KEY (id_consulta) REFERENCES consultas(id)
);

CREATE TABLE recetas (
	id INT PRIMARY KEY AUTO_INCREMENT,
   saludable INT DEFAULT 0,
	id_consulta INT DEFAULT -1, /*Numero de la consulta donde se realizo la consulta*/

    FOREIGN KEY (id_consulta) REFERENCES consultas(id)
);

CREATE TABLE mostrador (
    id INT PRIMARY KEY AUTO_INCREMENT,
    producto INT NOT NULL,
    FOREIGN KEY (producto) REFERENCES productos(id)
);

CREATE TABLE medicamentos_recetados(
	id INT PRIMARY KEY AUTO_INCREMENT,
	nombre_medicamento TEXT NOT NULL,
	id_receta INT NOT NULL,
	FOREIGN KEY (id_receta) REFERENCES recetas(id)
);

CREATE VIEW pacientes_datos AS
SELECT clientes.id, nombre, rfc, edad, peso, estatura FROM clientes
	INNER JOIN pacientes
		ON clientes.id = pacientes.id;
		
CREATE VIEW alergias_pacientes AS
SELECT pacientes.id, alergias.nombre FROM alergias
	INNER JOIN pacientes_alergias
		ON alergias.id = pacientes_alergias.id_alergia
	INNER JOIN pacientes
		ON pacientes_alergias.id_paciente = pacientes.id;

CREATE VIEW consultas_medicamentos AS 
SELECT
		consultas.id AS 'id_consulta', medicos.id AS 'id_medico', pacientes_datos.id AS 'id_paciente'
		medicamentos_recetados.nombre_medicamento,
		consultas.fecha_hora, consultas.padecimiento,
		recetas.saludable, 
		medicos.nombre AS 'nombre_medico',
		pacientes_datos.nombre AS 'nombre_paciente', pacientes_datos.rfc, pacientes_datos.edad, pacientes_datos.peso, pacientes_datos.estatura
	FROM medicamentos_recetados
	LEFT JOIN recetas
		ON medicamentos_recetados.id_receta = recetas.id
	INNER JOIN consultas
		ON recetas.id_consulta = consultas.id
	INNER JOIN medicos
		ON consultas.id_medico = medicos.id
	INNER JOIN pacientes_datos
		ON consultas.id_paciente = pacientes_datos.id 