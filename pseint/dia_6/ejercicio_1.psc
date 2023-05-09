//	Construir un programa que simule un men� de opciones para realizar las cuatro
//	operaciones aritm�ticas b�sicas (suma, resta, multiplicaci�n y divisi�n) con dos valores
//	num�ricos enteros. El usuario, adem�s, debe especificar la operaci�n con el primer
//	car�cter de la operaci�n que desea realizar: ?S' o ?s? para la suma, ?R? o ?r? para la resta,
//	?M? o ?m? para la multiplicaci�n y ?D? o ?d? para la divisi�n.

Algoritmo ejercicio_1
	// Definici�n
	Definir operacionARealizar Como Caracter
	Definir num1, num2, resultado Como Real
	
	// Entrada de datos
	Escribir "Operaciones disponibles:"
	Escribir "(S)umar"
	Escribir "(R)estar"
	Escribir "(M)ultiplicar"
	Escribir "(D)ividir"
	Escribir "Ingrese la letra correspondiente a la operaci�n a realizar:"
	Leer operacionARealizar
	
	Escribir "Ingrese los dos n�meros a operar, separados por un <ENTER>:"
	Leer num1, num2
	
	// Procesamiento
	Segun Mayusculas(operacionARealizar) Hacer
		'S': resultado = num1 + num2
		'R': resultado = num1 - num2
		'M': resultado = num1 * num2
		'D': resultado = num1 / num2
		De Otro Modo:
			Escribir "Operaci�n inv�lida :C"
	FinSegun
	
	// Salida
	Escribir "El resultado de su operaci�n es: ", resultado
	
FinAlgoritmo
