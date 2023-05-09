//	Realizar una funci�n que permita obtener el t�rmino n de la sucesi�n de Fibonacci. La
//	sucesi�n de Fibonacci es la sucesi�n de los siguientes n�meros:
//		1, 1, 2, 3, 5, 8, 13, 21, 34, ...

Funcion imagen <- Fibonacci( nSucesion )
	// Def.
	Definir imagen Como Entero
	
	// C�lculo recursivo
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
	
	// Ingreso del n�mero
	Escribir "Ingrese la sucesi�n del n�mero a calcular: "
	Leer terminoSolicitado
	
	// C�lculo y salida
	Escribir "fibonacci(", terminoSolicitado, ") = ", Fibonacci(terminoSolicitado)
	
	
FinAlgoritmo
