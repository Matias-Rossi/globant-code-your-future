//	Realizar un programa que lea un n�mero entero (tama�o del lado) y a partir de �l cree
//	un cuadrado de asteriscos de ese tama�o. Los asteriscos s�lo se ver�n en el borde del
//	cuadrado, no en el interior. Por ejemplo, si se ingresa el n�mero 4 se debe mostrar:
//		* * * *
//		*     *
//		*     *
//		* * * *
//	Nota: Recordar el uso del escribir sin saltar en PseInt.

Algoritmo ejercicio_2
	// Definiciones
	Definir fila, columna, tamanioLado Como Entero
	
	// Ingreso de datos
	Escribir "Ingrese el tama�o por lado: "
	Leer tamanioLado
	
	// Impresi�n del cuadril�tero
	Para fila=1 Hasta tamanioLado Hacer
		Para columna=1 Hasta tamanioLado Hacer
			
			// �ltima columna de cada fila
			Si columna == tamanioLado Entonces
				Escribir "* "
				
			// Primera o �ltima fila, o primera columna	
			SiNo
				Si columna==1 O fila==tamanioLado O fila==1 Entonces
					Escribir Sin Saltar "* "
					
				SiNo
					Escribir Sin Saltar "  "
				FinSi
			FinSi
			
		FinPara
	FinPara
	
	
FinAlgoritmo
