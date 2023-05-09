//	Realizar un procedimiento que permita realizar la división entre dos números y muestre el
//	cociente y el resto utilizando el método de restas sucesivas.
// 
//	El método de división por restas sucesivas consiste en restar el dividendo con el divisor hasta
//	obtener un resultado menor que el divisor, este resultado es el residuo, y el número de restas
//	realizadas es el cociente. Por ejemplo: 50 / 13:
//		50 - 13 = 37 una resta realizada
//		37 - 13 = 24 dos restas realizadas
//		24 - 13 = 11 tres restas realizadas
//	dado que 11 es menor que 13, entonces: el residuo es 11 y el cociente es 3.

SubProceso DivisionConResto(dividendo, divisor, cociente Por Referencia, resto Por Referencia)
	cociente = 0
	
	Mientras dividendo >= divisor Hacer
		dividendo = dividendo - divisor
		cociente = cociente + 1
	FinMientras
	
	resto = dividendo
	
FinSubProceso



/// Algoritmo principal
Algoritmo ejercicio_3
	// Definiciones
	Definir divisor, dividendo, cociente, resto Como Real
	
	// Ingreso de datos
	Escribir "Ingrese el dividendo y el divisor, separados por un <ENTER>: "
	Leer divisor, dividendo
	
	// Procesamiento
	DivisionConResto(divisor, dividendo, cociente, resto)
	
	// Salida
	Escribir divisor " / " dividendo " = " cociente " con resto " resto
	
FinAlgoritmo
