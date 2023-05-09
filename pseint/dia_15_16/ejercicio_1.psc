// Realizar un procedimiento que permita intercambiar el valor de dos variables de tipo entero.
// La variable A, debe terminar con el valor de la variable B.

SubProceso IntercambiarEnteros(x Por Referencia, z Por Referencia)
	Definir auxiliar Como Entero
	auxiliar = z
	z = x
	x = auxiliar
FinSubProceso



/// Algoritmo principal
Algoritmo ejercicio_1
	Definir a, b Como Entero
	Escribir "Ingrese dos números separados por un <ENTER>: "
	Leer a, b
	
	IntercambiarEnteros(a, b)
	
	Escribir "a = " a
	Escribir "b = " b
	
FinAlgoritmo
