//	Realizar una funci�n que calcule la suma de dos n�meros. En el algoritmo principal le
//	pediremos al usuario los dos n�meros para pas�rselos a la funci�n. Despu�s la funci�n
//	calcular� la suma y lo devolver� para imprimirlo en el algoritmo.

Funcion suma = Sumar(num_1, num_2)
	Definir suma Como Real
	suma = num_1 + num_2
FinFuncion


Algoritmo ejercicio_1
	// Definiciones
	Definir num_1, num_2, resultado Como Real
	
	// Ingreso de datos
	Escribir "Ingrese dos n�meros separados por un <ENTER>: "
	Leer num_1, num_2
	
	// Realizaci�n de la suma
	resultado = Sumar(num_1, num_2)
	
	// Salida
	Escribir num_1 " + " num_2 " = " resultado
	
FinAlgoritmo
