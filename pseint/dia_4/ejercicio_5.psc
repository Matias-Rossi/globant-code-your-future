//Crea una aplicaci�n que nos pida un d�a de la semana y que nos diga si es un dia laboral o no.

Algoritmo ejercicio_5
	//Definici�n
	Definir diaIngresado Como Caracter
	Definir esLaboral Como Logico
	
	//Ingreso de datos
	Escribir "Ingrese un d�a de la semana sin tildes (ejemplo: sabado):"
	Leer diaIngresado
	
	//Procesamiento
	esLaboral = NO ( diaIngresado == "sabado" O diaIngresado == "domingo" )	
	
	//Salida
	Si esLaboral Entonces
		Escribir "El d�a ingresado es laboral."
	SiNo
		Escribir "El d�a ingresado no es laboral."
	FinSi
	
FinAlgoritmo
