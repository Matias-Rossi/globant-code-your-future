// 1. Implementar una función que permita obtener un número entero aleatorio 
// comprendido entre dos límites que introduciremos por teclado. 
// El número obtenido se debe mostrar por pantalla. 

Funcion num <- ObtenerAleatorioEntre( limInferior, limSuperior )
	Definir num Como Entero
	num = Aleatorio(limInferior, limSuperior)
FinFuncion



Algoritmo extra_1
	Definir limInferior, limSuperior, numAleatorio Como Entero
	
	Escribir "Ingrese el límite inferior y el límite superior, separados por un <ENTER>:"
	Leer limInferior, limSuperior
	
	numAleatorio = ObtenerAleatorioEntre( limInferior, limSuperior )
	
	Escribir "El número aleatorio es: ", numAleatorio
	
FinAlgoritmo
