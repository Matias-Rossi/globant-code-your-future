//	La empresa "Te llevo a todos lados" est� destinada al alquiler de autos y tiene un sistema
//	de tarifa que consiste en cobrar el alquiler por hora. 
//
//  Si el cliente devuelve el auto dentro
//	de las 2 horas de uso el valor que corresponde pagar es de $400 pesos y la nafta va de
//	regalo. 
//
//  Cuando el cliente regresa a la empresa pasadas las 2 horas, se ingresan la
//	cantidad de litros de nafta gastados y el tiempo transcurrido en horas. Luego, se le cobra
//	40 pesos por litro de nafta gastado, y la hora se fracciona en minutos, cobrando un total
//	de $5,20 el minuto de uso. 
//
//	Realice un programa que permita registrar esa informaci�n y
//	el total a pagar por el cliente.

Algoritmo extra_4
	//Definici�n de variables
	Definir minutosTotalesAlquiler, litrosNaftaGastados Como Entero
	Definir horasAlquiler, importe Como Real
	
	Escribir "Ingrese las horas de alquiler: "
	Leer horasAlquiler
	
	// M�s de 2 horas
	Si horasAlquiler > 2 Entonces
		
		Escribir "Ingrese la cantidad de litros de nafta gastados: "
		Leer litrosNaftaGastados
		
		minutosTotalesAlquiler = REDON(horasAlquiler * 60)
		
		importe = minutosTotalesAlquiler * 5.20 + litrosNaftaGastados * 40
		
	// Menos de 2 horas
	SiNo
		importe = 400
		
	FinSi
	
	//Salida
	Escribir "El importe es de $", importe
	
FinAlgoritmo
