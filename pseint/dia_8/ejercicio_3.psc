//	Realizar un programa que solicite al usuario su c�digo de usuario (un n�mero entero
//	mayor que cero) y su contrase�a num�rica (otro n�mero entero positivo). El programa no
//	le debe permitir continuar hasta que introduzca como c�digo 1024 y como contrase�a
//	4567. El programa finaliza cuando ingresa los datos correctos.

Algoritmo ejercicio_3
	// Definiciones
	Definir codigoIntroducido, codigoUsuario, contraseniaIntroducida, contraseniaUsuario Como Entero
	Definir credencialesSonValidas Como Logico
	codigoUsuario = 1024
	contraseniaUsuario = 4567
	
	// Entrada y validaci�n
	Hacer
		Escribir "1. Ingrese su c�digo de usuario: "
		Leer codigoIntroducido
		Escribir "2. Ingrese su contrasenia num�rica: "
		Leer contraseniaIntroducida
		
		credencialesSonValidas = (codigoIntroducido == codigoUsuario) Y (contraseniaIntroducida == contraseniaUsuario)
		
	Mientras Que (NO credencialesSonValidas)
	
	
FinAlgoritmo
