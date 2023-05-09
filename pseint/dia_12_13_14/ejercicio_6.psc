//	Realizar una funci�n que calcule y retorne la suma de todos los divisores del n�mero n
//	distintos de n. El valor de n debe ser ingresado por el usuario.

Funcion resultado <- EsDivisorDe ( divisor, multiplo )
	Definir resultado Como Logico
	resultado = multiplo MOD divisor == 0
FinFuncion


Funcion suma <- SumarDivisores( num )
	// Definiciones
	Definir i, suma Como Entero
	suma = 0
	
	// Iteraci�n: b�squeda y suma de divisores
	Para i=1 Hasta num/2 Con Paso 1 Hacer
		Si EsDivisorDe( i, num ) Entonces
			suma = i + suma
		FinSi
		
	FinPara
	
FinFuncion


/// Algoritmo principal
Algoritmo ejercicio_6
	// Definiciones
	Definir numIngresado, resultado Como Entero
	
	// Ingreso de Datos
	Escribir "Ingrese un n�mero: "
	Leer numIngresado
	
	// Ejecuci�n de la suma
	resultado = SumarDivisores(numIngresado)
	
	// Salida
	Escribir "La suma de los divisores de ", numIngresado, " excluyendo a s� mismo es: ", resultado
	
	
FinAlgoritmo
