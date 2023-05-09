//	Realizar una función que permita obtener el término n de la sucesión de Fibonacci. La
//	sucesión de Fibonacci es la sucesión de los siguientes números:
//		1, 1, 2, 3, 5, 8, 13, 21, 34, ...

Funcion imagen <- Fibonacci( nSucesion )
	// Def.
	Definir imagen Como Entero
	
	// Cálculo recursivo
	Si nSucesion <= 2 Entonces
		imagen = 1
	SiNo
		imagen = fibonacci( nSucesion-1 )  + fibonacci( nSucesion-2 )
	FinSi
	
FinFuncion


/// Algoritmo principal
Algoritmo ejercicio_12
	// Def.
	Definir terminoSolicitado Como Entero
	
	// Ingreso del número
	Escribir "Ingrese la sucesión del número a calcular: "
	Leer terminoSolicitado
	
	// Cálculo y salida
	Escribir "fibonacci(", terminoSolicitado, ") = ", Fibonacci(terminoSolicitado)
	
	
FinAlgoritmo
