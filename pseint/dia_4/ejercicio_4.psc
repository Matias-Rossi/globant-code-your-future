//Diseñe un algoritmo que lea un número de tres cifras y determine si es o no capicúa.

Algoritmo ejercicio_4
	//Definición
	Definir nIngresado, nInicial, nFinal Como Entero
	Definir esCapicua Como Logico
	
	//Ingreso de datos
	Escribir "Ingrese un número de tres cifras: "
	Leer nIngresado
	
	//Procesamiento
	nInicial = trunc( nIngresado/100 )
	nFinal = nIngresado MOD 10
	
	esCapicua = nInicial == nFinal
	
	//Salida
	Si esCapicua Entonces
		Escribir "El número ES capicúa."
	SiNo
		Escribir "El número NO es capicúa."
	FinSi
	
		
FinAlgoritmo
