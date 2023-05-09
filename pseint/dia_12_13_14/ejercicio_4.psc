//	Realizar un programa que pida al usuario una frase y una letra a buscar en esa frase. La
//	función debe devolver la cantidad de veces que encontró la letra. Nota: recordar el uso de la
//	función Subcadena().

Funcion vecesEncontrada <- BuscarLetra ( frase, letraBuscada )
	// Definiciones
	Definir i, vecesEncontrada Como Entero
	Definir letraAComparar Como Caracter
	vecesEncontrada = 0
	
	// Iteración por las letras de la frase
	Para i=0 Hasta Longitud(frase)
		letraAComparar = Minusculas(Subcadena(frase, i, i))
		
		Si letraBuscada == letraAComparar Entonces
			vecesEncontrada = vecesEncontrada + 1
		FinSi
	FinPara
	
FinFuncion


/// Proceso principal
Algoritmo ejercicio_4
	// Definiciones
	Definir frase, letraABuscar Como Caracter
	Definir vecesEncontrada Como Entero
	
	// Ingreso de datos
	Escribir "Ingrese una frase:"
	Leer frase
	
	Escribir "Ingrese la letra a buscar en la frase: "
	Leer letraABuscar
	
	vecesEncontrada = BuscarLetra ( frase, Minusculas(letraABuscar) )
	
	Escribir "La letra aparece ", vecesEncontrada, " vez/veces en la frase introducida."
	
	
FinAlgoritmo
