//	Crear un subproceso que rellene dos arreglos de tamaño n, con números aleatorios. Después,
//	hacer una función que reciba los dos arreglos y diga si todos sus valores son iguales o no. La
//	función debe devolver el resultado de está validación, para mostrar el mensaje en el
//	algoritmo. Nota: recordar el uso de las variables de tipo lógico.

/// Algoritmos ya usados
SubProceso LlenarAleatoriamente(vector, tamanio)
	Definir i Como Entero
	Para i=0 Hasta tamanio-1 Hacer
		vector[i] = Aleatorio(0, 1)
	FinPara
FinSubProceso

SubProceso ImprimirVector(vector, cantidad)
	Definir i Como Entero
	Para i<-0 Hasta cantidad-1 Hacer
		Escribir Sin Saltar "[", vector[i],"]"
	FinPara
	Escribir ""
FinSubProceso


/// Algoritmos nuevos
Funcion sonIguales <- EvaluarIgualdadVectores( vectorA, vectorB, tamanio)
	Definir i Como Entero
	Definir sonIguales Como Logico
	sonIguales = Verdadero
	i=0
	
	Mientras (i < tamanio) Y sonIguales Hacer
		sonIguales = vectorA[i] == vectorB[i]
		i = i + 1
	FinMientras	
FinFuncion


/// Algoritmo principal
Algoritmo ejercicio_7
	Definir vectorA, vectorB, tamanio Como Entero
	
	Escribir "Ingrese un tamaño para los vectores: "
	Leer tamanio
	
	Dimension vectorA[tamanio]
	Dimension vectorB[tamanio]
	
	LlenarAleatoriamente(vectorA, tamanio)
	LlenarAleatoriamente(vectorB, tamanio)
	
	Si EvaluarIgualdadVectores(vectorA, vectorB, tamanio) Entonces
		Escribir "Los vectores son iguales"
	SiNo
		Escribir "Los vectores >NO< son iguales"
	FinSi
	
	Escribir "Vector A: "
	ImprimirVector(vectorA, tamanio)
	
	Escribir "Vector B: "
	ImprimirVector(vectorB, tamanio)
	
FinAlgoritmo
