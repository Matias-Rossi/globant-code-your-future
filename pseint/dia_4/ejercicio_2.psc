//Construir un pseudoc�digo que permita ingresar un n�mero, si el n�mero es mayor de
//500, se debe calcular y mostrar en pantalla el 18% de este.

Algoritmo ejercicio_2
	//Definici�n
	Definir nIngresado Como Numero
	Definir porcentaje Como Real
	
	//Ingreso de datos
	Escribir "Ingrese un n�mero: "
	Leer nIngresado
	
	//Procesamiento y salida
	Si nIngresado > 500 Entonces
		porcentaje = 500 * 0.18
		Escribir "El 18% del n�mero ingresado es " porcentaje
	FinSi
	
FinAlgoritmo
