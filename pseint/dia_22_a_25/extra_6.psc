//	Realizar un programa que permita visualizar el resultado del producto de una matriz de
//	enteros de 3x3 por un vector de 3 elementos. Los valores de la matriz y el vector pueden
//	inicializarse evitando así el ingreso de datos por teclado.

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

SubProceso mostrarVector(matriz, tamanio)
	Definir i Como Entero
	Para i=0 Hasta tamanio-1
		Escribir Sin Saltar matriz[i], "  "
	FinPara
	
	Escribir ""
FinSubProceso

SubProceso llenarAleatoriamenteMatriz(matriz, filas, columnas)
	Definir i, j Como Entero
	Para i=0 Hasta filas-1
		Para j=0 Hasta columnas-1
			matriz[i, j] = Aleatorio(1,4)
		FinPara
	FinPara
FinSubProceso

SubProceso llenarAleatoriamenteVector(matriz, tamanio)
	Definir i, j Como Entero
	Para i=0 Hasta tamanio-1
		matriz[i] = Aleatorio(1,4)
	FinPara
FinSubProceso

//Usada en el extra_4
Funcion resultado <- SumaProductoFilaPorColumna(matrizA, vector, fila, dimensionMatriz)
	Definir resultado, i Como Entero
	resultado = 0
	
	Para i=0 Hasta dimensionMatriz-1
		resultado = resultado + matrizA[fila, i] * vector[i]
	FinPara
FinFuncion


/// Subalgoritmos nuevos
SubProceso matriz3x3PorVector(matriz, vector, resultado)
	Definir fila, columna, i Como Entero
	Para i=0 Hasta 2
		resultado[i] = SumaProductoFilaPorColumna(matriz, vector, i, 3)
		
	FinPara
FinSubProceso


/// Algoritmo principal
Algoritmo extra_6
	Definir matriz, vector, resultado Como Entero
	Dimension matriz[3, 3], vector[3], resultado[3]
	
	llenarAleatoriamenteMatriz(matriz, 3, 3)
	llenarAleatoriamenteVector(vector, 3)
	
	matriz3x3PorVector(matriz, vector, resultado)
	
	mostrarMatriz(matriz, 3, 3)
	Escribir "   x"
	mostrarVector(vector, 3)
	Escribir "   ="
	mostrarVector(resultado, 3)
	
	
	
	
	
FinAlgoritmo
