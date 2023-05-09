//	Se debe realizar un programa que:
//	1�) Pida por teclado un n�mero (entero positivo).
//	2�) Pregunte al usuario si desea introducir o no otro n�mero.
//	3�) Repita los pasos 1o y 2o mientras que el usuario no responda n/N (no).
//	4�) Muestre por pantalla la suma de los n�meros introducidos por el usuario.

Algoritmo ejercicio_4
	// Definiciones
	Definir numIntroducido, suma Como Entero 
	Definir respuestaContinuar Como Caracter
	Definir usuarioDeseaContinuar Como Logico
	suma = 0
	
	// Ingreso de datos y realizaci�n de la suma
	Hacer
		Escribir "Introduzca un n�mero entero positivo: "
		Leer numIntroducido
		suma = suma + numIntroducido
		
		Escribir "�Desea ingresar otro n�mero? (n/N para salir)"
		Leer respuestaContinuar
		
		usuarioDeseaContinuar = Mayusculas(respuestaContinuar) <> "N"
		
	Mientras Que usuarioDeseaContinuar
	
	// Salida
	Escribir "La suma de los n�meros introducidos es ", suma
	
	
FinAlgoritmo
