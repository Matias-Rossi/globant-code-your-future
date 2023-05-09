Algoritmo ejercicio_2
	//Definición de variables
	Definir num Como Entero
	Definir esPar Como Logico 
	
	//Ingreso de datos
	Escribir "Ingrese un número: "
	Leer num

	//Procesamiento
	esPar = (num % 2) == 0		//Si el resto de dividir por 2 es 0
	
	//Salida
	Si esPar Entonces
		Escribir "El número ingresado ES par."
	SiNo
		Escribir "El número ingresado NO es par."
	FinSi
	
	
FinAlgoritmo