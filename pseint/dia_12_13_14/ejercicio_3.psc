//	Crea una funci�n EsMultiplo que reciba los dos n�meros pasados por el usuario, validando
//	que el primer n�mero m�ltiplo del segundo y devuelva verdadero si el primer n�mero es
//	m�ltiplo del segundo, sino es m�ltiplo que devuelva falso.

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
	Escribir "Ingrese dos n�meros para corroborar si el primero es m�ltiplo del segundo: "
	Leer multiplo, divisor
	
	// Llamado a la funci�n y salida
	Si EsMultiplo(multiplo, divisor) Entonces
		Escribir multiplo " es m�ltiplo de " divisor
	SiNo
		Escribir multiplo " >NO< es m�ltiplo de " divisor
	FinSi
	
FinAlgoritmo
