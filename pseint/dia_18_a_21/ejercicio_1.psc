//	Realizar un programa que rellene un vector con 5 valores ingresados 
//	por el usuario y los muestre por pantalla.

SubProceso SolicitarValoresVector(vector, cantidad)
	Definir i Como Entero
	Para i<-0 Hasta cantidad-1 Hacer		
		Escribir "Ingrese un valor (", i+1, "/", cantidad, "):"
		Leer vector[i]
	FinPara
FinSubProceso

SubProceso ImprimirVector(vector, cantidad)
	Definir i Como Entero
	Para i<-0 Hasta cantidad-1 Hacer
		Escribir Sin Saltar "[", vector[i],"]"
	FinPara
FinSubProceso

Algoritmo ejercicio_1
	// Definiciones
	Definir vector Como Entero
	Dimension vector[5]
	
	// Entrada
	SolicitarValoresVector(vector, 5)
	
	// Salida
	ImprimirVector(vector, 5)
	Escribir ""

FinAlgoritmo
