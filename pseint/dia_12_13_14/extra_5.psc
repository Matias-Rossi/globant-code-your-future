//5. Realizar un procedimiento que permita obtener la divisi�n entera y el resto de esta utilizando 
//	�nicamente los operadores suma y resta. NOTA: La divisi�n se considera como una sucesi�n de restas. 
//	El algoritmo cuenta cu�ntas veces se puede restar el divisor al dividendo, siendo dicho contador el cociente. 
//	Cuando ya no se pueda restar m�s sin obtener un n�mero positivo, se obtendr� el resto

Funcion cociente <- DivisionEntera( dividendo, divisor )
	Definir cociente Como Entero
	cociente = 0
	
	Mientras dividendo >= divisor Hacer
		dividendo = dividendo - divisor
		cociente = cociente + 1
	FinMientras
	
FinFuncion


Funcion resto <- Modulo( dividendo, divisor ) 
	Definir resto Como Entero
	
	Mientras dividendo >= divisor Hacer
		dividendo = dividendo - divisor
	FinMientras
	
	resto = dividendo
FinFuncion


/// Algoritmo principal
Algoritmo extra_5
	Definir dividendo, divisor, cociente, resto Como Entero
	
	Escribir "Ingrese dividendo y divisor separados por un <ENTER>: "
	Leer dividendo, divisor
	
	cociente = DivisionEntera(dividendo, divisor)
	resto = Modulo(dividendo, divisor)
	
	Escribir "El cociente es: ", cociente
	Escribir "El resto es: ", resto
	
FinAlgoritmo
