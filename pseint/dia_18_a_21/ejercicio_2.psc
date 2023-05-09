// Realizar un programa que lea 10 números reales por teclado, los almacene en un arreglo y
// muestre por pantalla la suma, resta y multiplicación de todos los números ingresados al
// arreglo.

SubProceso SolicitarValoresVector(vector, cantidad)
	Definir i Como Entero
	Para i<-0 Hasta cantidad-1 Hacer		
		Escribir "Ingrese un valor (", i+1, "/", cantidad, "):"
		Leer vector[i]
	FinPara
FinSubProceso


Funcion suma <- SumarValoresVector(vector, cantidad)
	Definir i Como Entero
	Definir suma como Real
	suma = 0
	
	Para i<-0 Hasta cantidad-1 Hacer		
		suma = suma + vector[i]
	FinPara
FinFuncion


Funcion resta <- RestarValoresVector(vector, cantidad)
	Definir i Como Entero
	Definir resta como Real
	resta = vector[0]
	
	Para i<-1 Hasta cantidad-1 Hacer		
		resta = resta - vector[i]
	FinPara
FinFuncion


Funcion producto <- MultiplicarValoresVector(vector, cantidad)
	Definir i Como Entero
	Definir producto como Real
	producto = 1
	
	Para i<-0 Hasta cantidad-1 Hacer		
		producto = producto * vector[i]
	FinPara
FinFuncion



/// Algoritmo principal
Algoritmo ejercicio_2
	Definir vector Como Real
	Dimension vector[10]
	
	SolicitarValoresVector(vector, 10)
	
	Escribir "Suma de todos los valores = ", SumarValoresVector(vector, 10)
	Escribir "Resta de todos los valores = ", RestarValoresVector(vector, 10)
	Escribir "Producto de todos los valores = ", MultiplicarValoresVector(vector, 10)
FinAlgoritmo
