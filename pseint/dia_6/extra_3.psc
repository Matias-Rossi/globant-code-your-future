//Hacer un algoritmo que lea un número por el teclado y determine si tiene tres dígitos.

Algoritmo extra_3
	//Definición
	Definir num Como Real
	Definir tieneTresDigitos Como Logico
	
	// Entrada de datos
	Escribir "Ingrese un número: "
	Leer num
	
	// Procesamiento
	tieneTresDigitos = Longitud(ConvertirATexto(num)) == 3
	
	Si tieneTresDigitos Entonces
		Escribir "El número ingresado tiene 3 dígitos"
	SiNo
		Escribir "El número ingresado no tiene 3 dígitos"
	FinSi
	
	
	
FinAlgoritmo
