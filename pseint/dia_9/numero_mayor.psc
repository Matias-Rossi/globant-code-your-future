Algoritmo numero_mayor
	Definir numIngresado, numMayor, i Como Entero
	
	Escribir "Ingrese un n�mero: "
	Leer numMayor
	
	Para i=1 Hasta 4 Hacer
		Escribir "Ingrese un n�mero: "
		Leer numIngresado
		
		Si numIngresado > numMayor Entonces
			numMayor = numIngresado
		FinSi
	FinPara
	
	Escribir "El mayor n�mero es: ", numMayor
FinAlgoritmo
