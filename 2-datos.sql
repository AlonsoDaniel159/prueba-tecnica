INSERT INTO Departamentos (nombre_departamento, ubicacion)
VALUES
  ('Ciencias de la Computación', 'Edificio de Ingeniería'),
  ('Matemáticas', 'Edificio de Ciencias'),
  ('Historia', 'Edificio de Artes y Humanidades');

INSERT INTO Cursos (nombre_curso, departamento_id, duracion_curso, creditos)
VALUES
  ('Introducción a la Programación', 1, 90, 3),
  ('Cálculo I', 2, 120, 4),
  ('Introducción a la Historia Universal', 3, 90, 3),
  ('Estructuras de Datos y Algoritmos', 1, 120, 4),
  ('Álgebra Lineal', 2, 120, 4),
  ('Civilización Occidental', 3, 90, 3);

INSERT INTO Docentes (nombre_docente, departamento_id, titulo_academico)
VALUES
  ('Alan Turing', 1, 'Profesor de Ciencias de la Computación'),
  ('Ada Lovelace', 1, 'Profesora Asociada de Ciencias de la Computación'),
  ('Carl Gauss', 2, 'Profesor de Matemáticas'),
  ('Pierre-Simon Laplace', 2, 'Profesor Asociado de Matemáticas'),
  ('Heródoto', 3, 'Profesor de Historia'),
  ('Tucídides', 3, 'Profesor Asociado de Historia');

INSERT INTO Alumnos (nombre_alumno, fecha_nacimiento, direccion, correo_electronico)
VALUES
  ('Alicia Smith', '1998-01-01', 'Calle Principal 123, Ciudad Bonita, CA 12345', 'alicia.smith@email.com'),
  ('Bob Brown', '1999-02-02', 'Calle Olmo 456, Ciudad Bonita, CA 12345', 'bob.brown@email.com'),
  ('Charlie Clark', '2000-03-03', 'Calle Roble 789, Ciudad Bonita, CA 12345', 'charlie.clark@email.com'),
  ('David Davis', '2001-04-04', 'Calle Pino 1011, Ciudad Bonita, CA 12345', 'david.davis@email.com'),
  ('Emily Evans', '2002-05-05', 'Calle Arce 1213, Ciudad Bonita, CA 12345', 'emily.evans@email.com');

INSERT INTO Matriculas (alumno_id, curso_id, fecha_matricula, estado_matricula)
VALUES
  (1, 1, '2023-08-25', 'Activa'),
  (1, 4, '2023-08-25', 'Activa'),
  (2, 2, '2023-08-25', 'Activa'),
  (2, 5, '2023-08-25', 'Activa'),
  (3, 3, '2023-08-25', 'Activa'),
  (3, 6, '2023-08-25', 'Inactiva'),
  (4, 1, '2023-08-25', 'Activa'),
  (4, 4, '2023-08-25', 'Activa'),
  (5, 2, '2023-08-25', 'Activa'),
  (5, 5, '2023-08-25', 'Activa');
