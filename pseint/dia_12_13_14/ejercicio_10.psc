//	Realizar una función que calcule la suma de los dígitos de un número.
//	Ejemplo: 25 = 2 + 5 = 7

Funcion resultado <- SumarDigitos(num)
	// Definición
	Definir i, resultado Como Entero
	Definir numCadena, digitoCadena Como Cadena
	resultado = 0
	numCadena = ConvertirATexto(num)
	
	// Suma dígito a dígito
	Para i=0 Hasta Longitud(numCadena) Hacer
		digitoCadena = Subcadena(numCadena, i, i)
		resultado = resultado + ConvertirANumero(digitoCadena)
	FinPara
	
FinFuncion


/// Algoritmo principal
Algoritmo ejercicio_10
	// Definiciones
	Definir numIngresado, suma Como Entero
	
	// Ingreso de datos
	Escribir "Ingrese un número: "
	Leer numIngresado
	
	// Procesamiento
	suma = SumarDigitos(numIngresado)
	
	// Salida
	Escribir "La suma de los dígitos da: ", suma
	
FinAlgoritmo
