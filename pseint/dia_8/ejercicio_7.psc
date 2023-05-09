//	Programar un juego donde la computadora elige un n�mero al azar entre 1 y 10, y a
//	continuaci�n el jugador tiene que adivinarlo. La estructura del programa es la siguiente:
//	1�) El programa elige al azar un n�mero n entre 1 y 10.
//	2�) El usuario ingresa un n�mero x.
//	3�) Si x no es el n�mero exacto, el programa indica si n es m�s grande o m�s peque�o
//	que el n�mero ingresado.
//	4�) Repetimos desde 2) hasta que x sea igual a n.
//	El programa tiene que imprimir los mensajes adecuados para informarle al usuario qu�
//	hacer y qu� pas� hasta que adivine el n�mero.

Algoritmo ejercicio_7
	// Definiciones
	Definir numAleatorio, numIntroducido Como Entero
	numAleatorio = Aleatorio(1, 10)
	
	// Ingreso y evaluaci�n del n�mero
	Hacer 
		Escribir "Ingrese un n�mero: "
		Leer numIntroducido
		
		Si numIntroducido < numAleatorio Entonces
			Escribir "El n�mero a adivinar es m�s grande."
		SiNo
			Si numAleatorio < numIntroducido Entonces
				Escribir "El n�mero a adivinar es m�s chico."
			SiNo
				Escribir "�Ha adivinado el n�mero!"
			FinSi
		FinSi
		
	Mientras Que numIntroducido <> numAleatorio
	
FinAlgoritmo
