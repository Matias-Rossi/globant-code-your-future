Algoritmo ejercicio_5
	//Definición
	Definir cantMasc, cantFem, total Como Entero
	Definir porcMasc, porcFem Como Real
	
	//Entrada
	Escribir "Ingrese la cantidad de ninios y de ninias, separado por un <ENTER>: "
	Leer cantMasc, cantFem 
	
	//Procesamiento
	total = cantMasc + cantFem
	porcMasc = (cantMasc / total ) * 100
	porcFem = (cantFem / total) * 100
	
	//Salida
	Escribir "El porcentaje de ninios es: ", porcMasc, "%"
	Escribir "El porcentaje de ninias es: ", porcFem, "%"
	
FinAlgoritmo
