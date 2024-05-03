CREATE TABLE Departamentos (
	id SERIAL PRIMARY KEY,
	nombre_departamento VARCHAR(150) NOT NULL,
	ubicacion	VARCHAR(255) NOT NULL
);

CREATE TABLE Cursos (
  id SERIAL PRIMARY KEY,
  nombre_curso VARCHAR(150) NOT NULL,
  departamento_id INT NOT NULL,
  duracion_curso INT NOT NULL,
  creditos INT NOT NULL
);

CREATE TABLE Docentes (
	id SERIAL PRIMARY KEY,
  nombre_docente VARCHAR(200) NOT NULL,
  departamento_id INT NOT NULL,
  titulo_academico VARCHAR(200) NOT NULL
);

CREATE TABLE Alumnos (
  id SERIAL PRIMARY KEY,
  nombre_alumno VARCHAR(200) NOT NULL,
  fecha_nacimiento DATE NOT NULL,
  direccion VARCHAR(255) NOT NULL,
  correo_electronico VARCHAR(150) NOT NULL
);

CREATE TYPE matricula_estado_enum AS ENUM ('Activa', 'Inactiva');

CREATE TABLE Matriculas (
	id SERIAL PRIMARY KEY,
	alumno_id INT NOT NULL,
	curso_id INT NOT NULL,
	fecha_matricula DATE NOT NULL,
  estado_matricula matricula_estado_enum NOT NULL -- o BOOLEAN NOT NULL
);

/* \-------------------------------CONSTRAINS-------------------------------\ */

/* Cursos */
ALTER TABLE Cursos
ADD CONSTRAINT fk_cursos_departamento_id
FOREIGN KEY (departamento_id) 
REFERENCES Departamentos(id)
ON DELETE CASCADE;

/* Docentes */
ALTER TABLE Docentes
ADD CONSTRAINT fk_docentes_departamento_id
FOREIGN KEY (departamento_id) 
REFERENCES Departamentos(id)
ON DELETE CASCADE;

/* Matrículas */
ALTER TABLE Matriculas
ADD CONSTRAINT fk_matriculas_alumno_id
FOREIGN KEY(alumno_id) 
REFERENCES Alumnos(id)
ON DELETE CASCADE;

ALTER TABLE Matriculas
ADD CONSTRAINT fk_matriculas_curso_id
FOREIGN KEY (curso_id) 
REFERENCES Cursos(id)
ON DELETE CASCADE;
