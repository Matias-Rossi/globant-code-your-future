//	Realizar una función que valide si un número es impar o no. Si es impar la función debe
//	devolver un verdadero, si no es impar debe devolver falso. Nota: la función no debe tener
//	mensajes que digan si es par o no, eso debe pasar en el Algoritmo.

Funcion resultado = EsImpar ( num )
	Definir resultado Como Logico
	resultado = num MOD 2 <> 0
	
FinFuncion

/// Proceso principal
Algoritmo ejercicio_2
	// Definiciones
	Definir num Como Entero
	
	// Ingreso del número
	Escribir "Ingrese un número: "
	Leer num
	
	Si EsImpar(num) Entonces
		Escribir "El número ingresado es impar."
	SiNo
		Escribir "El número ingresado es par."
	FinSi
	
FinAlgoritmo
