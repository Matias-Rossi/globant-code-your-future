//Hacer un algoritmo que lea un n�mero por el teclado y determine si tiene tres d�gitos.

Algoritmo extra_3
	//Definici�n
	Definir num Como Real
	Definir tieneTresDigitos Como Logico
	
	// Entrada de datos
	Escribir "Ingrese un n�mero: "
	Leer num
	
	// Procesamiento
	tieneTresDigitos = Longitud(ConvertirATexto(num)) == 3
	
	Si tieneTresDigitos Entonces
		Escribir "El n�mero ingresado tiene 3 d�gitos"
	SiNo
		Escribir "El n�mero ingresado no tiene 3 d�gitos"
	FinSi
	
	
	
FinAlgoritmo
