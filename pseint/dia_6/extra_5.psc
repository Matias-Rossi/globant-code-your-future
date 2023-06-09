//	Realice un programa que, dado un a�o, nos diga si es bisiesto o no. Un a�o es bisiesto
//	bajo las siguientes condiciones: Un a�o divisible por 4 es bisiesto y no debe ser divisible
//	por 100. Si un a�o es divisible por 100 y adem�s es divisible por 400, tambi�n resulta
//	bisiesto. Nota: recuerde la funci�n mod de PseInt

Algoritmo extra_5
	// Definici�n
	Definir anio Como Entero
	Definir anioEsBisiesto Como Logico
	
	// Ingreso de datos
	Escribir "Ingrese un a�o: "
	Leer anio
	
	// Procesamiento
	anioEsBisiesto = ((anio % 4 == 0) Y (anio % 100 <> 0)) O ((anio % 400 == 0) Y (anio % 100 == 0))
	
	// Salida
	Si anioEsBisiesto Entonces
		Escribir "El a�o es bisiesto"
	SiNo
		Escribir "El a�o no es bisiesto"
	FinSi
	
	
FinAlgoritmo
