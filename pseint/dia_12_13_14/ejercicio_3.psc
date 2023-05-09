//	Crea una función EsMultiplo que reciba los dos números pasados por el usuario, validando
//	que el primer número múltiplo del segundo y devuelva verdadero si el primer número es
//	múltiplo del segundo, sino es múltiplo que devuelva falso.

Funcion resultado <- EsMultiplo ( multiplo, divisor )
	Definir resultado Como Logico
	resultado = multiplo MOD divisor == 0
	
FinFuncion

/// Algoritmo principal
Algoritmo ejercicio_3
	// Definiciones
	Definir multiplo, divisor Como Entero
	Definir resultado Como Logico
	
	// Ingreso de datos
	Escribir "Ingrese dos números para corroborar si el primero es múltiplo del segundo: "
	Leer multiplo, divisor
	
	// Llamado a la función y salida
	Si EsMultiplo(multiplo, divisor) Entonces
		Escribir multiplo " es múltiplo de " divisor
	SiNo
		Escribir multiplo " >NO< es múltiplo de " divisor
	FinSi
	
FinAlgoritmo
