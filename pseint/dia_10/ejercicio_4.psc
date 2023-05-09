//	La función factorial se aplica a números enteros positivos. El factorial de un número
//	entero positivo (!n) es igual al producto de los enteros positivos desde 1 hasta n:
//	n! = 1 * 2 * 3 * 4 * 5 * (n-1) * n
//	Escriba un programa que calcule las factoriales de todos los números enteros desde el 1
//	hasta el 5. El programa deberá mostrar la siguiente salida:
//	!1 = 1
//	!2 = 1*2 = 2
//	...
//	!5 = 1*2*3*4*5 = 120

Algoritmo ejercicio_4
	
	// Definiciones
	Definir i, operador, resultado Como Entero
	
	// Cálculo de los factoriales
	Para i=1 Hasta 5 Hacer
		resultado = 1
		Escribir Sin Saltar i, "!"
		
		// Cálculo de factorial en particular
		Para operador = 1 Hasta i Hacer
			resultado = resultado * operador
			
			Si operador == 1 Entonces
				Escribir Sin Saltar " = ", operador
			SiNo
				Si operador == i Entonces
					Escribir Sin Saltar " * ", operador, " = ", resultado
				SiNo
					Escribir Sin Saltar " * ", operador
				FinSi
			FinSi
			
		FinPara
		
		Escribir ""
	FinPara
	
FinAlgoritmo
