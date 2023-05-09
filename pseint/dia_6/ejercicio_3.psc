Algoritmo ejercicio_3
	// Definición
	Definir tornillosDefectuosos, tornillosSinDefectos, gradoEficiencia Como Entero
	Definir condicion_1, condicion_2 Como Logico
	
	// Entrada de datos
	Escribir "Ingrese la cantidad de tornillos defectuosos: "
	Leer tornillosDefectuosos
	
	Escribir "Ingrese la cantidad de tornillos SIN defectos: "
	Leer tornillosSinDefectos
	
	// Procesamiento
	condicion_1 = tornillosDefectuosos < 200
	condicion_2 = tornillosSinDefectos > 10000
	
	Si condicion_1 Entonces
		Si condicion_2 Entonces
			gradoEficiencia = 8
		SiNo
			gradoEficiencia = 6
		FinSi
		
	//No se cumple condicion_1
	SiNo 
		Si condicion_2 Entonces 
			gradoEficiencia = 7
		SiNo
			gradoEficiencia = 5
		FinSi
	FinSi
	
	Escribir "El grado de eficiencia es ", gradoEficiencia
	
FinAlgoritmo
