//	Calcular las calificaciones de un grupo de alumnos. La nota final de cada alumno se
//	calcula según el siguiente criterio: la parte práctica vale el 10%; la parte de problemas
//	vale el 50% y la parte teórica el 40%. El programa leerá el nombre del alumno, las tres
//	notas obtenidas, mostrará el resultado por pantalla, y a continuación volverá a pedir los
//	datos del siguiente alumno hasta que el nombre sea una cadena vacía. Las notas deben
//	estar comprendidas entre 0 y 10, y si no están dentro de ese rango no se imprimirá el
//	promedio y se mostrará un mensaje de error.

Algoritmo ejercicio_7
	Definir notaPracticaEsValida, notaProblemasEsValida, notaTeoricaEsValida, notasSonValidas Como Logico
	Definir notaPractica, notaProblemas, notaTeorica, notaFinal Como Real
	Definir nombreAlumno Como Caracter
	
	Escribir "Ingrese el nombre del alumno (o nada para salir): "
	Leer nombreAlumno
	
	Mientras nombreAlumno <> "" Hacer
		
		Escribir "Ingrese la nota de la parte práctica: "
		Leer notaPractica
		
		Escribir "Ingrese la nota de la parte de problemas: "
		Leer notaProblemas
		
		Escribir "Ingrese la nota de la parte teórica: "
		Leer notaTeorica
		
		// Validación notas
		notaPracticaEsValida = 0 <= notaPractica Y notaPractica <= 10
		notaProblemasEsValida = 0 <= notaProblemas Y notaProblemas <= 10
		notaTeoricaEsValida = 0 <= notaTeorica Y notaTeorica <= 10
		
		notasSonValidas = notaPracticaEsValida Y notaProblemasEsValida Y notaTeoricaEsValida
		
		// Salida
		Si notasSonValidas Entonces
			notaFinal = ( notaPractica * 10 + notaProblemas * 50 + notaTeorica * 40 ) / 100
			Escribir nombreAlumno, " obtuvo la nota final ", notaFinal
		SiNo
			Escribir "Una o más notas del alumno ", nombreAlumno, " son inválidas"
		FinSi
		
		
		// Re-ingreso de nombre
		Escribir "--------------------------------------------------"
		Escribir "Ingrese el nombre del alumno (o nada para salir): "
		Leer nombreAlumno
		
	FinMientras
	
	
FinAlgoritmo
