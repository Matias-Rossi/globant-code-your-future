//Construir un pseudocódigo que permita ingresar un número, si el número es mayor de
//500, se debe calcular y mostrar en pantalla el 18% de este.

Algoritmo ejercicio_2
	//Definición
	Definir nIngresado Como Numero
	Definir porcentaje Como Real
	
	//Ingreso de datos
	Escribir "Ingrese un número: "
	Leer nIngresado
	
	//Procesamiento y salida
	Si nIngresado > 500 Entonces
		porcentaje = 500 * 0.18
		Escribir "El 18% del número ingresado es " porcentaje
	FinSi
	
FinAlgoritmo
