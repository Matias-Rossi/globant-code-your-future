//	Crear dos vectores que tengan el mismo tamaño (el tamaño se pedirá por teclado) y
//	almacenar en uno de ellos nombres de personas como cadenas. En el segundo vector se
//	debe almacenar la longitud de cada uno de los nombres (para ello puedes usar la función
//	Longitud() de PseInt). Mostrar por pantalla cada uno de los nombres junto con su longitud.

/// Algoritmos específicos al ejercicio
SubProceso PedirNombres(vecNombres, vecLongitudNombres, cantidad) 
	Definir i Como Entero
	Definir nombre Como Caracter
	Para i=0 Hasta cantidad-1 Hacer
		Escribir "Introduzca un nombre (", i+1, "/", cantidad, "):"
		Leer vecNombres[i]
		vecLongitudNombres[i] = Longitud(vecNombres[i])
	FinPara
FinSubProceso

SubProceso ImprimirNombres(vecNombres, vecLongitudNombres, cantidad) 
	Definir i Como Entero
	Definir nombre Como Caracter
	Para i=0 Hasta cantidad-1 Hacer
		Escribir vecLongitudNombres[i], ": ", vecNombres[i]
	FinPara
FinSubProceso



/// Algoritmo principal
Algoritmo extra_3
	Definir nombres Como Cadena
	Definir tamanio, longitudNombres Como Entero
	
	Escribir "Ingrese un tamaño para los vectores: "
	Leer tamanio
	Dimension nombres[tamanio], longitudNombres[tamanio]
	
	PedirNombres(nombres, longitudNombres, tamanio)
	
	Escribir "Imprimiendo nombres: "
	ImprimirNombres(nombres, longitudNombres, tamanio)
	
FinAlgoritmo
