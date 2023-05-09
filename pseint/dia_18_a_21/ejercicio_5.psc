//	Realizar un programa que rellene un vector de tama�o N, con valores ingresados por el
//	usuario. A continuaci�n, se deber� crear una funci�n que reciba el vector y devuelva el valor
//	m�s grande del vector.

/// Subalgoritmos de uso general
SubProceso SolicitarValoresVector(vector, cantidad)
	Definir i Como Entero
	Para i<-0 Hasta cantidad-1 Hacer		
		Escribir "Ingrese un valor (pos: ", i, "/", cantidad-1, "):"
		Leer vector[i]
	FinPara
FinSubProceso

/// Subalgoritmos del problema
Funcion mayorValor <- BuscarMayorValor(vector, cantidad)
	Definir i Como Entero
	Definir mayorValor Como Real
	mayorValor = vector[0]
	
	Para i<-1 Hasta cantidad-1 Hacer		
		Si vector[i] > mayorValor Entonces
			mayorValor = vector[i]
		FinSi
	FinPara
FinFuncion

/// Algoritmo Principal
Algoritmo ejercicio_5
	Definir vector, tamanio, mayorValor Como Real
	Escribir "Ingrese un tama�o N: "
	Leer tamanio
	Dimension  vector[tamanio]
	
	SolicitarValoresVector(vector, tamanio)
	mayorValor = BuscarMayorValor(vector, tamanio)
	
	Escribir "El mayor valor hayado es ", mayorValor
	
FinAlgoritmo
