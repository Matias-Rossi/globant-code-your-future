Algoritmo grupal
	//
	Definir num, centena, decena, unidad Como Entero
	
	//
	Escribir "Ingrese un número de 3 cifras: "
	Leer num
	
	//
	centena = trunc(num / 100)
	num = num - centena * 100
	
	decena = trunc(num / 10)
	num = num - decena * 10
	
	unidad = num
	
	//
	Escribir "Centena: ", centena
	Escribir "Decena: ", decena
	Escribir "Unidad: ", unidad
	
	
	
FinAlgoritmo
