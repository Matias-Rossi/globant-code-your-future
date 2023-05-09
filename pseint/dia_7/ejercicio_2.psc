//Escriba un programa en el cual se ingrese un valor límite positivo, y a continuación
//solicite números al usuario hasta que la suma de los números introducidos supere el
//límite inicial.

Algoritmo ejercicio_2
	// Definición
	Definir limite Como Entero
	Definir numIntroducido, suma Como Real
	suma = 0
	
	// Ingreso de datos iniciales
	Escribir "Introduzca un límite (positivo) para la suma: "
	Leer limite
	
	// Procesamiento
	Mientras suma <= limite Hacer
		Escribir "Ingrese un número: "
		Leer numIntroducido
		
		suma = suma + numIntroducido
	FinMientras
	
	// Salida
	Escribir "La suma total da ", suma
	
FinAlgoritmo
