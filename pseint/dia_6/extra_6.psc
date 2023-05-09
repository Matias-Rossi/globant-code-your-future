Algoritmo extra_6
	// Definición
	Definir kilosManzanas, importe, descuento Como Real
	
	// Ingreso de datos
	Escribir "Ingrese la cantidad de manzanas compradas: "
	Leer kilosManzanas
	
	Escribir "Ingrese el importe actual: "
	Leer importe
	
	// Procesamiento
	Si kilosManzanas <= 2 Entonces
		descuento = 0
	SiNo
		Si kilosManzanas <= 5 Entonces
			descuento = 10
		SiNo
			Si kilosManzanas <= 10 Entonces
				descuento = 15
			SiNo
				descuento = 20
			FinSi
		FinSi
	FinSi
	
	//FALTAN DATOS
	
	// Salida
	
FinAlgoritmo
