//	Realizar un programa que calcule la multiplicación de dos matrices de enteros de 3x3.
//	Inicialice las matrices para evitar el ingreso de datos por teclado.

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
			matriz[i, j] = Aleatorio(1,4)
		FinPara
	FinPara
FinSubProceso


/// Subalgoritmos nuevos
Funcion resultado <- SumaProductoFilaPorColumna(matrizA, matrizB, fila, columna, dimensionMatriz)
	Definir resultado, i Como Entero
	resultado = 0
	
	Para i=0 Hasta dimensionMatriz-1
		resultado = resultado + matrizA[fila, i] * matrizB[i, columna]
	FinPara
FinFuncion

SubProceso productoDeMatricesCuadradas(matrizA, matrizB, matrizProducto, dimensionMatriz)
	Definir fila, columna, i, j Como Entero
	Para i=0 Hasta dimensionMatriz-1
		Para j=0 Hasta dimensionMatriz-1
			matrizProducto[i,j] = SumaProductoFilaPorColumna(matrizA, matrizB, i, j, dimensionMatriz)
		FinPara
	FinPara
FinSubProceso


/// Algoritmo principal
Algoritmo extra_4
	Definir matrizA, matrizB, matrizProducto Como Entero
	
	Dimension matrizA[3, 3], matrizB[3, 3], matrizProducto[3, 3]
	
	llenarAleatoriamenteMatriz(matrizA, 3, 3)
	llenarAleatoriamenteMatriz(matrizB, 3, 3)
	productoDeMatricesCuadradas(matrizA, matrizB, matrizProducto, 3)
	
	mostrarMatriz(matrizA, 3, 3)
	Escribir "   x"
	mostrarMatriz(matrizB, 3, 3)
	Escribir "   ="
	mostrarMatriz(matrizProducto, 3, 3)
	
FinAlgoritmo