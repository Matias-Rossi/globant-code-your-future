//	Escriba un programa en el cual se ingrese un n�mero y mientras ese n�mero sea mayor
//	de 10, se pedir� el n�mero de nuevo.

Algoritmo ejercicio_4
	// Definici�n
	Definir numIngresado Como Real
	
	// Ingreso y validaci�n de datos
	Escribir "Ingrese un n�mero: "
	Leer numIngresado
	
	Mientras numIngresado > 10 Hacer
		Escribir "Ingrese nuevamente un n�mero: "
		Leer numIngresado
	FinMientras
	
	// Salida
	Escribir "Usted a ingresado un n�mero menor a 10."
	
FinAlgoritmo
