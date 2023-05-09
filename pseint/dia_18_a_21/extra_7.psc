//	Programe una función que calcule el producto de un arreglo de números enteros. Para esto
//	imagine, por ejemplo, que para un vector V de tamaño 4, el producto de todos los valores es
//	igual a (V[1]*V[2]*V[3]*V[4])


/// Subalgoritmos de ejercicios anteriores
SubProceso SolicitarValoresVector(vector, cantidad)
	Definir i Como Entero
	Para i<-0 Hasta cantidad-1 Hacer		
		Escribir "Ingrese un valor (", i+1, "/", cantidad, "):"
		Leer vector[i]
	FinPara
FinSubProceso


/// Subalgoritmos nuevos
Funcion producto <- ProductoDelArreglo(vector, tamanio)
	Definir i Como Entero
	Definir producto Como Real
	producto = 1
	
	Para i=0 Hasta tamanio-1 Hacer
		producto = producto * vector[i]
	FinPara
	
FinFuncion


/// Algoritmo principal
Algoritmo extra_7
	Definir tamanio Como Entero
	Definir vector Como Real
	
	Escribir "Ingrese el tamaño del vector: "
	Leer tamanio
	Dimension vector[tamanio]
	
	SolicitarValoresVector(vector, tamanio)
	
	Escribir "El producto del arreglo es ", ProductoDelArreglo(vector, tamanio)
	
	
FinAlgoritmo
