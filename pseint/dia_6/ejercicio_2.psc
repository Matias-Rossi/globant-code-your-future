//	Realizar un programa que, dado un n�mero entero, visualice en pantalla si es par o
//	impar. En caso de que el valor ingresado sea 0, se debe mostrar "el n�mero no es par ni
//	impar". Nota: investigar la funci�n mod de PSeInt

Algoritmo ejercicio_2
	// Definici�n
	Definir numIntroducido Como Entero
	Definir esDivisiblePor2 Como Logico
	
	// Ingreso de datos
	Escribir "Ingrese un n�mero:"
	Leer numIntroducido
	
	// Procesamiento y salida
	Si numIntroducido == 0 Entonces
		Escribir "Usted ingres� 0"
		
	SiNo
		Si esDivisiblePor2 Entonces
			Escribir "El n�mero es par"
		SiNo
			Escribir "El n�mero es impar"
		FinSi
	FinSi
	
FinAlgoritmo
