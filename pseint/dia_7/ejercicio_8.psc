//	Escribir un programa que calcule cuántos dígitos tiene un número entero positivo sin
//	convertirlo a cadena (pista: se puede hacer dividiendo varias veces entre 10). Nota:
//	investigar la función trunc().

Algoritmo ejercicio_8
	// Definición
	Definir cantDigitos, numeroIngresado  Como Entero
	cantDigitos = 0
	
	// Ingreso de datos
	Escribir "Ingrese un número entero: "
	Leer numeroIngresado
	
	// Procesamiento
	Mientras numeroIngresado > 0 Hacer
		numeroIngresado = trunc(numeroIngresado / 10)
		cantDigitos = cantDigitos + 1
	FinMientras
	
	// Salida
	Escribir "Cantidad dígitos: ", cantDigitos
	
FinAlgoritmo
