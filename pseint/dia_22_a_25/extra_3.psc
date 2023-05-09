//	Realizar un programa que cree una matriz de 5x15 y deberemos llenar la matriz de unos y
//	ceros. Llenando el marco o la delimitación externa de la matriz de unos y la parte interna de
//	ceros.

/// Subalgoritmos ya usados
SubProceso mostrarMatriz(matriz, filas, columnas)
	Definir i, j Como Entero
	Para i=0 Hasta filas-1
		Para j=0 Hasta columnas-1
			Escribir Sin Saltar matriz[i, j]
		FinPara
		Escribir ""
	FinPara
FinSubProceso

SubProceso matrizComoMarcoBinario(matriz, filas, columnas)
	Definir i, j Como Entero
	Definir esMarco Como Logico
	
	Para i=0 Hasta filas-1
		Para j=0 Hasta columnas-1
			esMarco = (i==0) O (i==filas-1) O (j==0) O (j==columnas-1)
			
			Si esMarco Entonces
				matriz[i, j] = 1
			SiNo
				matriz[i, j] = 0
			FinSi
		FinPara
	FinPara
FinSubProceso


/// Subalgoritmos nuevos
// Ninguno


/// Algoritmo principal
Algoritmo extra_3
	Definir matriz Como Entero
	Dimension matriz[5, 15]
	
	matrizComoMarcoBinario(matriz, 5, 15)
	
	mostrarMatriz(matriz, 5, 15)
FinAlgoritmo
