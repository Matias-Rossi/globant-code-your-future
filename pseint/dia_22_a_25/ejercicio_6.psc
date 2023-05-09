//	Una matriz mágica es una matriz cuadrada (tiene igual número de filas que de columnas) que
//	tiene como propiedad especial que la suma de las filas, las columnas y las diagonales es igual.
// 	Ejemplo:
//		2  7  6
//		9  5  1
//		4  3  8
//	En la matriz de ejemplo las sumas son siempre 15. Considere el problema de construir un
//	algoritmo que compruebe si una matriz de datos enteros es mágica o no, y en caso de que
//	sea mágica escribir la suma. Además, el programa deberá comprobar que los números
//	introducidos son correctos, es decir, están entre el 1 y el 9. El usuario ingresa el tamaño de la
//	matriz que no debe superar orden igual a 10.

/// Subalgoritmos ya usados
SubProceso llenarMatriz(matriz, filas, columnas)
	Definir i, j Como Entero
	Definir valorIngresadoEsValido Como Logico
	
	Para i=0 Hasta filas-1
		Para j=0 Hasta columnas-1
			Hacer
				Escribir "Ingrese un valor para la matriz [",i,",",j,"]"
				Leer matriz[i, j]
				valorIngresadoEsValido = 1 <= (matriz[i, j]) Y (matriz[i, j] <= 10)
				Si No(valorIngresadoEsValido) Entonces
					Escribir "Los valores deben encontrarse entre 1 y 9"
				FinSi
			Mientras Que No(valorIngresadoEsValido)
			
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


/// Subalgoritmos nuevos
Funcion suma <- sumarDiagonalPrincipal(matriz, dimensionMatriz)
	Definir suma, i Como Entero
	suma = 0
	Para i=0 Hasta dimensionMatriz-1
		suma = suma + matriz[i, i]
	FinPara
FinFuncion

Funcion suma <- sumarDiagonalSecundaria(matriz, columnas)
	Definir suma, i, j Como Entero
	suma = 0
	j = columnas-1
	Para i=0 Hasta columnas-1
		suma = suma + matriz[i, j]
		j = j-1 
	FinPara
FinFuncion

Funcion suma <- sumarFila(matriz, columnas, filaASumar)
	Definir suma, j Como Entero
	suma = 0
	Para j=0 Hasta columnas-1
		suma = suma + matriz[filaASumar, j]
	FinPara
FinFuncion

Funcion suma <- sumarColumnaPrincipal(matriz, columnas, columnaASumar)
	Definir suma, i Como Entero
	suma = 0
	Para i=0 Hasta columnas-1
		suma = suma + matriz[i, columnaASumar]
	FinPara
FinFuncion

Funcion esMatrizMagica <- esMagica(matriz, dimensionMatriz)
	Definir esMatrizMagica Como Logico
	Definir valorSuma Como Entero
	Definir i, j Como Entero
	valorSuma = sumarDiagonalPrincipal(matriz, dimensionMatriz)
	esMatrizMagica = Verdadero
	
	Para i=0 Hasta dimensionMatriz-1
		Si sumarFila(matriz, dimensionMatriz, i) <> valorSuma
			esMatrizMagica = Falso
		FinSi
		Si sumarColumnaPrincipal(matriz, dimensionMatriz, i) <> valorSuma
			esMatrizMagica = Falso
		FinSi
		
	FinPara
	
	Si sumarDiagonalSecundaria(matriz, dimensionMatriz) <> valorSuma
		esMatrizMagica = Falso
	FinSi
	
FinFuncion

/// Algoritmo principal
Algoritmo ejercicio_6
	Definir matriz, dimensionMatriz Como Entero
	Definir dimensionValida Como Logico
	
	Hacer
		Escribir "Ingrese la cantidad de filas y columnas de la matriz cuardada: "
		Leer dimensionMatriz
		dimensionValida = 0 < dimensionMatriz Y dimensionMatriz < 10
		Si No(dimensionValida) Entonces
			Escribir "La dimensión debe ser un número entre 1 y 9"
		FinSi
	Mientras Que No(dimensionValida)
	
	
	Dimension matriz[dimensionMatriz, dimensionMatriz]
	
	llenarMatriz(matriz, dimensionMatriz, dimensionMatriz)
	
	mostrarMatriz(matriz, dimensionMatriz, dimensionMatriz)
	
	Si esMagica(matriz, dimensionMatriz) Entonces
		Escribir "La matriz introducida es mágica. La suma da " sumarDiagonalPrincipal(matriz, dimensionMatriz)
	SiNo
		Escribir "La matriz introducida no es mágica."
	FinSi
FinAlgoritmo
