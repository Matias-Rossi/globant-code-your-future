//	Realizar un programa que rellene un vector de tama�o N, con valores ingresados por el
//	usuario. A continuaci�n, se debe buscar un elemento dentro del arreglo (el n�mero a buscar
//	tambi�n debe ser ingresado por el usuario). El programa debe indicar la posici�n donde se
//	encuentra el valor. En caso que el n�mero se encuentre repetido dentro del arreglo se deben
//	imprimir todas las posiciones donde se encuentra ese valor.
//	Finalmente, en caso que el n�mero a buscar no est� adentro del arreglo se debe mostrar un
//  mensaje.

SubProceso SolicitarValoresVector(vector, cantidad)
	Definir i Como Entero
	Para i<-0 Hasta cantidad-1 Hacer		
		Escribir "Ingrese un valor (pos: ", i, "/", cantidad-1, "):"
		Leer vector[i]
	FinPara
FinSubProceso

Funcion indiceBuscado <- BuscarValor(vector, tamanio, numBuscado)
	Definir indiceBuscado, i Como Entero
	Definir valorEncontrado Como Logico
	indiceBuscado = -1
	i = 0
	valorEncontrado = Falso
	
	Hacer
		Si vector[i] == numBuscado Entonces
			indiceBuscado = i
			valorEncontrado = Verdadero
		FinSi
		i = i + 1
	Mientras Que No(valorEncontrado) Y i < tamanio
	
FinFuncion


/// Algoritmo principal
Algoritmo ejercicio_3
	Definir tamanio, vector, numBuscado, indiceBuscado Como Entero
	
	// Ingreso de datos
	Escribir "Ingrese un tama�o para el vector: "
	Leer tamanio
	
	Dimension vector[tamanio]
	SolicitarValoresVector(vector, tamanio)
	
	Escribir "Ingrese el n�mero a buscar: "
	Leer numBuscado
	
	// B�squeda
	indiceBuscado = BuscarValor(vector, tamanio, numBuscado)
	
	// Salida
	Si indiceBuscado <> -1 Entonces
		Escribir "El valor ", numBuscado, " fue encontrado en el �ndice ", indiceBuscado
	SiNo
		Escribir "El valor ", numBuscado, " no pudo ser encontrado"
	FinSi
	
FinAlgoritmo
