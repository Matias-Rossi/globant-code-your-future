//	Escribir un programa que lea n�meros enteros hasta teclear 0 (cero). Al finalizar el
//	programa se debe mostrar el m�ximo n�mero ingresado, el m�nimo, y el promedio de
//	todos ellos.

Algoritmo ejercicio_2
	// Definiciones
	Definir numMinimo, numMaximo, contador, suma, numIngresado Como Entero
	Definir promedio Como Real
	Definir ceroIngresado Como Logico
	suma = 0
	contador = 0
	numMaximo = -999
	numMinimo = 999
	
	
	// Ingreso, validaci�n y clasificaci�n
	Hacer
		Escribir "Ingrese un n�mero (o 0 para salir): "
		Leer numIngresado
		
		ceroIngresado = numIngresado == 0
		
		Si No ceroIngresado Entonces
			
			suma = suma + numIngresado
			contador = contador + 1
			
			Si numIngresado < numMinimo Entonces
				numMinimo = numIngresado
				
			FinSi
			
			Si numMaximo < numIngresado Entonces
				numMaximo = numIngresado
				
			FinSi
			
		FinSi
		
	Mientras Que No ceroIngresado
	
	promedio = suma / contador
	
	
	// Salida
	Escribir "N�mero m�ximo: ", numMaximo
	Escribir "N�mero m�nimo: ", numMinimo
	Escribir "Promedio de todos los valores ingresados: ", promedio
	
	
	
	
	
FinAlgoritmo
