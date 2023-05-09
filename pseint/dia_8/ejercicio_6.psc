//	Se pide escribir un programa que calcule la suma de los N primeros números pares. Es
//	decir, si ingresamos el número 5 como valor de N, el algoritmo nos debe realizar la suma
//	de los siguientes valores: 2+4+6+8+10.

Algoritmo ejercicio_6
	// Definiciones
	Definir suma, cantPares, paresSumados Como Entero
	suma = 0
	paresSumados = 0
	
	// Ingreso de datos
	Escribir "Ingrese la cantidad de números pares sucesivos a sumar: "
	Leer cantPares
	
	// Procesamiento
	Hacer 
		suma = suma + paresSumados * 2 
		paresSumados = paresSumados + 1
	Mientras Que paresSumados <= cantPares
	
	// Salida
	Escribir "La suma de los primeros ", cantPares, " pares es: ", suma
	
FinAlgoritmo
