//	Realizar una funci�n que valide si un n�mero es impar o no. Si es impar la funci�n debe
//	devolver un verdadero, si no es impar debe devolver falso. Nota: la funci�n no debe tener
//	mensajes que digan si es par o no, eso debe pasar en el Algoritmo.

Funcion resultado = EsImpar ( num )
	Definir resultado Como Logico
	resultado = num MOD 2 <> 0
	
FinFuncion

/// Proceso principal
Algoritmo ejercicio_2
	// Definiciones
	Definir num Como Entero
	
	// Ingreso del n�mero
	Escribir "Ingrese un n�mero: "
	Leer num
	
	Si EsImpar(num) Entonces
		Escribir "El n�mero ingresado es impar."
	SiNo
		Escribir "El n�mero ingresado es par."
	FinSi
	
FinAlgoritmo
