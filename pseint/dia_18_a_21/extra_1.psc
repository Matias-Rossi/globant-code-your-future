//	Realizar un programa que rellene dos vectores al mismo tiempo, con 5 valores aleatorios y los
//	muestre por pantalla.

/// Algoritmos ya usados
SubProceso ImprimirVector(vector, cantidad)
	Definir i Como Entero
	Para i<-0 Hasta cantidad-1 Hacer
		Escribir Sin Saltar "[", vector[i],"]"
	FinPara
	Escribir ""
FinSubProceso

/// Algoritmos nuevos
SubProceso LlenarAleatoriamente(vector1, vector2)
	Definir i, valorAleatorio Como Entero
	Para i=0 Hasta 4 Hacer
		valorAleatorio = Aleatorio(-100, 100)
		vector1[i] = valorAleatorio
		vector2[i] = valorAleatorio
	FinPara
FinSubProceso


/// Algoritmo principal
Algoritmo extra_1
	Definir vector1, vector2 Como Entero
	Dimension vector1[5], vector2[5]
	
	LlenarAleatoriamente(vector1, vector2)
	
	Escribir "# Vector 1"
	ImprimirVector(vector1, 5)
	
	Escribir "# Vector 2"
	ImprimirVector(vector2, 5)
	
FinAlgoritmo
