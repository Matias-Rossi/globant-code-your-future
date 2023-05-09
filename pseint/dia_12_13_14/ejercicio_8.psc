//	Crear una funci�n llamada "Login", que recibe un nombre de usuario y una contrase�a y que
//	devuelve Verdadero si el nombre de usuario es "usuario1" y si la contrase�a es "asdasd".
//	Adem�s, la funci�n calculara el n�mero de intentos que se ha usado para loguearse, tenemos
//	solo 3 intentos, si nos quedamos sin intentos la funci�n devolver� Falso.

Funcion loginValido <- Login( usuario, contrasenia, intentosRestantes Por Referencia )
	//Definir intentosRestantes Como Entero
	Definir loginValido, usuarioValido, contraseniaValida Como Logico
	
	Si intentosRestantes > 0 Entonces
		usuarioValido = usuario == "usuario1"
		contraseniaValida = contrasenia == "asdasd"
		loginValido = usuarioValido Y contraseniaValida 
		
		Si No(loginValido) Entonces
			intentosRestantes = intentosRestantes - 1
			Escribir "Le quedan ", intentosRestantes, " intentos restantes."
		FinSi
		
	// Sin intentos restantes
	SiNo
		loginValido = Falso
	FinSi
	
FinFuncion


Algoritmo ejercicio_8
	// Definiciones
	Definir usuarioIntroducido, contraseniaIntroducida Como Caracter
	Definir intentosRestantes Como Entero
	Definir validado Como Logico
	intentosRestantes = 3
	
	// Ingreso y validaci�n de credenciales
	Hacer
		Escribir "Ingrese su usuario: "
		Leer usuarioIntroducido
		Escribir "Ingrese su contrasenia: "
		Leer contraseniaIntroducida
		
		validado = Login( usuarioIntroducido, contraseniaIntroducida, intentosRestantes )
		
	Mientras Que intentosRestantes > 0 Y No(validado)
	
	// Salida
	Si validado Entonces
		Escribir "Ustead ha ingresado correctamente."
	SiNo
		Escribir "Ha agotado sus intentos."
	FinSi
	
FinAlgoritmo
