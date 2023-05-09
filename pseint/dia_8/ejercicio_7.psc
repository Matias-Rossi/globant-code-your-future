//	Programar un juego donde la computadora elige un número al azar entre 1 y 10, y a
//	continuación el jugador tiene que adivinarlo. La estructura del programa es la siguiente:
//	1°) El programa elige al azar un número n entre 1 y 10.
//	2°) El usuario ingresa un número x.
//	3°) Si x no es el número exacto, el programa indica si n es más grande o más pequeño
//	que el número ingresado.
//	4°) Repetimos desde 2) hasta que x sea igual a n.
//	El programa tiene que imprimir los mensajes adecuados para informarle al usuario qué
//	hacer y qué pasó hasta que adivine el número.

Algoritmo ejercicio_7
	// Definiciones
	Definir numAleatorio, numIntroducido Como Entero
	numAleatorio = Aleatorio(1, 10)
	
	// Ingreso y evaluación del número
	Hacer 
		Escribir "Ingrese un número: "
		Leer numIntroducido
		
		Si numIntroducido < numAleatorio Entonces
			Escribir "El número a adivinar es más grande."
		SiNo
			Si numAleatorio < numIntroducido Entonces
				Escribir "El número a adivinar es más chico."
			SiNo
				Escribir "¡Ha adivinado el número!"
			FinSi
		FinSi
		
	Mientras Que numIntroducido <> numAleatorio
	
FinAlgoritmo
