//	Crear una matriz que contenga 3 columnas y la cantidad filas que decida el usuario. Las dos
//	primeras columnas contendrán valores enteros ingresados por el usuario y en la 3 columna se
//	deberá almacenar el resultado de sumar el número de la primera y segunda columna. Mostrar
//	la matriz de la siguiente forma:
//		3 + 5 = 8
//		4 + 3 = 7
//		1 + 4 = 5
//		...

/// Subalgoritmos ya usados



/// Subalgoritmos nuevos
SubProceso llenarDosColumnasConSumaMatriz(matriz, filas)
	Definir i, j, suma, valorLeido Como Entero
	Para i=0 Hasta filas-1
		suma = 0
		Para j=0 Hasta 1
			Escribir "Ingrese un valor para la matriz [",i,",",j,"]"
			Leer valorLeido
			matriz[i, j] = valorLeido
			suma = suma + valorLeido
		FinPara
		matriz[i, 2] = suma
	FinPara
FinSubProceso

SubProceso mostrarMatrizComoSuma(matriz, filas)
	Definir i Como Entero
	Para i=0 Hasta filas-1
		Escribir matriz[i, 0], " + ", matriz[i, 1], " = ", matriz[i, 2]
	FinPara
FinSubProceso

/// Algoritmo principal
Algoritmo extra_5
	Definir matriz, cantFilas Como Entero
	
	Escribir "Introduzca la cantidad de filas que tendrá la matriz: "
	Leer cantFilas
	
	Dimension matriz[cantFilas, 3]
	
	llenarDosColumnasConSumaMatriz(matriz, cantFilas)
	mostrarMatrizComoSuma(matriz, cantFilas)
	
FinAlgoritmo
