//	Diseña un programa que guarde una vocal secreta en una variable, debemos pedirle al usuario
//	que intente adivinar la vocal secreta, e intentará tantas veces como sea necesario hasta que la
//	adivine.

Algoritmo ejercicio_vocal_secreta
	//Definición
	Definir vocalSecreta, vocalIntroducida Como Caracter
	Definir vocalAdivinada Como Logico
	
	vocalSecreta = "e"
	vocalAdivinada = Falso
	
	Mientras NO vocalAdivinada Hacer
		Escribir "Intente adivinar la vocal secreta: "
		Leer vocalIntroducida
		
		vocalAdivinada = vocalSecreta == vocalIntroducida
	FinMientras
	
	Escribir "¡Ha adivinado la vocal!"
	
	
	
FinAlgoritmo
