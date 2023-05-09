//	Realizar un programa que rellene de números aleatorios una matriz a través de un
//	subprograma y generar otro subprograma que muestre por pantalla la matriz final.

/// Subalgoritmos ya usados
SubProceso mostrarMatriz(matriz, filas, columnas)
	Definir i, j Como Entero
	Para i=0 Hasta filas-1
		Para j=0 Hasta columnas-1
			Escribir Sin Saltar matriz[i, j], "  "
		FinPara
		Escribir ""
	FinPara
FinSubProceso

SubProceso llenarAleatoriamenteMatriz(matriz, filas, columnas)
	Definir i, j Como Entero
	Para i=0 Hasta filas-1
		Para j=0 Hasta columnas-1
			matriz[i, j] = Aleatorio(0,9)
		FinPara
	FinPara
FinSubProceso


/// Subalgoritmos nuevos
// Ninguno


/// Algoritmo principal
Algoritmo extra_1
	Definir matriz, cantFilas, cantColumnas, suma Como Entero
	
	Escribir "Ingrese la cantidad de filas y columnas de la matriz, separados por un <ENTER>: "
	Leer cantFilas, cantColumnas
	
	Dimension matriz[cantFilas, cantColumnas]
	
	llenarAleatoriamenteMatriz(matriz, cantFilas, cantColumnas)
	
	mostrarMatriz(matriz, cantFilas, cantColumnas)
FinAlgoritmo
