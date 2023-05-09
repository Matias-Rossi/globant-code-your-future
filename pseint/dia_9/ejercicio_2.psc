//	Realizar un programa que pida una frase y el programa deberá mostrar la frase con un
//	espacio entre cada letra. La frase se mostrará así: H o l a. Nota: recordar el
//	funcionamiento de la función Subcadena().

Algoritmo ejercicio_2
	// Definición
	Definir fraseIntroducida, fraseEspaciada Como Caracter
	Definir i, longitudFrase Como Entero
	
	// Ingreso de frase
	Escribir "Ingrese una frase: "
	Leer fraseIntroducida
	
	// Separación de caracteres y salida
	longitudFrase = longitud(fraseIntroducida)
	
	Para i=0 Hasta longitudFrase Hacer
		Escribir sin saltar Subcadena(fraseIntroducida, i, i), " "
		
	FinPara
	
FinAlgoritmo
