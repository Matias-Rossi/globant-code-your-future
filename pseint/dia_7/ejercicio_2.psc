//Escriba un programa en el cual se ingrese un valor l�mite positivo, y a continuaci�n
//solicite n�meros al usuario hasta que la suma de los n�meros introducidos supere el
//l�mite inicial.

Algoritmo ejercicio_2
	// Definici�n
	Definir limite Como Entero
	Definir numIntroducido, suma Como Real
	suma = 0
	
	// Ingreso de datos iniciales
	Escribir "Introduzca un l�mite (positivo) para la suma: "
	Leer limite
	
	// Procesamiento
	Mientras suma <= limite Hacer
		Escribir "Ingrese un n�mero: "
		Leer numIntroducido
		
		suma = suma + numIntroducido
	FinMientras
	
	// Salida
	Escribir "La suma total da ", suma
	
FinAlgoritmo
