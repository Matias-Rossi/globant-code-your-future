//	Escribir un programa que calcule cu�ntos d�gitos tiene un n�mero entero positivo sin
//	convertirlo a cadena (pista: se puede hacer dividiendo varias veces entre 10). Nota:
//	investigar la funci�n trunc().

Algoritmo ejercicio_8
	// Definici�n
	Definir cantDigitos, numeroIngresado  Como Entero
	cantDigitos = 0
	
	// Ingreso de datos
	Escribir "Ingrese un n�mero entero: "
	Leer numeroIngresado
	
	// Procesamiento
	Mientras numeroIngresado > 0 Hacer
		numeroIngresado = trunc(numeroIngresado / 10)
		cantDigitos = cantDigitos + 1
	FinMientras
	
	// Salida
	Escribir "Cantidad d�gitos: ", cantDigitos
	
FinAlgoritmo
