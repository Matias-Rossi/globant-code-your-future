//	Escriba un programa que lea un n�mero entero (altura) y a partir de �l cree una escalera
//	invertida de asteriscos con esa altura. Por ejemplo, si ingresamos una altura de 5 se
//	deber� mostrar:
//	*****
//	****
//	***
//	**
//	*

Algoritmo ejercicio_3
	// Definiciones
	Definir altura, nivel, i Como Entero
	
	// Ingreso de altura
	Escribir "Ingrese la altura de la escalera: "
	Leer altura
	
	// Impresi�n de la escalera
	Para nivel=altura Hasta 1 Hacer
		
	
		Para i=1 Hasta nivel Hacer
			Escribir Sin Saltar "*"
		FinPara
		
		// Realizar salto al siguiente nivel
		Escribir ""
		
	FinPara
	
	
FinAlgoritmo
