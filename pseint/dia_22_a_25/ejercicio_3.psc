//	Dada una matriz de orden n * m (donde n y m son valores ingresados por el usuario) realizar
//	un subprograma que llene la matriz de numeros aleatorios. Despues, crearemos otro
//	subprograma que calcule y muestre la suma de los elementos de la matriz. Mostrar la matriz y
//	los resultados por pantalla.

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
Funcion suma <- sumarValoresMatriz(matriz, filas, columnas)
	Definir suma, i, j Como Entero
	suma = 0
	
	Para i=0 Hasta filas-1
		Para j=0 Hasta columnas-1
			suma = suma + matriz[i, j]
		FinPara
	FinPara
FinFuncion



/// Algoritmo principal
Algoritmo ejercicio_3
	Definir matriz, cantFilas, cantColumnas, suma Como Entero
	
	Escribir "Ingrese la cantidad de filas y columnas de la matriz, separados por un <ENTER>: "
	Leer cantFilas, cantColumnas
	
	Dimension matriz[cantFilas, cantColumnas]
	
	llenarAleatoriamenteMatriz(matriz, cantFilas, cantColumnas)
	
	suma = sumarValoresMatriz(matriz, cantFilas, cantColumnas)
	
	mostrarMatriz(matriz, cantFilas, cantColumnas)
	
	Escribir "La suma de los valores de la matriz es: ", suma
	
	
FinAlgoritmo
