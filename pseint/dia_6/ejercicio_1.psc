//	Construir un programa que simule un menú de opciones para realizar las cuatro
//	operaciones aritméticas básicas (suma, resta, multiplicación y división) con dos valores
//	numéricos enteros. El usuario, además, debe especificar la operación con el primer
//	carácter de la operación que desea realizar: ?S' o ?s? para la suma, ?R? o ?r? para la resta,
//	?M? o ?m? para la multiplicación y ?D? o ?d? para la división.

Algoritmo ejercicio_1
	// Definición
	Definir operacionARealizar Como Caracter
	Definir num1, num2, resultado Como Real
	
	// Entrada de datos
	Escribir "Operaciones disponibles:"
	Escribir "(S)umar"
	Escribir "(R)estar"
	Escribir "(M)ultiplicar"
	Escribir "(D)ividir"
	Escribir "Ingrese la letra correspondiente a la operación a realizar:"
	Leer operacionARealizar
	
	Escribir "Ingrese los dos números a operar, separados por un <ENTER>:"
	Leer num1, num2
	
	// Procesamiento
	Segun Mayusculas(operacionARealizar) Hacer
		'S': resultado = num1 + num2
		'R': resultado = num1 - num2
		'M': resultado = num1 * num2
		'D': resultado = num1 / num2
		De Otro Modo:
			Escribir "Operación inválida :C"
	FinSegun
	
	// Salida
	Escribir "El resultado de su operación es: ", resultado
	
FinAlgoritmo
