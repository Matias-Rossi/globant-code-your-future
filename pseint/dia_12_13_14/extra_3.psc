// 3. Dise�ar una funci�n que permita obtener el m�ximo com�n 
// divisor de dos n�meros mediante el algoritmo de Euclides

// 1 Se divide el n�mero mayor entre el menor.
// 2 Si la divisi�n es exacta, el divisor es el m.c.d.
// 3 Si la divisi�n no es exacta, dividimos el divisor entre el resto obtenido 
// y continuamos de esta forma hasta obtener una divisi�n exacta. El m.c.d. es el �ltimo divisor.

Funcion mcd <- AplicarEuclides ( nSuperior, nInferior)
	// Definiciones
	Definir mcd, resto, divisor, dividendo Como Entero
	dividendo = nSuperior
	divisor = nInferior
	
	Definir cociente Como Real
	
	Definir divisionEsExacta Como Logico
	divisionEsExacta = Falso
	
	// Aplicaci�n del Algoritmo 
	Hacer
		resto = dividendo MOD divisor
		cociente = dividendo / divisor
		
		divisionEsExacta = resto == 0
		
		Si divisionEsExacta Entonces
			mcd = divisor
		SiNo
			dividendo = divisor
			divisor = resto
		FinSi
		
	Mientras Que No(divisionEsExacta)
	
FinFuncion


/// Algoritmo principal
Algoritmo extra_3
	// Definiciones
	Definir num_1, num_2, mcd Como Entero
	
	// Ingreso
	Escribir "Ingrese dos n�meros enteros separados por <ENTER>: "
	Leer num_1, num_2
	
	// Procesamiento
	Si num_1 > num_2 Entonces
		mcd = AplicarEuclides(num_1, num_2)
	SiNo
		mcd = AplicarEuclides(num_1, num_2)
	FinSi
	
	// Salida
	Escribir "m.c.d.(" num_1 ", " num_2 ") = " mcd
	
	
FinAlgoritmo
