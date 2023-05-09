//	Realizar una función que calcule la suma de dos números. En el algoritmo principal le
//	pediremos al usuario los dos números para pasárselos a la función. Después la función
//	calculará la suma y lo devolverá para imprimirlo en el algoritmo.

Funcion suma = Sumar(num_1, num_2)
	Definir suma Como Real
	suma = num_1 + num_2
FinFuncion


Algoritmo ejercicio_1
	// Definiciones
	Definir num_1, num_2, resultado Como Real
	
	// Ingreso de datos
	Escribir "Ingrese dos números separados por un <ENTER>: "
	Leer num_1, num_2
	
	// Realización de la suma
	resultado = Sumar(num_1, num_2)
	
	// Salida
	Escribir num_1 " + " num_2 " = " resultado
	
FinAlgoritmo
