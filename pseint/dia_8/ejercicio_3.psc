//	Realizar un programa que solicite al usuario su código de usuario (un número entero
//	mayor que cero) y su contraseña numérica (otro número entero positivo). El programa no
//	le debe permitir continuar hasta que introduzca como código 1024 y como contraseña
//	4567. El programa finaliza cuando ingresa los datos correctos.

Algoritmo ejercicio_3
	// Definiciones
	Definir codigoIntroducido, codigoUsuario, contraseniaIntroducida, contraseniaUsuario Como Entero
	Definir credencialesSonValidas Como Logico
	codigoUsuario = 1024
	contraseniaUsuario = 4567
	
	// Entrada y validación
	Hacer
		Escribir "1. Ingrese su código de usuario: "
		Leer codigoIntroducido
		Escribir "2. Ingrese su contrasenia numérica: "
		Leer contraseniaIntroducida
		
		credencialesSonValidas = (codigoIntroducido == codigoUsuario) Y (contraseniaIntroducida == contraseniaUsuario)
		
	Mientras Que (NO credencialesSonValidas)
	
	
FinAlgoritmo
