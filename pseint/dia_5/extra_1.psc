//Realizar un programa que pida tres notas y determine si un alumno aprueba o reprueba
//un curso, sabiendo que aprobará el curso si su promedio de tres calificaciones es mayor o
//igual a 70; y reprueba en caso contrario.

Algoritmo extra_1
	//Definición de variables
	Definir nota1, nota2, nota3, promedio Como Entero
	Definir aprueba Como Logico
	
	//Ingreso de datos
	Escribir "Ingrese las 3 notas separadas por <ENTER>:"
	Leer nota1, nota2, nota3
	
	//Procesamiento
	promedio = REDON( (nota1 + nota2 + nota3) / 3 )
	aprueba = promedio >= 70
	
	//Salida
	Si aprueba Entonces
		Escribir "El alumno ha APROBADO con promedio ", promedio
	SiNo
		Escribir "El alumno ha REPROBADO con promedio ", promedio
	FinSi
		
FinAlgoritmo
