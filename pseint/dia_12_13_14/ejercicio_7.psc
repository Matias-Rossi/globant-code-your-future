//	Diseñar una función que reciba un numero en forma de cadena y lo devuelva como numero
//	entero. El programa podrá recibir números de hasta 3 dígitos. Nota: no poner números con
//	decimales ni letras. Ejemplo: ingresando "100"(carácter) debe convertirse en 100(entero).

Funcion resultado <- ObtenerDigitoEnPosicion(numCadena, pos)
	// Definiciones
	Definir resultado Como Entero
	Definir digitoCadena Como Caracter
	
	// Obtención del dígito y conversión a número
	digitoCadena = Subcadena(numCadena, pos, pos)
	Segun digitoCadena Hacer
		"0": resultado = 0
		"1": resultado = 1
		"2": resultado = 2
		"3": resultado = 3
		"4": resultado = 4
		"5": resultado = 5
		"6": resultado = 6
		"7": resultado = 7
		"8": resultado = 8
		"9": resultado = 9
	FinSegun
	
FinFuncion


Funcion resultado <- ConvertirCadenaANumero( numCadena )
	// Definiciones
	Definir i, longitudNumero, digito, resultado, productoPosicion Como Entero
	resultado = 0
	longitudNumero = longitud(numCadena) - 1
	
	// Conversión dígito a dígito y suma al total
	Para i=0 Hasta longitudNumero Hacer
		digito = ObtenerDigitoEnPosicion(numCadena, i)
		
		productoPosicion = 10^(longitudNumero-i)
		resultado = resultado + productoPosicion * digito
		
	FinPara	
	
FinFuncion



/// Algoritmo principal
Algoritmo ejercicio_7
	// Definiciones
	Definir numIngresadoCadena Como Cadena
	Definir numConvertido Como Numero
	
	// Ingreso del número
	Escribir "Ingrese un número de hasta 3 dígitos: "
	Leer numIngresadoCadena
	
	// Conversión
	numConvertido = ConvertirCadenaANumero(numIngresadoCadena)
	
	// Salida
	Escribir "El número convertido es: ", numConvertido
	
FinAlgoritmo
