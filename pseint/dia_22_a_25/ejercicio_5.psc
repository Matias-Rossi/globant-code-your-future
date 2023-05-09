//	Rellenar una matriz, de 3 x 3, con una palabra de 9 de longitud, pedida por el usuario,
//	encontrando la manera de que la frase se muestre de manera continua en la matriz.

/// Subalgoritmos ya usados
Funcion letra <- ObtenerLetraEnPosicion(frase, pos)
	Definir letra Como Caracter
	letra = SubCadena(frase, pos, pos)
FinFuncion

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
SubProceso cadenaAMatriz(frase, matriz, filas, columnas)
	Definir i, j, posicionLetra Como Entero
	posicionLetra = 0
	
	Para i=0 Hasta filas-1
		Para j=0 Hasta columnas-1
			matriz[i, j] = ObtenerLetraEnPosicion(frase, posicionLetra)
			posicionLetra = posicionLetra + 1
		FinPara
	FinPara
FinSubProceso



/// Algoritmo principal
Algoritmo ejercicio_5
	Definir palabra, matriz Como Cadena
	Dimension matriz[3, 3]
	
	Escribir "Introduzca una palabra de 9 caracteres: "
	Leer palabra
	
	cadenaAMatriz(palabra, matriz, 3, 3)
	mostrarMatriz(matriz, 3, 3)
	
FinAlgoritmo
