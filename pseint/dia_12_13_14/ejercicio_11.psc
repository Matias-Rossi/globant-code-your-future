//	Realizar una función que reciba un numero ingresado por el usuario y averigüe si el número
//	tiene todos sus dígitos impares (ejemplo: 333, 55, etc.). Para esto vamos a tener que separar el
//	numero en partes (si es un numero de más de un digito) y ver si cada número es par o impar.
//	Nota: recordar el uso de la función Mod y Trunc(). No podemos pasar el numero a cadena para
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
	
	// Iteración por dígito y análisis de paridad
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
	
	// Ingreso de número
	Escribir "Ingrese un número: "
	Leer numIngresado
	
	// Verificación
	sonTodosImpares = VerificarDigitosImpares( numIngresado )
	
	// Salida
	Si sonTodosImpares Entonces
		Escribir "Todos los dígitos que componen al número ingresado son impares."
	SiNo
		Escribir ">NO< todos los dígitos que componen al número ingresado son impares."
	FinSi
	
FinAlgoritmo
