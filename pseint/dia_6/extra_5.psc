//	Realice un programa que, dado un año, nos diga si es bisiesto o no. Un año es bisiesto
//	bajo las siguientes condiciones: Un año divisible por 4 es bisiesto y no debe ser divisible
//	por 100. Si un año es divisible por 100 y además es divisible por 400, también resulta
//	bisiesto. Nota: recuerde la función mod de PseInt

Algoritmo extra_5
	// Definición
	Definir anio Como Entero
	Definir anioEsBisiesto Como Logico
	
	// Ingreso de datos
	Escribir "Ingrese un año: "
	Leer anio
	
	// Procesamiento
	anioEsBisiesto = ((anio % 4 == 0) Y (anio % 100 <> 0)) O ((anio % 400 == 0) Y (anio % 100 == 0))
	
	// Salida
	Si anioEsBisiesto Entonces
		Escribir "El año es bisiesto"
	SiNo
		Escribir "El año no es bisiesto"
	FinSi
	
	
FinAlgoritmo
