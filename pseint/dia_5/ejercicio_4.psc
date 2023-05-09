//Realizar un programa que pida una frase o palabra y si la frase o palabra es de 4
//caracteres de largo, el programa le concatenara un signo de exclamación al final, y si no
//es de 4 caracteres el programa le concatenara un signo de interrogación al final. El
//programa mostrará después la frase final. Nota: investigar la función Longitud() y
//Concatenar() de PseInt.

Algoritmo ejercicio_4
	//Definición de variables
	Definir frase Como Cadena
	
	//Ingreso de datos
	Escribir "Ingrese una frase:"
	Leer frase
	
	//Procesamiento
	Si Longitud(frase) == 4 Entonces
		frase = Concatenar(frase, "!")
	SiNo
		frase = Concatenar(frase, "?")
	FinSi
	
	//Salida
	Escribir frase
	
FinAlgoritmo