//	Una compañía de seguros tiene contratados a n vendedores. Cada vendedor realiza
//	múltiples ventas a la semana. La política de pagos de la compañía es que cada vendedor
//	recibe un sueldo base más un 10% extra por comisiones de sus ventas. El gerente de la
//	compañía desea saber, por un lado, cuánto dinero deberá pagar en la semana a cada
//	vendedor por concepto de comisiones de las ventas realizadas, y por otro lado, cuánto
//	deberá pagar a cada vendedor como sueldo total (sueldo base + comisiones). Para cada
//	vendedor ingresar cuanto es su sueldo base, cuantas ventas realizó y cuanto cobró por
//	cada venta.

Algoritmo ejercicio_1
	// Definiciones
	Definir cantVendedores, cantVentas, i, j Como Entero
	Definir sueldoBase, comisiones, sueldoTotal, montoVenta Como Real
	
	// Ingreso de datos
	Escribir "Ingresar la cantidad de vendedores: "
	Leer cantVendedores
	
	Para i=1 Hasta cantVendedores Hacer
		
		// (Re)inicializo la variable
		comisiones = 0
		
		Escribir " ##### VENDEDOR ", i, " #####"
		Escribir "Ingrese el sueldo base del vendedor: "
		Leer sueldoBase
		Escribir "Ingrese la cantidad de ventas del vendedor: "
		Leer cantVentas
		
		// Iteración por venta
		Para j=1 Hasta cantVentas Hacer
			Escribir "Ingrese el monto de la venta ", j, ": "
			Leer montoVenta
			comisiones = comisiones + montoVenta * 0.1
		FinPara
		
		sueldoTotal = sueldoBase + comisiones
		
		// Salida
		Escribir "---------------------"
		Escribir "Comisiones: $", comisiones
		Escribir "Sueldo total: $", sueldoTotal
		Escribir "---------------------"
		
	FinPara
	
FinAlgoritmo
