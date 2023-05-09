//	Teniendo en cuenta que la clave es "eureka", escribir un programa que nos pida ingresar
//	una clave. S�lo se cuenta con 3 intentos para acertar, si fallamos los 3 intentos se deber�
//	mostrar un mensaje indic�ndonos que hemos agotado esos 3 intentos. Si acertamos la
//	clave se deber� mostrar un mensaje que indique que se ha ingresado al sistema
//	correctamente.

Algoritmo ejercicio_1
	
	// Definici�n
	Definir intentosRestantes Como Entero
	Definir claveIntroducida Como Caracter
	Definir claveEsCorrecta Como Logico
	intentosRestantes = 3
	
	// Ingreso y validaci�n de contrase�a
	Hacer
		Escribir "Introduzca la clave (", intentosRestantes, " intentos restantes)"
		Leer claveIntroducida
		
		claveEsCorrecta = claveIntroducida == "eureka"
		intentosRestantes = intentosRestantes - 1
		
	Mientras Que (NO claveEsCorrecta) Y (intentosRestantes > 0)
	
	// Salida
	Si claveEsCorrecta Entonces
		Escribir "Ha ingresado al sistema correctamente"
	SiNo
		Escribir "Ha agotado los 3 intentos"
	FinSi
	
FinAlgoritmo