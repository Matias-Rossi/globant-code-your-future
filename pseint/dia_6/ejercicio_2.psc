//	Realizar un programa que, dado un número entero, visualice en pantalla si es par o
//	impar. En caso de que el valor ingresado sea 0, se debe mostrar "el número no es par ni
//	impar". Nota: investigar la función mod de PSeInt

Algoritmo ejercicio_2
	// Definición
	Definir numIntroducido Como Entero
	Definir esDivisiblePor2 Como Logico
	
	// Ingreso de datos
	Escribir "Ingrese un número:"
	Leer numIntroducido
	
	// Procesamiento y salida
	Si numIntroducido == 0 Entonces
		Escribir "Usted ingresó 0"
		
	SiNo
		Si esDivisiblePor2 Entonces
			Escribir "El número es par"
		SiNo
			Escribir "El número es impar"
		FinSi
	FinSi
	
FinAlgoritmo
