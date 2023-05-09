//	Crear un procedimiento que calcule la temperatura media de un d�a a partir de la temperatura
//	m�xima y m�nima. 
//	Crear un programa principal, que, utilizando un procedimiento, vaya
//	pidiendo la temperatura m�xima y m�nima de n d�as y vaya mostrando la media de cada d�a. El
//	programa pedir� el n�mero de d�as que se van a introducir.

Funcion promedio <- CalcularPromedio(a, b)
	Definir promedio Como Real
	promedio = (a + b) / 2
FinFuncion



/// Algoritmo principal
Algoritmo ejercicio_2
	Definir tMin, tMax, tPromedio Como Real
	Definir cantDias, i Como Entero
	
	Escribir "Ingrese la cantidad de d�as a introducir: "
	Leer cantDias
	
	Para i=1 Hasta cantDias Hacer
		Escribir "Ingrese la temperatura m�nima y m�xima separadas por un <ENTER> para el d�a " i ": "
		Leer tMin, tMax
		
		tPromedio = CalcularPromedio(tMin, tMax)
		
		Escribir "La temperatura promedio del d�a fue de " tPromedio "�C" 
	FinPara
	
	
FinAlgoritmo
