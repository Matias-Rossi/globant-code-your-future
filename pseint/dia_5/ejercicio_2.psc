Algoritmo ejercicio_2
	//Definici�n de variables
	Definir num Como Entero
	Definir esPar Como Logico 
	
	//Ingreso de datos
	Escribir "Ingrese un n�mero: "
	Leer num

	//Procesamiento
	esPar = (num % 2) == 0		//Si el resto de dividir por 2 es 0
	
	//Salida
	Si esPar Entonces
		Escribir "El n�mero ingresado ES par."
	SiNo
		Escribir "El n�mero ingresado NO es par."
	FinSi
	
	
FinAlgoritmo