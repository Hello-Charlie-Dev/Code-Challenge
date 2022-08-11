SELECT
	  A.Id_Estudiante
	, B.Nombre
    , B.Apellido_Paterno
    , B.Apellido_Materno
    , AVG(A.Calificacion) Calificacion
FROM Notas A
	LEFT JOIN Estudiantes B ON A.Id_Estudiante = B.Id
	LEFT JOIN Materias C ON A.Id_Materia = C.Id
/*WHERE A.Id_Estudiante = 2*/
GROUP BY A.Id_Estudiante, B.Nombre, B.Apellido_Paterno, B.Apellido_Materno
ORDER BY AVG(A.Calificacion) DESC
LIMIT 10