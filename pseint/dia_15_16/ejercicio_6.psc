//	Realizar un subproceso que reciba una letra y muestre un mensaje si esa letra esta entre las
//	letras "M" y "T". Recordar que Pseint le da un valor num�rico a cada letra a trav�s del C�digo
//	Ascii, lo que nos deja usar operadores relacionales con letras y cadenas.

Funcion verdad <- EstaEntreMyT(letra)
	Definir verdad Como Logico
	letra = Mayusculas(letra)
	verdad = ("M" <= letra) Y (letra <= "T")
	
FinFuncion


/// Algoritmo principal
Algoritmo ejercicio_6
	Definir letra Como Caracter
	
	Escribir "Ingrese una letra: "
	Leer letra
	
	Si EstaEntreMyT(letra) Entonces
		Escribir "La letra ingresada est� entre M y T"
	SiNo
		Escribir "La letra ingresada >NO< est� entre M y T"
	FinSi
	
FinAlgoritmo
