-- Escribe una consulta SQL que muestre todos los alumnos matriculados en un curso específico.
SELECT a.id as id_alumno, a.nombre_alumno, a.correo_electronico, c.nombre_curso
FROM Alumnos a
JOIN Matriculas m ON a.id = m.alumno_id
JOIN Cursos c ON m.curso_id = c.id
WHERE c.nombre_curso LIKE '%Álgebra%';
/* WHERE c.nombre_curso = 'curso específico'; */

-- Escribe una consulta SQL que muestre todos los cursos en los que un docente específico está asignado como instructor.
SELECT c.id as id_curso, c.nombre_curso, d.nombre_docente, dep.nombre_departamento
FROM Docentes d
JOIN Departamentos dep ON d.departamento_id = dep.id
JOIN Cursos c ON dep.id = c.departamento_id
WHERE d.nombre_docente LIKE '%Alan%';
/* WHERE d.nombre_docente = 'docente especifico'; */


