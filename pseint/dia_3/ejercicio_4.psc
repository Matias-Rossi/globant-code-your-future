Algoritmo ejercicio_4
	//Definici�n
	Definir precioInicio, precioFin, aumento Como Real
	
	//Entrada
	Escribir "Ingrese el precio del producto al inicio y al fin del a�o, separados por un <ENTER>: "
	Leer precioInicio, precioFin
	
	//Procesamiento
	aumento = ( (precioFin / precioInicio) - 1) * 100
	
	//Salida
	Escribir "El aumento en el a�o fue de ", aumento, "%"
	
	
FinAlgoritmo
