Algoritmo ejercicio_5
	//Definición
	Definir num1, num2, aux Como Entero
	
	//Ingreso de datos
	Escribir "Ingrese dos números a intercambiar: "
	Leer num1, num2
	
	//Intercambio
	aux = num1		//Guardo el valor original de num1 en aux
	num1 = num2		//Escribo el valor original de num2 en num1
	num2 = aux		//Escribo el valor de num1 (guardado en aux) en num2
	
	//Salida
	Escribir "num1: ", num1
	Escribir "num2: ", num2
	
FinAlgoritmo
