//	Crear una función que devuelva la diferencia que hay entre el valor más chico de un arreglo y
//	su valor más grande.

/// Subalgoritmos de ejercicios anteriores
SubProceso SolicitarValoresVector(vector, cantidad)
	Definir i Como Entero
	Para i<-0 Hasta cantidad-1 Hacer		
		Escribir "Ingrese un valor (", i+1, "/", cantidad, "):"
		Leer vector[i]
	FinPara
FinSubProceso



/// Subalgoritmos nuevos
Funcion mayor <- ObtenerMayorValor(vector, tamanio)
	Definir i Como Entero
	Definir mayor Como Real
	
	mayor = vector[0]
	Para i=1 Hasta tamanio-1
		Si vector[i] > mayor Entonces
			mayor = vector[i]
		FinSi
	FinPara
FinFuncion

Funcion menor <- ObtenerMenorValor(vector, tamanio)
	Definir i Como Entero
	Definir menor Como Real
	
	menor = vector[0]
	Para i=1 Hasta tamanio-1
		Si vector[i] < menor Entonces
			menor = vector[i]
		FinSi
	FinPara
FinFuncion

Funcion diferencia <- CalcularDiferenciaExtremos(vector, tamanio) 
	Definir mayor, menor, diferencia Como Real
	mayor = ObtenerMayorValor(vector, tamanio)
	menor = ObtenerMenorValor(vector, tamanio)
	
	diferencia = mayor - menor
FinFuncion


/// Algoritmo principal
Algoritmo extra_6
	Definir vector, diferencia Como Entero
	Dimension vector[5]
	
	SolicitarValoresVector(vector, 5)
	diferencia = CalcularDiferenciaExtremos(vector, 5)
	
	Escribir "La diferencia entre el valor más grande y el mas pequeño es ", diferencia
	
	
FinAlgoritmo
