//	Crear un procedimiento que calcule la temperatura media de un día a partir de la temperatura
//	máxima y mínima. 
//	Crear un programa principal, que, utilizando un procedimiento, vaya
//	pidiendo la temperatura máxima y mínima de n días y vaya mostrando la media de cada día. El
//	programa pedirá el número de días que se van a introducir.

Funcion promedio <- CalcularPromedio(a, b)
	Definir promedio Como Real
	promedio = (a + b) / 2
FinFuncion



/// Algoritmo principal
Algoritmo ejercicio_2
	Definir tMin, tMax, tPromedio Como Real
	Definir cantDias, i Como Entero
	
	Escribir "Ingrese la cantidad de días a introducir: "
	Leer cantDias
	
	Para i=1 Hasta cantDias Hacer
		Escribir "Ingrese la temperatura mínima y máxima separadas por un <ENTER> para el día " i ": "
		Leer tMin, tMax
		
		tPromedio = CalcularPromedio(tMin, tMax)
		
		Escribir "La temperatura promedio del día fue de " tPromedio "°C" 
	FinPara
	
	
FinAlgoritmo
