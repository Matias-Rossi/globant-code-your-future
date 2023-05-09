//	Escribir un programa que realice la búsqueda lineal de un número entero 
//	ingresado por el usuario en una matriz de 5x5, llena de números aleatorios  
//	y devuelva por pantalla las coordenadas donde se encuentra el valor, 
//	es decir  en que fila y columna se encuentra. En caso de no encontrar el 
//	valor dentro de la matriz se debe mostrar un mensaje.

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
SubProceso llenarAleatoriamenteMatriz(matriz, filas, columnas)
	Definir i, j Como Entero
	Para i=0 Hasta filas-1
		Para j=0 Hasta columnas-1
			matriz[i, j] = Aleatorio(0,9)
		FinPara
	FinPara
FinSubProceso

Funcion valorFueEncontrado <- buscarValorEnMatriz(matriz, filas, columnas, valorBuscado, filaValor Por Referencia, columnaValor Por Referencia)
	Definir valorFueEncontrado Como Logico
	Definir i, j Como Entero
	valorFueEncontrado = Falso
	i=0
	j=0
	
	Mientras i<filas-1
		Mientras j<columnas-1 Y No(valorFueEncontrado)
			Si valorBuscado == matriz[i, j] Entonces
				valorFueEncontrado = Verdadero
				filaValor = i
				columnaValor = j
			FinSi
			j = j + 1
		FinMientras
		i = i + 1
		j=0
	FinMientras
	
FinFuncion

/// Algoritmo principal
Algoritmo ejercicio_2
	Definir matriz, valorBuscado, filaValor, columnaValor Como Entero
	Definir valorFueEncontrado Como Logico
	
	Dimension matriz[5,5]
	
	llenarAleatoriamenteMatriz(matriz, 5, 5)
	
	Escribir "Ingrese el valor a buscar: "
	Leer valorBuscado
	
	valorFueEncontrado = buscarValorEnMatriz(matriz, 5, 5, valorBuscado, filaValor, columnaValor)
	
	Si valorFueEncontrado Entonces
		Escribir "El valor fue encontrado en las coordenadas (", filaValor, ", ", columnaValor, ")"
	SiNo
		Escribir "El valor introducido no fue encontrado."
	FinSi
	
	mostrarMatriz(matriz, 5, 5)
	
	
FinAlgoritmo