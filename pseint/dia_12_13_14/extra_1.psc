// 1. Implementar una funci�n que permita obtener un n�mero entero aleatorio 
// comprendido entre dos l�mites que introduciremos por teclado. 
// El n�mero obtenido se debe mostrar por pantalla. 

Funcion num <- ObtenerAleatorioEntre( limInferior, limSuperior )
	Definir num Como Entero
	num = Aleatorio(limInferior, limSuperior)
FinFuncion



Algoritmo extra_1
	Definir limInferior, limSuperior, numAleatorio Como Entero
	
	Escribir "Ingrese el l�mite inferior y el l�mite superior, separados por un <ENTER>:"
	Leer limInferior, limSuperior
	
	numAleatorio = ObtenerAleatorioEntre( limInferior, limSuperior )
	
	Escribir "El n�mero aleatorio es: ", numAleatorio
	
FinAlgoritmo
