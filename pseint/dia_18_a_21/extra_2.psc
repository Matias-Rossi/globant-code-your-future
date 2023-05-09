//	Realizar un programa que rellene un vector de tamaño N, con valores ingresados por el
//	usuario y muestre por pantalla el promedio de la suma de todos los valores ingresados.

/// Subalgoritmos ya usados
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


/// Subalgoritmos nuevos
Funcion promedio <- CalcularPromedio(vector, tamanio)
	Definir i Como Entero
	Definir suma, promedio Como Real
	suma=0
	
	Para i<-0 Hasta tamanio-1 Hacer		
		suma = suma + vector[i]
	FinPara
	
	promedio = suma / tamanio
FinFuncion


/// Algoritmo principal
Algoritmo extra_2
	Definir tamanio Como Entero
	Definir vector, promedio Como Real
	
	Escribir "Ingrese un tamaño para el vector: "
	Leer tamanio
	Dimension vector[tamanio]
	
	SolicitarValoresVector(vector, tamanio)
	promedio = CalcularPromedio(vector, tamanio)
	
	Escribir "El promedio de los valores ingresados es: ", promedio	
	
FinAlgoritmo
