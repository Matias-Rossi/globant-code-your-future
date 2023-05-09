//	Si se compran menos de cinco llantas el precio es de $3000 cada una, si se compran
//	entre 5 y 10 el precio es de $2500, y si se compran más de 10 el precio es $2000.
//	Obtener la cantidad de dinero que una persona tiene que pagar por cada una de las
//	llantas que compra, y el monto total que tiene que pagar por el total de la compra.

Algoritmo extra_4
	Definir cantLlantas Como Entero
	Definir importeTotal, importePorLlanta Como Real
	
	Escribir "Ingrese la cantidad de llantas a comprar: "
	Leer cantLlantas
	
	Si cantLlantas < 5 Entonces
		importePorLlanta = 3000
	SiNo
		Si cantLlantas <= 10 Entonces
			importePorLlanta = 2500
		SiNo
			importePorLlanta = 2000
		FinSi
	FinSi
	
	Escribir "Importe por llanta: $", importePorLlanta
	Escribir "Importe total: $", importeTotal
	
FinAlgoritmo
