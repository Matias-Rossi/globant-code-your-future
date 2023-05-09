//	Realizar una funci�n que reciba un numero ingresado por el usuario y averig�e si el n�mero es
//	primo o no. Un n�mero es primo cuando es divisible s�lo por 1 y por s� mismo, por ejemplo: 2,
//	3, 5, 7, 11, 13, 17, etc. Nota: recordar el uso del MOD.

Funcion resultado <- DivideA ( divisor, multiplo )
	Definir resultado Como Logico
	resultado = multiplo MOD divisor == 0
	
FinFuncion


Funcion resultado <- EsPrimo ( num )
	// Definiciones
	Definir i Como Entero
	Definir resultado Como Logico
	resultado = Verdadero
	
	// Iteraci�n: b�squeda de divisores
	Para i=2 Hasta num/2 Con Paso 1 Hacer
		Si DivideA( i, num ) Entonces
			resultado = Falso
		FinSi
		
	FinPara
	
FinFuncion


/// Proceso principal
Algoritmo ejercicio_5
	// Definiciones
	Definir numIngresado Como Entero
	Definir resultado Como Logico
	
	// Ingreso de datos
	Escribir "Ingrese un n�mero para averiguar si es primo: "
	Leer numIngresado
	
	// Evaluaci�n y salida
	Si EsPrimo(numIngresado) Entonces
		Escribir "El n�mero ingresado es primo."
	SiNo
		Escribir "El n�mero ingresado >NO< es primo."
	FinSi
	
FinAlgoritmo
