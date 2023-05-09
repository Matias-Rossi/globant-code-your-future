// 8. Crea un programa que pida el nombre al usuario y lo escriba alternando mayúsculas y minúsculas

Funcion rtdo <- EsPar( num )
	Definir rtdo Como Logico
	rtdo = num % 2 == 0
FinFuncion


Funcion carac <- CaracterEnPos( frase, pos )
	Definir carac Como Cadena
	carac = Subcadena(frase, pos, pos)
FinFuncion


/// Función relevante
Funcion alternado <- AlternarMayusculas( frase )
	Definir alternado, letraNueva Como Caracter
	Definir i Como Entero
	alternado = ""
	
	Para i=0 Hasta Longitud(frase) Hacer
		letraNueva = CaracterEnPos(frase, i)
		
		Si EsPar(i) Entonces
			letraNueva = Mayusculas(letraNueva)
		SiNo
			letraNueva = Minusculas(letraNueva)
		FinSi
		
		alternado = Concatenar(alternado, letraNueva)
		
	FinPara
	
FinFuncion


/// Algoritmo principal
Algoritmo extra_8
	// Definiciones
	Definir nombre, nombreAlternado Como Caracter
	
	// Ingreso
	Escribir "Ingrese un nombre: "
	Leer nombre
	
	// Procesamiento
	nombreAlternado = AlternarMayusculas( nombre )
	
	// Salida
	Escribir nombreAlternado
	
FinAlgoritmo
