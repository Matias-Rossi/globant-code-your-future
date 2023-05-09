//	Realizar una funci�n que calcule la suma de los d�gitos de un n�mero.
//	Ejemplo: 25 = 2 + 5 = 7

Funcion resultado <- SumarDigitos(num)
	// Definici�n
	Definir i, resultado Como Entero
	Definir numCadena, digitoCadena Como Cadena
	resultado = 0
	numCadena = ConvertirATexto(num)
	
	// Suma d�gito a d�gito
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
	Escribir "Ingrese un n�mero: "
	Leer numIngresado
	
	// Procesamiento
	suma = SumarDigitos(numIngresado)
	
	// Salida
	Escribir "La suma de los d�gitos da: ", suma
	
FinAlgoritmo
