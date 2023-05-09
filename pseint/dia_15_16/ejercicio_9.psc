//	Diseñar un procedimiento que reciba una frase, y el programa remueva todas las vocales
//	repetidas. Al final el procedimiento mostrará la frase final.
//		Por ejemplo:
//		Entrada: "HabiA unA vez Un bArco"
//		Salida: "Habi un vez n brco"
//	Se marcan en mayúscula las repetidas sólo para explicar la consigna. Las vocales ?e?, ?i? y ?o? quedan
//	al no estar repetidas.

Funcion letra <- ObtenerLetraEnPosicion(frase, pos)
	Definir letra Como Caracter
	letra = SubCadena(frase, pos, pos)
	
FinFuncion


Funcion fraseSinRepetidas <- BorrarVocalesRepetidas(frase)
	Definir fraseSinRepetidas, letraVieja Como Caracter
	Definir i Como Entero
	Definir aEncontrada, eEncontrada, iEncontrada, oEncontrada, uEncontrada, corresponde_agregar Como Logico
	aEncontrada = Falso
	eEncontrada = Falso
	iEncontrada = Falso
	oEncontrada = Falso
	uEncontrada = Falso
	fraseSinRepetidas = ""
	
	Para i=0 Hasta Longitud(frase) Hacer
		letraVieja = ObtenerLetraEnPosicion(frase, i)
		
		Segun letraVieja Hacer
			"a", "A": corresponde_agregar = No(aEncontrada)
				aEncontrada = Verdadero
			"e", "E": corresponde_agregar = No(eEncontrada)
				eEncontrada = Verdadero
			"i", "I": corresponde_agregar = No(iEncontrada)
				iEncontrada = Verdadero
			"o", "O": corresponde_agregar = No(oEncontrada)
				oEncontrada = Verdadero
			"u", "U": corresponde_agregar = No(uEncontrada)
				uEncontrada = Verdadero
			De Otro Modo: corresponde_agregar = verdadero
		FinSegun
		
		Si corresponde_agregar Entonces
			fraseSinRepetidas = Concatenar(fraseSinRepetidas, letraVieja)
		FinSi
		
	FinPara
FinFuncion



/// Algoritmo principal
Algoritmo ejercicio_9
	Definir frase Como Caracter
	Escribir "Introduzca una frase: "
	Leer frase
	
	frase = BorrarVocalesRepetidas(frase)
	
	Escribir frase
	
FinAlgoritmo
