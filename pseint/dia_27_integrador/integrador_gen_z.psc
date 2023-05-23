//	El apocalipsis Zombie se ha desatado, pero aún hay esperanza. El Dr. Galard ha conseguido aislar el gen Z
//	analizando muestras genéticas codificadas. Una muestra se corresponde con una secuencia de caracteres
//	compuesta de cuatro posibles bases (A,B,C,D), por ejemplo: "ACDDCADBCDABDBBA". Para poder detectar el gen
//	Z, se representa la muestra como una matriz cuadrada (MxM) y se busca en las dos diagonales principales que
//	todas las bases sean iguales. Siguiendo el ejemplo de la muestra anterior la matriz resultante es
//
//	A C D D
//  C A D B
//  C D A B
//  D B B A
//
//	Galard aclara que para que la muestra sea válida el orden de la matriz (el valor de M) debe ser 3x3, 4x4 o 37x37
//	(según la muestra). Por desgracia, de antemano no es posible saber el orden de la matriz y el mismo debe ser
//	inferido de la muestra ingresada.
//
//	Tu misión: hacer un programa que permita ingresar una muestra completa, detectar si es válida, y de ser así, que
//	imprima la matriz y muestre un mensaje que indique si se ha detectado o no el gen Z.
//
//	Hoy la humanidad depende de ti.
//
// Reglas de la resolución:
// 	a) Es obligatorio el uso de al menos una variable N-dimensional.
//	b) La muestra la guardamos en una variable en el código, no por consola
//	c) Subdivida el problema de tal forma de utilizar al menos dos subprogramas.

/// Subalgoritmos ya usados
Funcion letra <- ObtenerLetraEnPosicion(frase, pos)
	Definir letra Como Caracter
	letra = SubCadena(frase, pos, pos)
FinFuncion

SubProceso mostrarMatriz(matriz, filas, columnas)
	Definir i, j Como Entero
	Para i=0 Hasta filas-1
		Para j=0 Hasta columnas-1
			Escribir Sin Saltar matriz[i, j], "  "
		FinPara
		Escribir ""
	FinPara
FinSubProceso

SubProceso cadenaAMatriz(frase, matriz, filas, columnas)
	Definir i, j, posicionLetra Como Entero
	posicionLetra = 0
	
	Para i=0 Hasta filas-1
		Para j=0 Hasta columnas-1
			matriz[i, j] = ObtenerLetraEnPosicion(frase, posicionLetra)
			posicionLetra = posicionLetra + 1
		FinPara
	FinPara
FinSubProceso


/// Subalgoritmos nuevos
Funcion dim <- calcularDimension(muestra)
	Definir dim Como Entero
	dim = Raiz(Longitud(muestra))
FinFuncion


Funcion validado <- VerificarIgualdadBaseDiagonalPrincipal(matriz, dim)
	Definir base Como Cadena
	Definir validado Como Logico
	Definir i Como Entero
	validado = Verdadero
	base = matriz[0,0]
	
	Para i=1 Hasta dim-1 Hacer
		Escribir "Principal: comparando ", base, " con ", matriz[i,i]
		Si matriz[i,i] <> base
			validado = Falso
		FinSi
	FinPara
FinFuncion

// Devuelve 0 si no son iguales
Funcion validado <- VerificarIgualdadBaseDiagonalSecundaria(matriz, dim)
	Definir base Como Cadena
	Definir i, j Como Entero
	Definir validado Como Logico
	j = dim - 2
	base = matriz[0,dim-1]
	validado = Verdadero
	
	Para i=1 Hasta dim-1 Hacer
		Escribir "Secundaria: comparando ", base, " con ", matriz[i,j]
		Si matriz[i,j] <> base
			validado = Falso
		FinSi
		j = j - 1
	FinPara
FinFuncion


/// Algoritmo principal
Algoritmo integrador_gen_z
	Definir muestra Como Cadena
	Definir dimensionMatriz Como Entero
	Definir matriz Como Cadena
	Definir dimensionEsValida, genZencontrado, diagonalPrincipalValida, diagonalSecundariaValida Como Logico
	
	// Validar dimensión
	muestra = "ACCDBBADDDCCBACABDCBDCBADBDACBBBBDAABBCCBAACCABDBDCDDABDBDADAAACBBBBCDDDCBBBDDCDABBDDABDBDBBACADCDAAADACDDDACCDCACDDABACDCCCAABDDCCACDADDBCBAACCDBCBCDDDCAACCBAADCBBBCDCBBACBDCCDDADBABCAABBACABDCAACCBDADDCAAACCDBDBBCDDDDDACBCDDADDDDCBADADBDCADDABBCDAACBCCDDDADDADADAACCACDCDDABCCCADABBACDACCAADDBCBCCDADBCCADAAABDDDAABBABCADDCCAADDCDDCDCACBADADACADDAADCBDBCDBDDACDCBCDCCABBDCBACDDACCCDADBCADCACAAABBBCADDDDBCBACDBDAAADDDACCDACBBBADACCCDCACCBACDADBCBBDADACABAACBCCADDCCCCACCCCADBCCDAADCAABBABAADDBDADDABABCCABBCDDACCADAAADBBCCDBADCADCBBDADACCDDBCAAABBBDCAAAACBAADBABBABACDDBBCBDCDCADABABBDADCBADAACDBCBDABADBCBADCACADAABCDDCABACDDBDCBCBDCAAACBDABBCACBACCCBACACDCADBDCDCDDCAACDBDCBACDBBDAABDBBCBAAADBABDBAACAAACDCDAAABABDDDBCACADCBBAADCCDABCCCBBCACCBAABDAADDDCDACDDDBCDCCBABDABACCDCDCDABAABCABBADADCBDDACDDCDDCDACDADADCACBCDABABDDCCDBCCDABACDBDAABDBDDDBADDBACABDCDDBACDDBBDDBBACBCCAACABBDADDBCAACCBCCDADDBCAADDADCCCBAAABABBBBBCABAACADBCBBABACCABCDAABADCCCCDCCADDDCCABBDDDAAADDADACBBBCBDAADACABABBAACCCADADDABDBCADDDCCDBBCCBCDCDBDDDDCACDACDBBBDDBADDACADDADDABCACDCBBADDABBBDCBBDCDAABADDDDDBCACCCCAAACBCBCDBACCCDACCCDBCBDCBADBCDDACCDBDBDBCAAACDDCBAABDBCAADCADDBABABDCBCBCBBBCACBCADDCAAAAAACBBACBBCCACBDCDDDDADCAAACBABDDBDADBAADCBABDDBCDBABDBAADDDBACBBBCCCDBDDBDDAADBBADADDDCBCACBABCDBBABAADABCABCDBACBBBCDBADADDBDCBDABBDDDCDDCCACDCBDCADABAABCDCAACCDDBADBDBCDACAAACBCADCCCBAC"
	dimensionMatriz = calcularDimension(muestra)
	dimensionEsValida = (dimensionMatriz == 3) O (dimensionMatriz == 4) O (dimensionMatriz == 37)
	
	Si dimensionEsValida Entonces
		
		Escribir "# La muestra es válida #"
		
		// Conversión a matriz
		Dimension matriz[dimensionMatriz, dimensionMatriz]
		cadenaAMatriz(muestra, matriz, dimensionMatriz, dimensionMatriz)
		mostrarMatriz(matriz, dimensionMatriz, dimensionMatriz)
		
		// Validación base
		diagonalPrincipalValida = VerificarIgualdadBaseDiagonalPrincipal(matriz, dimensionMatriz)
		diagonalSecundariaValida = VerificarIgualdadBaseDiagonalSecundaria(matriz, dimensionMatriz)
		
		genZencontrado = diagonalPrincipalValida Y diagonalSecundariaValida
		
		Si genZencontrado Entonces
			Escribir "El gen Z fue detectado"
		SiNo
			Escribir "El gen Z >NO< fue detectado"
		FinSi
		
	SiNo
		Escribir "La muestra no es válida"
		
	FinSi
	
FinAlgoritmo
