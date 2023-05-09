//	Realizar una funci�n que reciba un numero ingresado por el usuario y averig�e si el n�mero
//	tiene todos sus d�gitos impares (ejemplo: 333, 55, etc.). Para esto vamos a tener que separar el
//	numero en partes (si es un numero de m�s de un digito) y ver si cada n�mero es par o impar.
//	Nota: recordar el uso de la funci�n Mod y Trunc(). No podemos pasar el numero a cadena para
//	realizar el ejercicio.

Funcion impar <- EsImpar( num ) 
	Definir impar Como Logico
	impar = num % 2 <> 0
FinFuncion


Funcion sonTodosImpares <- VerificarDigitosImpares( num )
	// Definiciones
	Definir digito Como Entero
	Definir sonTodosImpares Como Logico
	sonTodosImpares = Verdadero
	
	// Iteraci�n por d�gito y an�lisis de paridad
	Hacer 
		digito = num % 10
		num = trunc(num / 10)
		
		Si No(EsImpar(digito)) Entonces
			sonTodosImpares = Falso
		FinSi
		
	Mientras Que num > 0
	
FinFuncion


/// Algoritmo principal
Algoritmo ejercicio_11
	// Definiciones
	Definir numIngresado Como Entero
	Definir sonTodosImpares Como Logico
	
	// Ingreso de n�mero
	Escribir "Ingrese un n�mero: "
	Leer numIngresado
	
	// Verificaci�n
	sonTodosImpares = VerificarDigitosImpares( numIngresado )
	
	// Salida
	Si sonTodosImpares Entonces
		Escribir "Todos los d�gitos que componen al n�mero ingresado son impares."
	SiNo
		Escribir ">NO< todos los d�gitos que componen al n�mero ingresado son impares."
	FinSi
	
FinAlgoritmo
