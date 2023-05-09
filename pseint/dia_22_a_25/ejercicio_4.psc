//	Rellenar en un subproceso una matriz cuadrada con números aleatorios salvo en la diagonal
//	principal, la cual debe rellenarse con ceros. Una vez llena la matriz debe generar otro
//	subproceso para imprimir la matriz.

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


/// Subalgoritmos nuevos
SubProceso llenarAleatoriamenteMatrizConCerosEnDiagonalPrincipal(matriz, filas, columnas)
	Definir i, j Como Entero
	Para i=0 Hasta filas-1
		Para j=0 Hasta columnas-1
			Si i == j Entonces
				matriz[i, j] = 0
			SiNo
				matriz[i, j] = Aleatorio(1,9)
			FinSi
			
		FinPara
	FinPara
FinSubProceso


/// Algoritmo principal
Algoritmo ejercicio_4
	Definir matriz, dimensionMatriz, suma Como Entero
	
	Escribir "Ingrese la cantidad de filas y columnas de la matriz cuardada: "
	Leer dimensionMatriz
	
	Dimension matriz[dimensionMatriz, dimensionMatriz]
	
	llenarAleatoriamenteMatrizConCerosEnDiagonalPrincipal(matriz, dimensionMatriz, dimensionMatriz)
	
	mostrarMatriz(matriz, dimensionMatriz, dimensionMatriz)
	
FinAlgoritmo
