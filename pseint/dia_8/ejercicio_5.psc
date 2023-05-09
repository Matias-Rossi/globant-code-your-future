//	Hacer un algoritmo para calcular la media de los n�meros pares e impares, s�lo se
//	ingresar� diez n�meros.

Algoritmo ejercicio_5
	// Definiciones
	Definir numIngresado, cantPares, cantImpares, sumaPares, sumaImpares Como Entero
	Definir mediaPares, mediaImpares Como Real
	cantPares = 0
	cantImpares = 0
	sumaPares = 0
	sumaImpares = 0
	
	// Ingreso de datos
	Hacer
		Escribir "Ingrese un n�mero:"
		Leer numIngresado
		
		// Evaluaci�n de paridad
		Si numIngresado MOD 2 == 0
			sumaPares = sumaPares + numIngresado
			cantPares = cantPares + 1
		SiNo
			sumaImpares = sumaImpares + numIngresado
			cantImpares = cantImpares + 1
		FinSi
		
	Mientras Que (cantImpares + cantPares) < 10
	
	// Salida
	mediaPares = sumaPares / cantPares
	mediaImpares = sumaImpares / cantImpares
	
	Escribir "Promedio de los n�meros pares: ", mediaPares
	Escribir "Promedio de los n�meros impares: ", mediaImpares
	
	
FinAlgoritmo

// Omit� variable cantIngresados y uso directamente cantImpares + cantPares