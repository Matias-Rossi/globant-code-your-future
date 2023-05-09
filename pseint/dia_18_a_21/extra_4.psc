//	Crear un vector que contenga 100 notas de 100 supuestos estudiantes, con valores entre 0 y
//	20 generadas aleatoriamente mediante el uso de la función azar() o aleatorio() de PseInt.
//	Luego, de acuerdo a las notas contenidas, el programa debe indicar cuántos estudiantes son:
//		a) Deficientes 0-5
//		b) Regulares 6-10
//		c) Buenos 11-15
//		d) Excelentes 16-20

/// Subalgoritmos de ejercicios anteriores
SubProceso LlenarAleatoriamente(vector, tamanio)
	Definir i Como Entero
	Para i=0 Hasta tamanio-1 Hacer
		vector[i] = Aleatorio(0, 20)
	FinPara
FinSubProceso

SubProceso ImprimirVector(vector, cantidad)
	Definir i Como Entero
	Para i<-0 Hasta cantidad-1 Hacer
		Escribir Sin Saltar "[", vector[i],"]"
	FinPara
	Escribir ""
FinSubProceso

/// Subalgoritmos nuevos
SubProceso ClasificarEstudiantes(notas, cantEstudiantes)
	Definir i, cantDeficientes, cantRegulares, cantBuenos, cantExcelentes Como Entero
	cantDeficientes = 0
	cantRegulares = 0
	cantBuenos = 0
	cantExcelentes = 0
	
	Para i=0 Hasta cantEstudiantes-1
		Si notas[i] <= 5 Entonces
			cantDeficientes = cantDeficientes + 1
		SiNo
			Si notas[i] <= 10 Entonces
				cantRegulares = cantRegulares + 1
			SiNo
				Si notas[i] <= 15 Entonces
					cantBuenos = cantBuenos + 1
				SiNo
					cantExcelentes = cantExcelentes + 1
				FinSi
			FinSi
		FinSi
	FinPara
	
	Escribir "## Resultados ##"
	Escribir "Cantidad deficientes: ", cantDeficientes
	Escribir "Cantidad regulares: ", cantRegulares
	Escribir "Cantidad buenos: ", cantBuenos
	Escribir "Cantidad excelentes: ", cantExcelentes
	
FinSubProceso

/// Algoritmo principal
Algoritmo extra_4
	Definir notas Como Entero
	Dimension notas[100]
	
	LlenarAleatoriamente(notas, 100)
	
	ClasificarEstudiantes(notas, 100)
	
	
FinAlgoritmo
