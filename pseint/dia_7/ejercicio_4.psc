//	Escriba un programa en el cual se ingrese un número y mientras ese número sea mayor
//	de 10, se pedirá el número de nuevo.

Algoritmo ejercicio_4
	// Definición
	Definir numIngresado Como Real
	
	// Ingreso y validación de datos
	Escribir "Ingrese un número: "
	Leer numIngresado
	
	Mientras numIngresado > 10 Hacer
		Escribir "Ingrese nuevamente un número: "
		Leer numIngresado
	FinMientras
	
	// Salida
	Escribir "Usted a ingresado un número menor a 10."
	
FinAlgoritmo
