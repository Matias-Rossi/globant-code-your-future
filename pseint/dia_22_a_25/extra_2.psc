//	Crear una matriz de orden n * m (donde n y m son valores ingresados por el 
//	usuario), llenarla con números aleatorios entre 1 y 100 y mostrar su traspuesta.

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
			matriz[i, j] = Aleatorio(1,100)
		FinPara
	FinPara
FinSubProceso


/// Subalgoritmos nuevos
SubProceso trasponerMatriz(matrizOrigen, filas, columnas, matrizTraspuesta)
	Definir i, j Como Entero
	Para i=0 Hasta filas-1
		Para j=0 Hasta columnas-1
			matrizTraspuesta[j, i] = matrizOrigen[i, j]
		FinPara
	FinPara
FinSubProceso


/// Algoritmo principal
Algoritmo extra_1
	Definir matrizOriginal, cantFilas, cantColumnas, matrizTraspuesta Como Entero
	
	Escribir "Ingrese la cantidad de filas y columnas de la matriz, separados por un <ENTER>: "
	Leer cantFilas, cantColumnas
	
	Dimension matrizOriginal[cantFilas, cantColumnas], matrizTraspuesta[cantColumnas, cantFilas]
	
	llenarAleatoriamenteMatriz(matrizOriginal, cantFilas, cantColumnas)
	
	Escribir "Matriz original: "
	mostrarMatriz(matrizOriginal, cantFilas, cantColumnas)
	
	trasponerMatriz(matrizOriginal, cantFilas, cantColumnas, matrizTraspuesta)
	
	Escribir "##################################"
	Escribir "Matriz traspuesta: "
	mostrarMatriz(matrizTraspuesta, cantFilas, cantColumnas)
FinAlgoritmo
