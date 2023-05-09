//	Escriba un programa que solicite al usuario n�meros decimales mientras que el usuario
//	escriba n�meros mayores al primero que se ingres�. Por ejemplo: si el usuario ingresa
//	como primer n�mero un 3.1, y luego ingresa un 4, el programa debe solicitar un tercer
//	n�mero. El programa continuar� solicitando valores sucesivamente mientras los valores
//	ingresados sean mayores que 3.1, caso contrario, el programa finaliza.


Algoritmo ejercicio_6
	// Definici�n
	Definir limiteInferior, numIngresado Como Real
	
	// Ingreso de datos y validaci�n
	Escribir "Ingrese el m�nimo: "
	Leer limiteInferior
	
	Escribir "Ingrese un n�mero: "
	Leer numIngresado
	
	Mientras numIngresado > limiteInferior Hacer
		Escribir "Ingrese otro n�mero: "
		Leer numIngresado
	FinMientras
	
	// Salida
	Escribir "Ha ingresado un n�mero menor a ", limiteInferior
	
FinAlgoritmo
