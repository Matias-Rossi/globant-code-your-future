// 2. Crea un programa que pida al usuario su nombre y apellido y los muestre escritos de la 
// forma correcta (Primera letra en mayúsculas, y el resto en minúscula. Siempre debemos pensar que el 
// usuario puede ingresar los datos de una forma distinta a la que yo deseaba que lo hiciera) · 

/// Subalgoritmos de ejercicios anteriores
Funcion letra <- ObtenerLetraEnPosicion(frase, pos)
	Definir letra Como Caracter
	letra = SubCadena(frase, pos, pos)
FinFuncion

SubProceso CadenaAVector(cadenaIngresada, vector, tamanio)
	Definir i Como Entero
	Para i<-0 Hasta tamanio-1 Hacer		
		vector[i] = ObtenerLetraEnPosicion(cadenaIngresada, i)
	FinPara
FinSubProceso


/// Subalgoritmos nuevos
Funcion fraseCadena <- VectorACadena(fraseVector, longitudVector)
	Definir i Como Entero
	Definir fraseCadena Como Cadena
	fraseCadena = ""
	
	Para i=0 Hasta longitudVector-1
		fraseCadena = Concatenar(fraseCadena, fraseVector[i])
	FinPara
	
FinFuncion


SubProceso CapitalizarPalabrasVector(frase, longitudFrase)
	Definir i Como Entero
	Definir letraDebeSerMayuscula Como Logico
	letraDebeSerMayuscula = Verdadero
	
	Para i=0 Hasta longitudFrase-1 Hacer
		
		// Conversión (de requerirse)
		Si letraDebeSerMayuscula Entonces
			frase[i] = Mayusculas(frase[i])
		SiNo
			frase[i] = Minusculas(frase[i])
		FinSi
		
		// Análisis para la siguiente letra
		letraDebeSerMayuscula = frase[i] == " "
	FinPara
	
FinSubProceso


SubProceso AjustarMayusculasNombre(nombre Por Referencia)
	Definir nombreVector Como Caracter
	Definir longitudNombre Como Entero
	
	// Conversión a vector
	longitudNombre = longitud(nombre)
	Dimension nombreVector[longitudNombre]
	CadenaAVector(nombre, nombreVector, longitudNombre)
	
	// Pase a mayúsculas
	CapitalizarPalabrasVector(nombreVector, longitudNombre)
	
	// Reconversión
	nombre = VectorACadena(nombreVector, longitudNombre)
	
FinSubProceso


/// Algoritmo principal
Algoritmo extra_extra_2
	Definir nombreCompleto Como Cadena
	
	Escribir "Ingrese su nombre completo: "
	Leer nombreCompleto
	
	AjustarMayusculasNombre(nombreCompleto)
	
	Escribir "Hola, ", nombreCompleto
	
FinAlgoritmo
