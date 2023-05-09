// 7. Crea un programa que pida el nombre al usuario y 
// lo escriba al revés (de la última letra a la primera).

Funcion carac <- ObtenerCaracterEnPos( frase, pos )
	Definir carac Como Cadena
	carac = Subcadena(frase, pos, pos)
FinFuncion


Funcion invertido = InvertirTexto( original )
	Definir invertido Como Caracter
	Definir i Como Entero
	invertido = ""
	
	Para i=Longitud(original) hasta 0 Hacer
		invertido = Concatenar(invertido, ObtenerCaracterEnPos(original, i))
	FinPara
	
FinFuncion


/// Algoritmo principal
Algoritmo extra_7
	// Definiciones
	Definir nombre, nombreInvertido Como Caracter
	
	// Ingreso
	Escribir "Ingrese un nombre: "
	Leer nombre
	
	// Procesamiento
	nombreInvertido = InvertirTexto( nombre )
	
	// Salida
	Escribir nombreInvertido
	
FinAlgoritmo
