//	Hacer un algoritmo para calcular la media de los números pares e impares, sólo se
//	ingresará diez números.

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
		Escribir "Ingrese un número:"
		Leer numIngresado
		
		// Evaluación de paridad
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
	
	Escribir "Promedio de los números pares: ", mediaPares
	Escribir "Promedio de los números impares: ", mediaImpares
	
	
FinAlgoritmo

// Omití variable cantIngresados y uso directamente cantImpares + cantPares