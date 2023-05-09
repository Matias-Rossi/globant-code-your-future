Algoritmo numero_mayor
	Definir numIngresado, numMayor, i Como Entero
	
	Escribir "Ingrese un número: "
	Leer numMayor
	
	Para i=1 Hasta 4 Hacer
		Escribir "Ingrese un número: "
		Leer numIngresado
		
		Si numIngresado > numMayor Entonces
			numMayor = numIngresado
		FinSi
	FinPara
	
	Escribir "El mayor número es: ", numMayor
FinAlgoritmo
