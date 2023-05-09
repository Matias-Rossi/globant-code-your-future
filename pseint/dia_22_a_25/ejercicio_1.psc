//	Realizar un programa que rellene una matriz de 3x3 con 
// 9 valores ingresados por el usuario y los muestre por pantalla.

/// Subalgoritmos 
SubProceso llenarMatriz(matriz, filas, columnas)
	Definir i, j Como Entero
	Para i=0 Hasta filas-1
		Para j=0 Hasta columnas-1
			Escribir "Ingrese un valor para la matriz [",i,",",j,"]"
			Leer matriz[i, j]
		FinPara
	FinPara
FinSubProceso

SubProceso mostrarMatriz(matriz, filas, columnas)
	Definir i, j Como Entero
	Para i=0 Hasta filas-1
		Para j=0 Hasta columnas-1
			Escribir Sin Saltar matriz[i, j], "  "
		FinPara
		Escribir ""
	FinPara
FinSubProceso

/// Algoritmo principal
Algoritmo ejercicio_1
	Definir matriz Como Entero
	
	Dimension matriz[3,3]
	
	llenarMatriz(matriz, 3, 3)
	
	mostrarMatriz(matriz, 3, 3)
	
	
FinAlgoritmo
