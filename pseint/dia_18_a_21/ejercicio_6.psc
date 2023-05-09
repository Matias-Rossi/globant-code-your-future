//	Disponemos de un vector unidimensional de 20 elementos de tipo carácter. Se pide
//	desarrollar un programa que:
//		a) Pida una frase al usuario y luego ingrese la frase dentro del arreglo letra por letra.
//		Ayuda: utilizar la función Subcadena de PSeInt.
//
//		b) Una vez completado lo anterior, pedirle al usuario un carácter cualquiera y una
//		posición dentro del arreglo, y el programa debe intentar ingresar el carácter en la
//		posición indicada, si es que hay lugar (es decir la posición está vacía o es un espacio
//		en blanco). De ser posible debe mostrar el vector con la frase y el carácter ingresado,
//		de lo contrario debe darle un mensaje al usuario de que esa posición estaba ocupada.

/// Subalgoritmos ya usados
Funcion letra <- ObtenerLetraEnPosicion(frase, pos)
	Definir letra Como Caracter
	letra = SubCadena(frase, pos, pos)
FinFuncion

SubProceso ImprimirVector(vector, cantidad)
	Definir i Como Entero
	Para i<-0 Hasta cantidad-1 Hacer
		Escribir Sin Saltar vector[i]
	FinPara
	Escribir ""
FinSubProceso


/// Subalgoritmos nuevos
SubProceso CadenaAVector(cadenaIngresada, vector, tamanio)
	Definir i Como Entero
	Para i<-0 Hasta tamanio-1 Hacer		
		vector[i] = ObtenerLetraEnPosicion(cadenaIngresada, i)
	FinPara
FinSubProceso

SubProceso ReemplazarEnPosicion(vector, pos, reemplazo)
	vector[pos] = reemplazo
FinSubProceso


/// Algoritmo principal
Algoritmo ejercicio_6
	Definir posReemplazo Como Entero
	Definir vector, cadenaIngresada, caracterReemplazo Como Caracter
	Dimension vector[20]
	
	// Ingreso de la frase
	Escribir "Ingrese una frase de no más de 20 caracteres: "
	Leer cadenaIngresada
	
	// Transformación
	CadenaAVector(cadenaIngresada, vector, 20)
	ImprimirVector(vector, 20)
	
	// Ingreso de posición y caracter para el reemplazo
	Escribir "Ingrese una posición y caracter para reemplazar en el vector, separados por un <ENTER>: "
	Leer posReemplazo, caracterReemplazo
	
	// Evaluación de la posibilidad de realizar el reemplazo
	Si (posReemplazo > 20) O (vector[posReemplazo] <> "") O (vector[posReemplazo] <> " ") Entonces
		Escribir "No es posible realizar el reemplazo"
	SiNo
		// Ejecución del reemplazo
		ReemplazarEnPosicion(vector, posReemplazo, caracterReemplazo)
		ImprimirVector(vector, 20)
	FinSi
	
FinAlgoritmo
