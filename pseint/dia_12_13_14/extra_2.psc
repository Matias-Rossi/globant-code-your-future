// 2. Implementar una función que permita obtener el valor absoluto de un número y otra 
// que obtenga la raíz cuadrada. Para ello utilice las funciones abs() y rc() de PseInt.

Funcion resultado <- ValorAbsoluto( num )
	Definir resultado Como Real
	resultado = Abs(num)
FinFuncion

Funcion resultado <- RaizCuadrada( num )
	Definir resultado Como Real
	resultado = rc(num)
FinFuncion


Algoritmo extra_2
	Definir numIngresado, numAbs, numRaiz Como Real
	
	Escribir "Ingrese un número: "
	Leer numIngresado
	
	numAbs = ValorAbsoluto( numIngresado )
	numRaiz = RaizCuadrada( numAbs )
	
	Escribir "|", numIngresado, "| = ", numAbs
	Escribir "Raiz Cuadrada de |", numIngresado, "| = ", numRaiz 
FinAlgoritmo
