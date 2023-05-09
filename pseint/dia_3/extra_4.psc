Algoritmo extra_4
	Definir segTotales, hor, min, seg Como Entero
	
	Escribir "Ingrese la cantidad total de segundos"
	Leer segTotales
	
	hor =   segTotales % 3600
	min = ( segTotales / 3600 ) % 60
	seg = ( segTotales / (3600*60) ) % 60
	
	Escribir "Horas: " hor
	Escribir "Minutos: " min
	Escribir "Segundos: " seg
	
FinAlgoritmo
