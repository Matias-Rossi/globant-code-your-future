//	Realizar una función que reciba un numero ingresado por el usuario y averigüe si el número es
//	primo o no. Un número es primo cuando es divisible sólo por 1 y por sí mismo, por ejemplo: 2,
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
	
	// Iteración: búsqueda de divisores
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
	Escribir "Ingrese un número para averiguar si es primo: "
	Leer numIngresado
	
	// Evaluación y salida
	Si EsPrimo(numIngresado) Entonces
		Escribir "El número ingresado es primo."
	SiNo
		Escribir "El número ingresado >NO< es primo."
	FinSi
	
FinAlgoritmo
