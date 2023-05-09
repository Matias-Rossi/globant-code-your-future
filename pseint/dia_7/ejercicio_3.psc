//	Dada una secuencia de números ingresados por teclado que finaliza con un ?1, por
//	ejemplo: 5,3,0,2,4,4,0,0,2,3,6,0,......,-1; realizar un programa que calcule el promedio de
//	los números ingresados. Suponemos que el usuario no insertará número negativos.

Algoritmo ejercicio_3
	// Definición
	Definir numIngresado, suma, promedio Como Real
	Definir cantValores Como Entero
	suma = 0
	cantValores = 0
	
	// Ingreso de datos
	Escribir "Ingrese un número:"
	Leer numIngresado
	
	Mientras numIngresado <> -1 Hacer
		suma = suma + numIngresado
		cantValores = cantValores + 1
		
		Escribir "Ingrese un número, o (-1) para finalizar:"
		Leer numIngresado
	FinMientras
	
	// Cálculo del promedio
	promedio = suma / cantValores
	
	// Salida
	Escribir "El promedio es ", promedio
	
FinAlgoritmo
