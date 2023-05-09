// Solicitar al usuario que ingrese dos n�meros enteros y determinar si ambos son pares o
// impares. Mostrar en pantalla un mensaje que indique "Ambos n�meros son pares"
// siempre y cuando cumplan con la condici�n. En caso contrario se deber� imprimir el
// siguiente mensaje "Los n�meros no son pares, o uno de ellos no es par".

Algoritmo extra_3
	//Definici�n de variables
	Definir num1, num2 Como Entero
	Definir num1EsPar, num2EsPar Como Logico
	
	//Ingreso de datos
	Escribir "Ingrese dos n�meros enteros, separados por <ENTER>: "
	Leer num1, num2
	
	//Procesamiento
	num1EsPar = (num1 MOD 2) == 0
	num2EsPar = (num2 MOD 2) == 0
	
	//Salida
	Si (num1EsPar Y num2EsPar) Entonces
		Escribir "Ambos n�meros son pares."
	SiNo
		Escribir "Los n�meros no son pares, o uno de ellos no es par."
	FinSi
	
FinAlgoritmo
