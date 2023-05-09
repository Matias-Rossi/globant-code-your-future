//	Realizar un programa que lea un número entero (tamaño del lado) y a partir de él cree
//	un cuadrado de asteriscos de ese tamaño. Los asteriscos sólo se verán en el borde del
//	cuadrado, no en el interior. Por ejemplo, si se ingresa el número 4 se debe mostrar:
//		* * * *
//		*     *
//		*     *
//		* * * *
//	Nota: Recordar el uso del escribir sin saltar en PseInt.

Algoritmo ejercicio_2
	// Definiciones
	Definir fila, columna, tamanioLado Como Entero
	
	// Ingreso de datos
	Escribir "Ingrese el tamaño por lado: "
	Leer tamanioLado
	
	// Impresión del cuadrilátero
	Para fila=1 Hasta tamanioLado Hacer
		Para columna=1 Hasta tamanioLado Hacer
			
			// Última columna de cada fila
			Si columna == tamanioLado Entonces
				Escribir "* "
				
			// Primera o última fila, o primera columna	
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
