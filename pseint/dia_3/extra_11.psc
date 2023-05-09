Algoritmo extra_11
	//Definicion
	Definir parcial1, parcial2, parcial3, promedioParciales, examenFinal, trabajoFinal, promedio Como Real
	
	//Ingreso
	Escribir "Ingrese la nota de los 3 parciales separadas por <ENTER>: "
	Leer parcial1, parcial2, parcial3
	
	Escribir "Ingrese la nota del examen final: "
	Leer examenFinal
	
	Escribir "Ingrese la nota del trabajo final: "
	Leer trabajoFinal
	
	//Procesamiento
	promedioParciales = (parcial1 + parcial2 + parcial3) / 3
	promedio = ( (promedioParciales * 55) + examenFinal * 30 + trabajoFinal * 15 ) / 100
	
	Escribir "La calificación final es: ", promedio
	
FinAlgoritmo
