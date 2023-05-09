//Crea una aplicación que nos pida un día de la semana y que nos diga si es un dia laboral o no.

Algoritmo ejercicio_5
	//Definición
	Definir diaIngresado Como Caracter
	Definir esLaboral Como Logico
	
	//Ingreso de datos
	Escribir "Ingrese un día de la semana sin tildes (ejemplo: sabado):"
	Leer diaIngresado
	
	//Procesamiento
	esLaboral = NO ( diaIngresado == "sabado" O diaIngresado == "domingo" )	
	
	//Salida
	Si esLaboral Entonces
		Escribir "El día ingresado es laboral."
	SiNo
		Escribir "El día ingresado no es laboral."
	FinSi
	
FinAlgoritmo
