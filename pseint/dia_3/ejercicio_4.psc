Algoritmo ejercicio_4
	//Definición
	Definir precioInicio, precioFin, aumento Como Real
	
	//Entrada
	Escribir "Ingrese el precio del producto al inicio y al fin del año, separados por un <ENTER>: "
	Leer precioInicio, precioFin
	
	//Procesamiento
	aumento = ( (precioFin / precioInicio) - 1) * 100
	
	//Salida
	Escribir "El aumento en el año fue de ", aumento, "%"
	
	
FinAlgoritmo
