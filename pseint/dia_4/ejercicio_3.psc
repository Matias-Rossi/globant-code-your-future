//Se pide ingresar una letra del alfabeto y mostrar si dicha letra es vocal o consonante.

Algoritmo ejercicio_3
	//Definición
	Definir letra Como Caracter
	Definir esVocal Como Logico
	
	//Ingreso de datos
	Escribir "Ingrese una letra del alfabeto: "
	Leer letra
	
	//Procesamiento
	esVocal = (letra == "a") O (letra == "e") O (letra == "i") O (letra == "o") O (letra == "u")
	
	//Salida
	Si esVocal Entonces
		Escribir "La letra ingresada es vocal."
	SiNo
		Escribir "La letra ingresada es consonante."
	FinSi
	
FinAlgoritmo
