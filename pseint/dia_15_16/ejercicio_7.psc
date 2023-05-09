//	Crear un programa que dibuje una escalera de números, donde cada línea de números
//	comience en uno y termine en el número de la línea. Solicitar la altura de la escalera al usuario
//	al comenzar. Ejemplo: si se ingresa el número 3:
//		1
//		12
//		123

SubProceso ImprimirSecuenciaHasta( num )
	Definir i Como Entero
	
	Para i=1 Hasta num Hacer
		Escribir Sin Saltar i
	FinPara
	
FinSubProceso



SubProceso DibujarEscalera(altura)
	Definir nivel, i Como Entero
	Definir num Como Entero
	
	Para nivel=1 Hasta altura
		ImprimirSecuenciaHasta(nivel)
		
		// Salto de línea
		Escribir ""
		
	FinPara

	
FinSubProceso



Algoritmo ejercicio_7
	Definir altura Como Entero
	
	Escribir "Ingrese la altura de la escalera: "
	Leer altura
	
	DibujarEscalera(altura)
	
FinAlgoritmo
