//	Teniendo en cuenta que la clave es "eureka", escribir un programa que nos pida ingresar
//	una clave. Sólo se cuenta con 3 intentos para acertar, si fallamos los 3 intentos se deberá
//	mostrar un mensaje indicándonos que hemos agotado esos 3 intentos. Si acertamos la
//	clave se deberá mostrar un mensaje que indique que se ha ingresado al sistema
//	correctamente.

Algoritmo ejercicio_1
	
	// Definición
	Definir intentosRestantes Como Entero
	Definir claveIntroducida Como Caracter
	Definir claveEsCorrecta Como Logico
	intentosRestantes = 3
	
	// Ingreso y validación de contraseña
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