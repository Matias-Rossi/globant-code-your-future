// 1. Crea un programa que pida una frase al usuario y diga cuantas palabras contiene. 
// (Ayudita! los espacios podrían funcionar como advertencia para los cortes de palabras) · 

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
Funcion cantPalabras <- ContarPalabras(frase, longitudFrase)
	Definir cantPalabras, i Como Entero
	cantPalabras = 1
	
	Para i=0 Hasta longitudFrase - 1 Hacer
		Si frase[i] == " " Entonces
			cantPalabras = cantPalabras + 1
		FinSi
	FinPara
	
FinFuncion


/// Algoritmo principal
Algoritmo extra_extra_1
	Definir fraseCadena, fraseVector Como Cadena
	Definir longCadena Como Entero
	
	// Ingreso de datos
	Escribir "Ingrese una frase: "
	Leer fraseCadena
	
	// Conversión
	longCadena = Longitud(fraseCadena) - 1 //Para compensar inicio en valor 0
	Dimension fraseVector[longCadena]
	
	CadenaAVector(fraseCadena, fraseVector, longCadena)
	
	// Conteo y salida
	Escribir "La frase tiene ", ContarPalabras(fraseVector, longCadena), " palabras."
	
	
	
FinAlgoritmo
