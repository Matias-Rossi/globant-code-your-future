//	Realizar un programa con el siguiente menú y le pregunte al usuario que quiere hacer hasta
//	que ingrese la opción Salir:
//		A. Llenar Vector A. Este vector es de tamaño N y se debe llenar de manera aleatoria
//			usando la función Aleatorio(valorMin, valorMax) de PseInt.
//		B. Llenar Vector B. Este vector también es de tamaño N y se llena de manera aleatoria.
//		C. Llenar Vector C con la suma de los vectores A y B. La suma se debe realizar elemento
//			a elemento. Ejemplo: C = A + B
//		D. Llenar Vector C con la resta de los vectores B y A. La resta se debe realizar elemento a
//			elemento. Ejemplo: C = B - A
//		E. Mostrar. Esta opción debe permitir al usuario decidir qué vector quiere mostrar: Vector
//			A, B, o C.
//		F. Salir.
//	NOTA: El rango de los números aleatorios para los Vectores será de [-100 a 100]. La longitud
//	para todos los vectores debe ser la misma, por lo tanto, esa información sólo se solicitará una vez.

/// Funciones de uso general
SubProceso ImprimirVector(vector, cantidad)
	Definir i Como Entero
	Para i<-0 Hasta cantidad-1 Hacer
		Escribir Sin Saltar "[", vector[i],"]"
	FinPara
	Escribir ""
FinSubProceso


SubProceso SumarValorAValor(vecA, vecB, vecResultado, tamanio)
	Definir i Como Entero
	Para i=0 Hasta tamanio-1 Hacer
		vecResultado[i] = vecA[i] + vecB[i]
	FinPara
FinSubProceso


SubProceso RestarValorAValor(vecA, vecB, vecResultado, tamanio)
	Definir i Como Entero
	Para i=0 Hasta tamanio-1 Hacer
		vecResultado[i] = vecA[i] - vecB[i]
	FinPara
FinSubProceso


/// Funciones particulares al problema
Funcion respuesta <- ImprimirOpcionesMenu()
	Definir respuesta Como Caracter
	Escribir "¿Qué desea hacer?"
	Escribir "	A. Llenar vector A de manera aleatoria"
	Escribir "	B. Llenar vector B de manera aleatoria"
	Escribir "	C. Llenar vector C / C = A + B"
	Escribir "	D. Llenar vector C / C = B - A"
	Escribir "	E. Mostrar un vector"
	Escribir "	F. Salir"
	Leer respuesta
	respuesta = Mayusculas(respuesta)
FinFuncion


SubProceso LlenarAleatoriamente(vector, tamanio)
	Definir i Como Entero
	Para i=0 Hasta tamanio-1 Hacer
		vector[i] = Aleatorio(-100, 100)
	FinPara
FinSubProceso


Funcion vectorAMostrar <- SolicitarQueVectorMostrar()
	Definir vectorAMostrar Como Caracter
	Definir respuestaValida Como Logico
	Hacer
		Escribir "¿Que vector desea mostrar? (A/B/C)"
		Leer vectorAMostrar
		vectorAMostrar = Minusculas(vectorAMostrar)
		respuestaValida = (vectorAMostrar == "a") O (vectorAMostrar == "b") O (vectorAMostrar == "c")
	Mientras Que No(respuestaValida)
FinFuncion


/// Algoritmo principal
Algoritmo ejercicio_4
	Definir continuar Como Logico
	Definir opcionUsuario Como Caracter
	Definir vectorA, vectorB, vectorC, tamanio Como Entero
	continuar = Verdadero	
	
	Escribir "Ingrese un tamaño N: "
	Leer tamanio
	
	Dimension vectorA[tamanio], vectorB[tamanio], vectorC[tamanio]
	
	Mientras continuar == Verdadero
		opcionUsuario = ImprimirOpcionesMenu()
		Segun opcionUsuario Hacer
			"A": LlenarAleatoriamente(vectorA, tamanio)
			"B": LlenarAleatoriamente(vectorB, tamanio)
			"C": SumarValorAValor(vectorA, vectorB, vectorC, tamanio)
			"D": RestarValorAValor(vectorB, vectorA, vectorC, tamanio)
			"E": opcionUsuario = SolicitarQueVectorMostrar()
				Segun opcionUsuario Hacer
					"a": ImprimirVector(vectorA, tamanio)
					"b": ImprimirVector(vectorB, tamanio)
					"c": ImprimirVector(vectorC, tamanio)
				FinSegun
			"F": continuar = Falso
				Escribir "¡Hasta luego!"
		FinSegun
		
		Escribir "-------------------------------------"
	FinMientras
	
FinAlgoritmo
